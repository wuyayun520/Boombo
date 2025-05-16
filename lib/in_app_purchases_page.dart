import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'dart:async';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'dart:io';
import 'constants.dart';

class InAppPurchasesPage extends StatefulWidget {
  const InAppPurchasesPage({super.key});

  @override
  State<InAppPurchasesPage> createState() => _InAppPurchasesPageState();
}

class _InAppPurchasesPageState extends State<InAppPurchasesPage> {
  // Current balances for each tier
  int textQuota = 10;
  int pictureQuota = 10;
  int voiceQuota = 10;
  int videoQuota = 10;
  
  // Track selected feature
  String selectedFeature = IAPProducts.featureText;
  
  // In-app purchase related variables
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  List<ProductDetails> _products = [];
  bool _isLoading = true;
  bool _purchasePending = false;
  String? _purchaseError;
  
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
        print("Error in IAP Stream: $error");
      }
    );
    
    _loadBalances();
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
    
    // Define all product IDs
    final Set<String> productIds = IAPProducts.allProductIds;
    
    try {
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      if (response.notFoundIDs.isNotEmpty) {
        print("Some products were not found: ${response.notFoundIDs}");
      }
      
      setState(() {
        _products = response.productDetails;
        _isLoading = false;
      });
      
      // For debugging
      for (var product in _products) {
        print("Product ID: ${product.id}, Price: ${product.price}");
      }
    } catch (e) {
      print("Error querying products: $e");
      setState(() {
        _isLoading = false;
        _purchaseError = "Failed to load products: $e";
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
          _handleSuccessfulPurchase(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          setState(() {
            _purchasePending = false;
          });
          print("Purchase cancelled");
        }
        
        // Complete the purchase
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }
  
  // Handle successful purchase
  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    // Verify the purchase locally
    setState(() {
      _purchasePending = false;
    });
    
    print("Purchase successful: ${purchaseDetails.productID}");
    
    // Extract the credit amount from the product ID
    final productId = purchaseDetails.productID;
    int amount = _getCreditAmountFromProductId(productId);
    
    // Apply the credits based on the feature type
    if (productId.startsWith('Boombo1_')) {
      await _saveBalance(IAPProducts.featureText, amount);
    } else if (productId.startsWith('Boombo2_')) {
      await _saveBalance(IAPProducts.featurePicture, amount);
    } else if (productId.startsWith('Boombo3_')) {
      await _saveBalance(IAPProducts.featureVoice, amount);
    } else if (productId.startsWith('Boombo4_')) {
      await _saveBalance(IAPProducts.featureVideo, amount);
    }
    
    // Show success message
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Purchase completed successfully! Added $amount credits."))
      );
    }
  }
  
  // Extract credit amount from product ID
  int _getCreditAmountFromProductId(String productId) {
    try {
      // Extract the number after the underscore (e.g., "Boombo1_5" -> 5)
      final parts = productId.split('_');
      if (parts.length > 1) {
        return int.parse(parts[1]);
      }
    } catch (e) {
      print("Error parsing credit amount: $e");
    }
    
    // Default amount if parsing fails
    return 0;
  }
  
  // Handle purchase error
  void _handlePurchaseError(String errorMessage) {
    print("Purchase error: $errorMessage");
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Purchase failed: $errorMessage"))
      );
    }
  }

  Future<void> _loadBalances() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 如果是首次使用，设置默认值
    if (!prefs.containsKey(AppPrefs.textQuotaKey)) {
      await prefs.setInt(AppPrefs.textQuotaKey, 10);
    }
    if (!prefs.containsKey(AppPrefs.pictureQuotaKey)) {
      await prefs.setInt(AppPrefs.pictureQuotaKey, 10);
    }
    if (!prefs.containsKey(AppPrefs.voiceQuotaKey)) {
      await prefs.setInt(AppPrefs.voiceQuotaKey, 10);
    }
    if (!prefs.containsKey(AppPrefs.videoQuotaKey)) {
      await prefs.setInt(AppPrefs.videoQuotaKey, 10);
    }
    
    setState(() {
      textQuota = prefs.getInt(AppPrefs.textQuotaKey) ?? 10;
      pictureQuota = prefs.getInt(AppPrefs.pictureQuotaKey) ?? 10;
      voiceQuota = prefs.getInt(AppPrefs.voiceQuotaKey) ?? 10;
      videoQuota = prefs.getInt(AppPrefs.videoQuotaKey) ?? 10;
    });
  }

  Future<void> _saveBalance(String type, int amount) async {
    final prefs = await SharedPreferences.getInstance();
    
    switch (type) {
      case IAPProducts.featureText:
        textQuota += amount;
        await prefs.setInt(AppPrefs.textQuotaKey, textQuota);
        break;
      case IAPProducts.featurePicture:
        pictureQuota += amount;
        await prefs.setInt(AppPrefs.pictureQuotaKey, pictureQuota);
        break;
      case IAPProducts.featureVoice:
        voiceQuota += amount;
        await prefs.setInt(AppPrefs.voiceQuotaKey, voiceQuota);
        break;
      case IAPProducts.featureVideo:
        videoQuota += amount;
        await prefs.setInt(AppPrefs.videoQuotaKey, videoQuota);
        break;
    }
    
    setState(() {});
  }

  // Process purchase
  Future<void> _processPurchase(String productId) async {
    // Find the product in the list of available products
    final ProductDetails? product = _products.firstWhereOrNull(
      (p) => p.id == productId,
    );
    
    if (product == null) {
      print("Product not found: $productId");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Product not available"))
        );
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
            'Processing Purchase',
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
      
      // Start the purchase
      await _inAppPurchase.buyConsumable(
        purchaseParam: purchaseParam,
        autoConsume: true,
      );
      
      // Close the dialog (the purchase result will be handled in the listener)
      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      // Close the dialog
      if (mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error starting purchase: $e"))
        );
      }
      print("Error starting purchase: $e");
    }
  }

  Widget _buildFeatureCard({
    required String title,
    required int count,
    required bool isSelected,
    required String featureId,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFeature = featureId;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: isSelected ? AppColors.purchaseTheme : Colors.transparent,
            width: isSelected ? 2 : 0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  // Feature icon
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.purchaseTheme.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: AppColors.purchaseTheme,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Feature name and description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Current balance',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Count
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColors.purchaseTheme.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      count.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.purchaseTheme,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPurchaseOption({
    required String productId, 
    required double price, 
    required int amount,
  }) {
    // Find the real product details if available
    final ProductDetails? realProduct = _products.firstWhereOrNull(
      (p) => p.id == productId,
    );
    
    // Use the real price if product is available
    final String displayPrice = realProduct != null 
        ? realProduct.price 
        : '\$${price.toStringAsFixed(2)}';
    
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Coin icon
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.purchaseTheme.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.monetization_on_rounded,
              color: AppColors.purchaseTheme,
              size: 24,
            ),
          ),
          const SizedBox(height: 12),
          // Amount
          Text(
            amount.toString(),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.purchaseTheme,
            ),
          ),
          const SizedBox(height: 8),
          // Price
          Text(
            displayPrice,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(height: 16),
          // Purchase button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _purchasePending ? null : () => _processPurchase(productId),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purchaseTheme,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
                elevation: 0,
              ),
              child: _purchasePending 
                ? SizedBox(
                    width: 20, 
                    height: 20, 
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    )
                  )
                : const Text(
                  'Purchase',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
  
  // Get purchase options based on selected feature
  List<Map<String, dynamic>> _getPurchaseOptions(String featureId) {
    switch (featureId) {
      case IAPProducts.featureText:
        return [
          {'productId': IAPProducts.text5, 'price': 5.99, 'amount': 5},
          {'productId': IAPProducts.text15, 'price': 15.99, 'amount': 15},
          {'productId': IAPProducts.text19, 'price': 19.99, 'amount': 19},
        ];
      case IAPProducts.featurePicture:
        return [
          {'productId': IAPProducts.picture6, 'price': 6.99, 'amount': 6},
          {'productId': IAPProducts.picture19, 'price': 19.99, 'amount': 19},
          {'productId': IAPProducts.picture29, 'price': 29.99, 'amount': 29},
        ];
      case IAPProducts.featureVoice:
        return [
          {'productId': IAPProducts.voice8, 'price': 8.99, 'amount': 8},
          {'productId': IAPProducts.voice19, 'price': 19.99, 'amount': 19},
          {'productId': IAPProducts.voice39, 'price': 39.99, 'amount': 39},
        ];
      case IAPProducts.featureVideo:
        return [
          {'productId': IAPProducts.video8, 'price': 8.99, 'amount': 8},
          {'productId': IAPProducts.video19, 'price': 19.99, 'amount': 19},
          {'productId': IAPProducts.video39, 'price': 39.99, 'amount': 39},
        ];
      default:
        return [
          {'productId': IAPProducts.text5, 'price': 5.99, 'amount': 5},
          {'productId': IAPProducts.text15, 'price': 15.99, 'amount': 15},
          {'productId': IAPProducts.text19, 'price': 19.99, 'amount': 19},
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    // Features data
    final features = [
      {
        'id': IAPProducts.featureText,
        'title': 'Unlimited avatars',
        'count': textQuota,
        'icon': Icons.face_rounded,
      },
      {
        'id': IAPProducts.featurePicture,
        'title': 'Unrestricted name',
        'count': pictureQuota,
        'icon': Icons.edit_rounded,
      },
      {
        'id': IAPProducts.featureVoice,
        'title': 'View user information',
        'count': voiceQuota,
        'icon': Icons.person_rounded,
      },
      {
        'id': IAPProducts.featureVideo,
        'title': 'View user works',
        'count': videoQuota,
        'icon': Icons.video_collection_rounded,
      },
    ];
    
    // Get purchase options based on selected feature
    final purchaseOptions = _getPurchaseOptions(selectedFeature);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'In-App Purchases',
          style: TextStyle(
            color: AppColors.purchaseTheme,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.purchaseTheme),
        elevation: 0,
      ),
      body: _isLoading 
        ? Center(
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
                      "Failed to load products",
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
          : SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Feature cards
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      itemCount: features.length,
                      itemBuilder: (context, index) {
                        final feature = features[index];
                        return _buildFeatureCard(
                          title: feature['title'] as String,
                          count: feature['count'] as int,
                          isSelected: selectedFeature == feature['id'],
                          featureId: feature['id'] as String,
                          icon: feature['icon'] as IconData,
                        );
                      },
                    ),
                  ),
                  
                  // Purchase options section
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: purchaseOptions.map((option) => _buildPurchaseOption(
                        productId: option['productId'] as String,
                        price: option['price'] as double,
                        amount: option['amount'] as int,
                      )).toList(),
                    ),
                  ),
                ],
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