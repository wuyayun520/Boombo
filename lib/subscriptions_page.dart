import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  // Selected subscription plan
  String selectedPlan = IAPProducts.monthlySubscription;
  
  // In-app purchase related variables
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  String? _purchaseError;
  bool _isSubscribed = false;
  String? _subscriptionType;
  DateTime? _expiryDate;
  
  // 消息通知控制
  DateTime? _lastSubscriptionNotification;
  final int _notificationCooldownSeconds = 5;
  
  @override
  void initState() {
    super.initState();
    
    // Initialize IAP
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(
      _listenToPurchaseUpdated,
      onDone: () {
        _subscription.cancel();
      },
      onError: (error) {
        print("Error in Subscription Stream: $error");
      }
    );
    
    _loadSubscriptionStatus();
    _initInAppPurchase();
  }
  
  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
  
  // Initialize in-app purchase
  Future<void> _initInAppPurchase() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isLoading = false;
        _purchaseError = "Store is not available.";
      });
      return;
    }
    
    // Define subscription product IDs
    final Set<String> productIds = {
      IAPProducts.monthlySubscription,
      IAPProducts.quarterlySubscription,
      IAPProducts.yearlySubscription,
    };
    
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      if (response.notFoundIDs.isNotEmpty) {
        print("Some subscription products were not found: ${response.notFoundIDs}");
      }
      
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
      });
      
      // For debugging
      for (var product in _products) {
        print("Subscription Product ID: ${product.id}, Price: ${product.price}");
      }
    } catch (e) {
      print("Error querying subscription products: $e");
      setState(() {
        _isLoading = false;
        _purchaseError = "Failed to load subscription products: $e";
      });
    }
  }
  
  // Listen to purchase updates
  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _purchasePending = true;
        });
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          setState(() {
            _purchasePending = false;
            _purchaseError = purchaseDetails.error?.message ?? "Unknown error occurred";
          });
          _handlePurchaseError(purchaseDetails.error?.message ?? "Unknown error");
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                  purchaseDetails.status == PurchaseStatus.restored) {
          _handleSuccessfulSubscription(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
          print("Subscription purchase cancelled");
        }
        
        // Complete the purchase
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }
  
  // Handle successful subscription
  Future<void> _handleSuccessfulSubscription(PurchaseDetails purchaseDetails) async {
    // Verify the purchase locally
    DateTime expiryDate = DateTime.now();
    String subscriptionType = '';
    
    // Calculate and save expiry date based on subscription type
    if (purchaseDetails.productID == IAPProducts.monthlySubscription) {
      expiryDate = expiryDate.add(const Duration(days: 30));
      subscriptionType = 'Monthly';
    } else if (purchaseDetails.productID == IAPProducts.quarterlySubscription) {
      expiryDate = expiryDate.add(const Duration(days: 90));
      subscriptionType = 'Quarterly';
    } else if (purchaseDetails.productID == IAPProducts.yearlySubscription) {
      expiryDate = expiryDate.add(const Duration(days: 365));
      subscriptionType = 'Annual';
    }
    
    // Save subscription status
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppPrefs.isSubscribedKey, true);
    await prefs.setString(AppPrefs.subscriptionTypeKey, purchaseDetails.productID);
    await prefs.setString(AppPrefs.subscriptionExpiryKey, expiryDate.toIso8601String());
    
    // Update state
    setState(() {
      _purchasePending = false;
      _isSubscribed = true;
      _subscriptionType = purchaseDetails.productID;
      _expiryDate = expiryDate;
    });
    
    print("Subscription successful: ${purchaseDetails.productID}");
    
    // Show success message
    if (mounted) {
      _showNotification("Subscription activated successfully!");
    }
  }
  
  // Handle purchase error
  void _handlePurchaseError(String errorMessage) {
    print("Subscription error: $errorMessage");
    if (mounted) {
      _showNotification("Subscription failed: $errorMessage");
    }
  }

  // Load subscription status
  Future<void> _loadSubscriptionStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isSubscribed = prefs.getBool(AppPrefs.isSubscribedKey) ?? false;
    final String? subscriptionType = prefs.getString(AppPrefs.subscriptionTypeKey);
    final String? expiryDateStr = prefs.getString(AppPrefs.subscriptionExpiryKey);
    
    // Check if subscription has expired
    bool subscriptionValid = isSubscribed;
    DateTime? expiryDate;
    
    if (expiryDateStr != null) {
      expiryDate = DateTime.parse(expiryDateStr);
      if (DateTime.now().isAfter(expiryDate)) {
        subscriptionValid = false;
        await prefs.setBool(AppPrefs.isSubscribedKey, false);
      }
    }
    
    setState(() {
      _isSubscribed = subscriptionValid;
      _subscriptionType = subscriptionValid ? subscriptionType : null;
      _expiryDate = subscriptionValid ? expiryDate : null;
    });
  }

  // Process subscription purchase
  Future<void> _processSubscription(String productId) async {
    // Find the product in the list of available products
    final ProductDetails? product = _products.firstWhereOrNull(
      (p) => p.id == productId,
    );
    
    if (product == null) {
      print("Subscription product not found: $productId");
      if (mounted) {
        _showNotification("Subscription plan not available");
      }
      return;
    }
    
    // Show processing dialog
    if (mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Processing Subscription',
            style: TextStyle(color: AppColors.purchaseTheme),
          ),
          content: Text(
            'Processing ${product.title} for ${product.price}...',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
      );
    }
    
    try {
      // Prepare purchase parameters
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: product,
        applicationUserName: null,
      );
      
      // Start the subscription
      await _inAppPurchase.buyNonConsumable(
        purchaseParam: purchaseParam,
      );
      
      // Close the dialog (the purchase result will be handled in the listener)
      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      // Close the dialog
      if (mounted) {
        Navigator.of(context).pop();
        _showNotification("Error starting subscription: $e");
      }
      print("Error starting subscription: $e");
    }
  }
  
  // 恢复之前的购买
  Future<void> _restorePurchases() async {
    // Show processing dialog
    if (mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Restoring Purchases',
            style: TextStyle(color: AppColors.purchaseTheme),
          ),
          content: const Text(
            'Please wait while we restore your previous purchases...',
            style: TextStyle(color: Colors.black87),
          ),
        ),
      );
    }
    
    try {
      // 尝试恢复购买
      await _inAppPurchase.restorePurchases();
      
      // 关闭对话框（恢复结果将在监听器中处理）
      if (mounted) {
        Navigator.of(context).pop();
        // 显示恢复尝试的消息
        _showNotification("Purchase restoration initiated");
      }
    } catch (e) {
      // 关闭对话框并显示错误
      if (mounted) {
        Navigator.of(context).pop();
        _showNotification("Error restoring purchases: $e");
      }
      print("Error restoring purchases: $e");
    }
  }
  
  // Launch URL for terms and privacy
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  // Build subscription plan card
  Widget _buildSubscriptionPlan({
    required String productId,
    required String title,
    required String duration,
    required double price,
    required String period,
    bool bestValue = false,
  }) {
    // Find the real product details if available
    final ProductDetails? realProduct = _products.firstWhereOrNull(
      (p) => p.id == productId,
    );
    
    // Use the real price if product is available
    final String displayPrice = realProduct != null 
        ? realProduct.price 
        : '\$${price.toStringAsFixed(2)}';
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlan = productId;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: selectedPlan == productId ? AppColors.purchaseTheme : Colors.transparent,
            width: selectedPlan == productId ? 2 : 0,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  // Radio button
                  Radio<String>(
                    value: productId,
                    groupValue: selectedPlan,
                    activeColor: AppColors.purchaseTheme,
                    onChanged: (value) {
                      setState(() {
                        selectedPlan = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 12),
                  
                  // Plan details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          duration,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        displayPrice,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.purchaseTheme,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        period,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Best value tag
            if (bestValue)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: const BoxDecoration(
                    color: AppColors.purchaseTheme,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'BEST VALUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // Build VIP feature item
  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppColors.purchaseTheme.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: AppColors.purchaseTheme,
              size: 16,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              feature,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Build VIP info section
  Widget _buildVipInfoSection() {
    if (!_isSubscribed || _expiryDate == null) {
      return const SizedBox.shrink();
    }
    
    // Format expiry date
    final now = DateTime.now();
    final difference = _expiryDate!.difference(now);
    final daysRemaining = difference.inDays;
    
    String planName = 'VIP Plan';
    if (_subscriptionType != null) {
      if (_subscriptionType == IAPProducts.monthlySubscription) {
        planName = 'Monthly VIP Plan';
      } else if (_subscriptionType == IAPProducts.quarterlySubscription) {
        planName = 'Quarterly VIP Plan';
      } else if (_subscriptionType == IAPProducts.yearlySubscription) {
        planName = 'Annual VIP Plan';
      }
    }
    
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: AppColors.purchaseTheme.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.purchaseTheme.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.verified,
                  color: AppColors.purchaseTheme,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Active Subscription',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purchaseTheme,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      planName,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.refresh, color: AppColors.purchaseTheme),
                onPressed: () async {
                  setState(() {
                    _isLoading = true;
                  });
                  await _loadSubscriptionStatus();
                  setState(() {
                    _isLoading = false;
                  });
                  
                  _showNotification("Subscription status updated");
                },
                tooltip: 'Refresh subscription status',
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expires on',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${_expiryDate!.day}/${_expiryDate!.month}/${_expiryDate!.year}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.purchaseTheme.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '$daysRemaining days remaining',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purchaseTheme,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 检查是否可以显示通知
  bool _canShowNotification() {
    if (_lastSubscriptionNotification == null) return true;
    
    final now = DateTime.now();
    final difference = now.difference(_lastSubscriptionNotification!);
    
    return difference.inSeconds >= _notificationCooldownSeconds;
  }
  
  // 显示通知的方法
  void _showNotification(String message) {
    if (!_canShowNotification()) return;
    
    _lastSubscriptionNotification = DateTime.now();
    
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'VIP Subscription',
          style: TextStyle(
            color: AppColors.purchaseTheme,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.purchaseTheme),
        elevation: 0,
      ),
      body: _isLoading 
        ? const Center(
            child: CircularProgressIndicator(color: AppColors.purchaseTheme),
          )
        : _purchaseError != null && _products.isEmpty
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, color: Colors.red, size: 60),
                    const SizedBox(height: 16),
                    Text(
                      "Failed to load subscription plans",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _purchaseError!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                          _purchaseError = null;
                        });
                        _initInAppPurchase();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.purchaseTheme,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Retry"),
                    ),
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // VIP Banner
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF7649FE), AppColors.purchaseTheme],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.purchaseTheme.withOpacity(0.3),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Boombo VIP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Unlock premium features and enhance your experience',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // VIP Info Section (if subscribed)
                    _buildVipInfoSection(),
                    
                    // Features section
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 24, 16, 16),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'VIP Features',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildFeatureItem(AppStrings.unlimitedBrowsing),
                          _buildFeatureItem(AppStrings.noAds),
                          _buildFeatureItem(AppStrings.unlimitedAvatarChanges),
                        ],
                      ),
                    ),
                    
                    // Subscription plans
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text(
                        'Choose Your Plan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    
                    _buildSubscriptionPlan(
                      productId: IAPProducts.monthlySubscription,
                      title: 'Monthly Plan',
                      duration: '1 month access to all premium features',
                      price: 19.99,
                      period: 'per month',
                    ),
                    
                    _buildSubscriptionPlan(
                      productId: IAPProducts.quarterlySubscription,
                      title: 'Quarterly Plan',
                      duration: '3 months access to all premium features',
                      price: 29.99,
                      period: 'per 3 months',
                    ),
                    
                    _buildSubscriptionPlan(
                      productId: IAPProducts.yearlySubscription,
                      title: 'Annual Plan',
                      duration: '12 months access to all premium features',
                      price: 69.99,
                      period: 'per year',
                      bestValue: true,
                    ),
                    
                    // Subscribe button
                    Container(
                      margin: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _isSubscribed || _purchasePending
                          ? null
                          : () => _processSubscription(selectedPlan),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.purchaseTheme,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: _purchasePending 
                          ? const SizedBox(
                              width: 24, 
                              height: 24, 
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              )
                            )
                          : Text(
                              _isSubscribed ? 'Already Subscribed' : 'Subscribe Now',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      ),
                    ),
                    
                    // Restore purchases button - 只在非VIP用户时显示
                    if (!_isSubscribed)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        child: TextButton(
                          onPressed: _purchasePending ? null : _restorePurchases,
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            foregroundColor: AppColors.purchaseTheme,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: const BorderSide(color: AppColors.purchaseTheme, width: 1),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.restore, size: 18),
                              SizedBox(width: 8),
                              Text(
                                'Restore Previous Purchases',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    
                    // Terms and Conditions
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () => _launchURL('https://sites.google.com/view/privacyboombo/home'),
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: AppColors.purchaseTheme,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const Text('•', style: TextStyle(color: Colors.grey)),
                          TextButton(
                            onPressed: () => _launchURL('https://www.apple.com/legal/internet-services/itunes/dev/stdeula/'),
                            child: const Text(
                              'EULA',
                              style: TextStyle(
                                color: AppColors.purchaseTheme,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Disclaimer
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        AppStrings.subscriptionDisclaimer,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

extension ListExtension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
} 