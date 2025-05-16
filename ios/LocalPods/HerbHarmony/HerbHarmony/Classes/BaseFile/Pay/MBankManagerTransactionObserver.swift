
//: Declare String Begin

/*: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION" :*/
fileprivate let str_emptyData:[UInt8] = [0xe3,0xf2,0xf2,0xee,0xe7,0x1,0xeb,0xe3,0xf2,0x1,0xf2,0xe3,0xfb,0x1,0xf5,0xf7,0xe5,0xe5,0xe7,0xe7,0xe6,0x1,0xf0,0xf1,0xf6,0xeb,0xe8,0xeb,0xe5,0xe3,0xf6,0xeb,0xf1,0xf0]

fileprivate func curveTo(add num: UInt8) -> UInt8 {
    let value = Int(num) + 94
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION" :*/
fileprivate let str_postValue:[UInt8] = [0x22,0x33,0x33,0x2f,0x26,0x3c,0x2a,0x22,0x33,0x3c,0x30,0x36,0x21,0x30,0x20,0x31,0x2a,0x21,0x26,0x3c,0x30,0x36,0x20,0x20,0x26,0x26,0x27,0x3c,0x2d,0x2c,0x37,0x2a,0x25,0x2a,0x20,0x22,0x37,0x2a,0x2c,0x2d]

/*: "mf/recharge/createApplePay" :*/
fileprivate let str_priceContent:[Character] = ["m","f","/","r","e","c","h","a","r","g","e","/","c","r","e","a","t","e","A","p"]
fileprivate let str_makeValue:String = "plePaymodel hidden moment remove size"

/*: "productId" :*/
fileprivate let str_userData:[Character] = ["p","r","o","d","u","c","t","I","d"]

/*: "source" :*/
fileprivate let str_constraintData:String = "scontexturc"
fileprivate let str_showData:String = "view"

/*: "IAP充值创建订单失败: :*/
fileprivate let str_closeData:String = "IAP\u{5145}\u{503c}"
fileprivate let str_forceName:String = "key"

/*: , 参数: :*/
fileprivate let str_collectionName:String = ", \u{53c2}数:"

/*: ." :*/
fileprivate let str_centerInputValue:String = "from"

/*: "orderNum" :*/
fileprivate let str_deadlineData:String = "handle cancelorderNum"

/*: "mf/recharge/applePayNotify" :*/
fileprivate let str_refClickName:String = "let info text host roommf/r"
fileprivate let str_removeValue:String = "show self view falserge/"
fileprivate let str_borderButtonLetValue:String = "any viewePay"
fileprivate let str_modeValue:[Character] = ["N","o","t","i","f","y"]

/*: "IAP充值校验失败: :*/
fileprivate let str_equalValue:String = "IAP充值\u{6821}\u{9a8c}"
fileprivate let str_countText:[Character] = ["\u{5931}","\u{8d25}",":"]

/*: "transactionId" :*/
fileprivate let str_indexValue:String = "TRANSA"

/*: "reportMoney" :*/
fileprivate let str_targetItemTitle:String = "rerun"
fileprivate let str_onValue:[Character] = ["o","r","t","M","o","n","e","y"]

/*: "mf/AutoSub/AppleCreateOrder" :*/
fileprivate let str_barBindValue:[Character] = ["m","f","/","A","u","t","o","S","u","b","/","A","p","p","l","e","C"]
fileprivate let str_screenAppData:String = "REAT"

/*: "IAP订阅创建订单失败: :*/
fileprivate let str_foundationViewData:String = "IAP\u{8ba2}阅"

/*: "orderId" :*/
fileprivate let str_saveContent:[UInt8] = [0xe5,0xf8,0xee,0xef,0xf8,0xc3,0xee]

private func originCall(with num: UInt8) -> UInt8 {
    return num ^ 138
}

/*: "mf/AutoSub/ApplePaySuccess" :*/
fileprivate let str_defineTitleValue:[Character] = ["m","f","/","A","u","t","o","S","u","b","/","A","p","p","l","e","P","a","y","S","u"]
fileprivate let str_titleValue:String = "ccemodel"

/*: "IAP订阅校验失败: :*/
fileprivate let str_sectionTitle:String = "IAP订\u{9605}校"

/*: "App" :*/
fileprivate let str_cellTitle:String = "Appcell user line edit let"

/*: "OrderTransactionInfo_ :*/
fileprivate let str_requestText:[Character] = ["O","r","d","e","r","T","r","a","n","s","a","c","t","i"]
fileprivate let str_accelerateContent:[Character] = ["o","n"]
fileprivate let str_momentContent:[Character] = ["I","n","f","o","_"]

/*: "OrderTransactionInfo_Subscribe_ :*/
fileprivate let str_pathText:[UInt8] = [0x5f,0x65,0x62,0x69,0x72,0x63,0x73,0x62,0x75,0x53,0x5f,0x6f,0x66,0x6e,0x49,0x6e,0x6f,0x69,0x74,0x63,0x61,0x73,0x6e,0x61,0x72,0x54,0x72,0x65,0x64,0x72,0x4f]

/*: "verifyData" :*/
fileprivate let str_pairContent:[UInt8] = [0xee,0xdd,0xea,0xe1,0xde,0xf1,0xbc,0xd9,0xec,0xd9]

fileprivate func requestContent(player num: UInt8) -> UInt8 {
    let value = Int(num) + 136
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "IAP查询内购商品失败, productId: :*/
fileprivate let str_bringCompleteContent:String = "view cover valueIAP查"
fileprivate let str_shareValue:[Character] = ["败",","," ","p","r","o","d","u","c","t","I","d",":"]

/*: "IAP查询内购商品失败, products.count为0." :*/
fileprivate let str_normalData:[Character] = ["I","A","P","查","询","内","购","\u{5546}","\u{54c1}","失","败",","]
fileprivate let str_equalData:String = " profrom content self"
fileprivate let str_arrayContent:String = ".count为0.else object"

/*: "IAP查询内购商品失败, Error: :*/
fileprivate let str_modelName:[Character] = ["I","A","P","\u{67e5}","询","内","购","商","品","失","败",","," ","E","r","r","o"]
fileprivate let str_tapMakeData:[Character] = ["r",":"]

/*: "IAP-purchased: :*/
fileprivate let str_indexData:[Character] = ["I","A","P","-","p"]
fileprivate let str_pathName:String = "urchased:filter free color height"

/*: , 订单号: :*/
fileprivate let str_playerName:String = ", 订\u{5355}号"
fileprivate let str_fileName:String = ":"

/*: , 商品Id: :*/
fileprivate let str_showRestoreData:[Character] = [","," ","商","品","I","d",":"]

/*: , 苹果transId: :*/
fileprivate let str_frameData:[Character] = [","," ","苹","果","t","r","a","n","s","I","d"]
fileprivate let str_viewValue:String = "party"

/*: "IAP-failed: :*/
fileprivate let str_norData:String = "IAP-fself type burn"
fileprivate let str_giftName:String = "ailed:color edit day window name"

/*: "IAP-deferred: :*/
fileprivate let str_textMakeName:String = "IAP-dcell color var key"
fileprivate let str_equalIconName:String = "red:extension clear let for size"

/*: "IAP未知交易类型: :*/
fileprivate let str_sendName:[Character] = ["I","A","P","未","知","交"]
fileprivate let str_leadingData:[Character] = ["易","类","型",":"]

/*: " 未知的交易类型" :*/
fileprivate let str_viewBottomName:[Character] = [""," ","\u{672a}","知","的","交"]
fileprivate let str_userFaceContent:String = "易类型"

/*: "IAP获取本地收据数据失败, transactionId: :*/
fileprivate let str_videoData:[Character] = ["I","A","P","\u{83b7}","取","本","地","收","据","数","据","失","败",","]
fileprivate let str_makeData:String = " transense send add unknown let"
fileprivate let str_aspectText:String = "to row nor letionId:"

/*: , orderId: :*/
fileprivate let str_sizeCellValue:[Character] = [","," ","o"]
fileprivate let str_giftTitle:String = "rderId:for raw tip"

/*: , payType: :*/
fileprivate let str_indexText:[Character] = [","," ","p","a","y","T"]
fileprivate let str_effectValue:String = "equal near icon self returnype:"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MBankManagerTransactionObserver.swift
//  AbroadTalking
//
//  Created by young on 2022/9/2.
//

//: import UIKit
import UIKit

//: import StoreKit
import StoreKit

//: import SwiftyJSON
import SwiftyJSON

// 苹果支付成功通知
//: public let APPLE_IAP_PAY_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION")
public let kLet_userErrorHeightValue = NSNotification.Name(rawValue: String(bytes: str_emptyData.map{curveTo(add: $0)}, encoding: .utf8)!)
// 苹果订阅成功通知
//: public let APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION")
public let kLet_marginData = NSNotification.Name(rawValue: String(bytes: str_postValue.map{$0^99}, encoding: .utf8)!)
// 最大失败重试次数
//: let APPLE_IAP_MAX_RETRY_COUNT = 9
let kLet_noScreenValue = 9

/// 支付类型
//: enum ApplePayType {
enum QuantityRelationType {
    //: case Pay
    case Pay // 支付
    //: case Subscribe
    case Subscribe // 订阅
}

/// 支付状态
//: enum AppleIAPStatus: String {
enum DataTermConvertible: String {
    //: case unknow            = "未知类型"
    case unknow = "未知类型"
    //: case createOrderFail   = "创建订单失败"
    case createOrderFail = "创建订单失败"
    //: case notArrow          = "设备不允许"
    case notArrow = "设备不允许"
    //: case noProductId       = "缺少产品Id"
    case noProductId = "缺少产品Id"
    //: case failed            = "交易失败/取消"
    case failed = "交易失败/取消"
    //: case restored          = "已购买过该商品"
    case restored = "已购买过该商品"
    //: case deferred          = "交易延期"
    case deferred = "交易延期"
    //: case verityFail        = "服务器验证失败"
    case verityFail = "服务器验证失败"
    //: case veritySucceed     = "服务器验证成功"
    case veritySucceed = "服务器验证成功"
    //: case renewSucceed      = "自动续订成功"
    case renewSucceed = "自动续订成功"
}

//: typealias IAPcompletionHandle = (AppleIAPStatus, Double) -> Void
typealias IAPcompletionHandle = (DataTermConvertible, Double) -> Void

//: class AppleIAPManager: NSObject {
class MBankManagerTransactionObserver: NSObject {
    //: var completionHandle: IAPcompletionHandle?
    var completionHandle: IAPcompletionHandle?
    //: private var productInfoReq: SKProductsRequest?
    private var productInfoReq: SKProductsRequest?
    //: private var reqRetryCountDict = [String: Int]()
    private var reqRetryCountDict = [String: Int]() // 记录每个交易请求重试次数
    //: private var payCacheList = [[String: String]]()
    private var payCacheList = [[String: String]]() // 【购买】缓存数据
    //: private var subscribeCacheList = [[String: String]]()
    private var subscribeCacheList = [[String: String]]() // 【订阅】缓存数据
    //: private var createOrderId: String?
    private var createOrderId: String? // 当前支付服务端创建的订单id
    //: private var currentPayType: ApplePayType = .Pay
    private var currentPayType: QuantityRelationType = .Pay // 当前支付类型

    // singleton
    //: static let shared = AppleIAPManager()
    static let shared = MBankManagerTransactionObserver()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self, selector: #selector(appWillTerminate),
        NotificationCenter.default.addObserver(self, selector: #selector(velleity),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    // MARK: - NotificationCenter

    //: @objc func appWillTerminate() {
    @objc func velleity() {
        //: SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
    }
}

// MARK: - 【苹果购买】业务接口

//: extension AppleIAPManager {
private extension MBankManagerTransactionObserver {
    /// 【购买】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_pay_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func lessClick(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/createApplePay"
        reqModel.requestPath = (String(str_priceContent) + String(str_makeValue.prefix(6)))
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(String(str_userData))] = productId
        //: dict["source"] = source
        dict[(str_constraintData.replacingOccurrences(of: "context", with: "o") + str_showData.replacingOccurrences(of: "view", with: "e"))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP充值创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                QueryThen.bringInstance(msg: (str_closeData + "创建\u{8ba2}\u{5355}失败" + str_forceName.replacingOccurrences(of: "key", with: ":")) + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderNum"].string
            let orderId = json[(String(str_deadlineData.suffix(8)))].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【购买】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_pay_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func viewVideo(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/applePayNotify"
        reqModel.requestPath = (String(str_refClickName.suffix(4)) + "echa" + String(str_removeValue.suffix(4)) + "appl" + String(str_borderButtonLetValue.suffix(4)) + String(str_modeValue))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: UploadLogTool.writeLog(msg: "IAP充值校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    QueryThen.bringInstance(msg: (str_equalValue + String(str_countText)) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Pay)
                    self.addAcross(transactionId, .Pay)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newPayCacheList = self.payCacheList.filter({$0["transactionId"] != transactionId})
            let newPayCacheList = self.payCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] != transactionId }
            //: let diskPath = self.getPayCachePath()
            let diskPath = self.stochasticProcessWrite()
            //: NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_PAY_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_userErrorHeightValue, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue)
            self.completionHandle?(.veritySucceed, result[(str_targetItemTitle.replacingOccurrences(of: "run", with: "p") + String(str_onValue))].doubleValue)
        }
    }
}

// MARK: - 【苹果订阅】业务接口

//: extension AppleIAPManager {
private extension MBankManagerTransactionObserver {
    /// 【订阅】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_subscribe_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func equalNoteHandle(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/AppleCreateOrder"
        reqModel.requestPath = (String(str_barBindValue) + str_screenAppData.lowercased() + "eOrder")
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(String(str_userData))] = productId
        //: dict["source"] = source
        dict[(str_constraintData.replacingOccurrences(of: "context", with: "o") + str_showData.replacingOccurrences(of: "view", with: "e"))] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP订阅创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                QueryThen.bringInstance(msg: (str_foundationViewData + "创建订单\u{5931}败:") + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderId"].string
            let orderId = json[String(bytes: str_saveContent.map{originCall(with: $0)}, encoding: .utf8)!].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【订阅】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_subscribe_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func imageAppletransactionContent(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/ApplePaySuccess"
        reqModel.requestPath = (String(str_defineTitleValue) + str_titleValue.replacingOccurrences(of: "model", with: "ss"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    //: UploadLogTool.writeLog(msg: "IAP订阅校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    QueryThen.bringInstance(msg: (str_sectionTitle + "验失\u{8d25}:") + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Subscribe)
                    self.addAcross(transactionId, .Subscribe)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newSubscribeCacheList = self.subscribeCacheList.filter({$0["transactionId"] != transactionId})
            let newSubscribeCacheList = self.subscribeCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] != transactionId }
            //: let diskPath = self.getSubscribeCachePath()
            let diskPath = self.getRandom()
            //: NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_marginData, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue)
            self.completionHandle?(.veritySucceed, result[(str_targetItemTitle.replacingOccurrences(of: "run", with: "p") + String(str_onValue))].doubleValue)
        }
    }
}

// MARK: - Event

//: extension AppleIAPManager {
extension MBankManagerTransactionObserver {
    /// 初始化数据
    //: private func iap_initData() {
    private func ofPlace() {
        //: self.payCacheList = getLocalPayCacheList(payType: .Pay)
        self.payCacheList = hearing(payType: .Pay)
        //: self.subscribeCacheList = getLocalPayCacheList(payType: .Subscribe)
        self.subscribeCacheList = hearing(payType: .Subscribe)
        //: self.createOrderId = nil
        self.createOrderId = nil
    }

    /// 获取缓存列表
    /// - Parameter payType: 支付类型
    /// - Returns: 缓存列表
    //: private func getLocalPayCacheList(payType: ApplePayType) -> [[String: String]] {
    private func hearing(payType: QuantityRelationType) -> [[String: String]] {
        //: var list: [[String: String]]?
        var list: [[String: String]]?
        //: var diskPath = ""
        var diskPath = ""
        //: if payType == .Pay {
        if payType == .Pay {
            //: diskPath = getPayCachePath()
            diskPath = stochasticProcessWrite()
            //: } else {
        } else {
            //: diskPath = getSubscribeCachePath()
            diskPath = getRandom()
        }

        //: if FileManager.default.fileExists(atPath: diskPath) {
        if FileManager.default.fileExists(atPath: diskPath) {
            //: list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            //: if list == nil {
            if list == nil {
                //: try? FileManager.default.removeItem(atPath: diskPath)
                try? FileManager.default.removeItem(atPath: diskPath)
            }
        }
        //: if list == nil {
        if list == nil {
            //: list = [[String: String]]()
            list = [[String: String]]()
        }
        //: return list!
        return list!
    }

    /// 获取【购买】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getPayCachePath() -> String {
    private func stochasticProcessWrite() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(str_cellTitle.prefix(3))))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = kLet_dismissData.string(forKey: kLet_userValue) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((String(str_requestText) + String(str_accelerateContent) + String(str_momentContent)) + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取【订阅】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getSubscribeCachePath() -> String {
    private func getRandom() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(str_cellTitle.prefix(3))))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = kLet_dismissData.string(forKey: kLet_userValue) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_Subscribe_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(String(bytes: str_pathText.reversed(), encoding: .utf8)! + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取本地收据数据
    /// - Parameters:
    ///   - transactionId: 收据标识符
    ///   - payType: 支付类型
    /// - Returns: 收据数据
    //: fileprivate func getVerifyData(_ transactionId: String, _ payType: ApplePayType) -> String? {
    fileprivate func realizeEqualView(_ transactionId: String, _ payType: QuantityRelationType) -> String? {
        // 有未完成的订单，先取缓存
        //: var paramsArr = [[String: String]]()
        var paramsArr = [[String: String]]()
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.payCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] == transactionId }
        //: case .Subscribe:
        case .Subscribe:
            //: paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.subscribeCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] == transactionId }
        }
        //: if paramsArr.count > 0 && paramsArr.first!["verifyData"] != nil {
        if paramsArr.count > 0, paramsArr.first![String(bytes: str_pairContent.map{requestContent(player: $0)}, encoding: .utf8)!] != nil {
            //: return paramsArr.first!["verifyData"]
            return paramsArr.first![String(bytes: str_pairContent.map{requestContent(player: $0)}, encoding: .utf8)!]
        }

        // 取本地
        //: guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        //: let data = NSData(contentsOf: receiptUrl)
        let data = NSData(contentsOf: receiptUrl)
        //: let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        //: return receiptStr
        return receiptStr
    }
}

// MARK: - 失败重试流程

//: extension AppleIAPManager {
extension MBankManagerTransactionObserver {
    /// 检测未完成的苹果支付【只会重试当前登录用户】
    //: func iap_checkUnfinishedTransactions() {
    func customDisplay() {
        //: iap_initData()
        ofPlace()

        // 【购买】失败重试
        //: for dict in self.payCacheList {
        for dict in self.payCacheList {
            //: iap_failedRetry(dict["transactionId"], .Pay)
            popRetry(dict[(str_indexValue.lowercased() + "ctionId")], .Pay)
        }

        // 【订阅】失败重试
        //: for dict in self.subscribeCacheList {
        for dict in self.subscribeCacheList {
            //: iap_failedRetry(dict["transactionId"], .Subscribe)
            popRetry(dict[(str_indexValue.lowercased() + "ctionId")], .Subscribe)
        }
    }

    /// 失败重试
    /// - Parameters:
    ///   - transactionId: Id
    ///   - payType: 支付类型
    //: private func iap_failedRetry(_ transactionId: String?, _ payType: ApplePayType) {
    private func popRetry(_ transactionId: String?, _ payType: QuantityRelationType) {
        //: guard let transactionId = transactionId else { return }
        guard let transactionId = transactionId else { return }
        // 初始化每个交易请求次数
        //: reqRetryCountDict[transactionId] = 0
        reqRetryCountDict[transactionId] = 0
        // 3. 服务端校验流程
        //: transcationPurchasedToCheck(transactionId, payType)
        addAcross(transactionId, payType)
    }
}

// MARK: - 苹果正常支付流程

//: extension AppleIAPManager {
extension MBankManagerTransactionObserver {
    /// 发起苹果支付【1.创建订单； 2.发起苹果支付； 3.服务端校验】
    /// - Parameters:
    ///   - purchID: 产品ID
    ///   - payType: 支付类型
    ///   - handle: 回调
    ///   - source: 0 常规充值 1 观看视频后充值或订阅
    //: func iap_startPurchase(productId: String, payType: ApplePayType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
    func getDownThroughTabulaRasa(productId: String, payType: QuantityRelationType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
        //: iap_initData()
        ofPlace()
        //: self.completionHandle = handle
        self.completionHandle = handle
        //: self.currentPayType = payType
        self.currentPayType = payType

        // 1. 根据类型创建订单
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: req_pay_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            lessClick(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0)
                    self.completionHandle?(.createOrderFail, 0)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.frameResign(productId)
            }

        //: case .Subscribe:
        case .Subscribe:
            //: req_subscribe_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            equalNoteHandle(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0)
                    self.completionHandle?(.createOrderFail, 0)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.frameResign(productId)
            }
        }
    }

    // 2 发起苹果支付，查询apple内购商品
    //: fileprivate func requestProductInfo(_ productId: String) {
    fileprivate func frameResign(_ productId: String) {
        //: guard SKPaymentQueue.canMakePayments() else {
        guard SKPaymentQueue.canMakePayments() else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, productId:\(productId).")
            QueryThen.bringInstance(msg: (String(str_bringCompleteContent.suffix(4)) + "询内\u{8d2d}商品失" + String(str_shareValue)) + "\(productId).")
            //: self.completionHandle?(.notArrow, 0)
            self.completionHandle?(.notArrow, 0)
            //: return
            return
        }

        // 销毁当前请求
        //: self.clearProductInfoRequest()
        self.clearRequest()
        // 查询apple内购商品
        //: let identifiers: Set<String> = [productId]
        let identifiers: Set<String> = [productId]
        //: productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        //: productInfoReq?.delegate = self
        productInfoReq?.delegate = self
        //: productInfoReq?.start()
        productInfoReq?.start()
    }

    // 销毁当前请求
    //: fileprivate func clearProductInfoRequest() {
    fileprivate func clearRequest() {
        //: guard productInfoReq != nil else { return }
        guard productInfoReq != nil else { return }
        //: productInfoReq?.delegate = nil
        productInfoReq?.delegate = nil
        //: productInfoReq?.cancel()
        productInfoReq?.cancel()
        //: productInfoReq = nil
        productInfoReq = nil
    }
}

// MARK: - SKProductsRequestDelegate【商品查询】

//: extension AppleIAPManager: SKProductsRequestDelegate {
extension MBankManagerTransactionObserver: SKProductsRequestDelegate {
    // 查询apple内购商品成功回调
    //: func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    func productsRequest(_: SKProductsRequest, didReceive response: SKProductsResponse) {
        //: guard response.products.count > 0 else {
        guard response.products.count > 0 else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, products.count为0.")
            QueryThen.bringInstance(msg: (String(str_normalData) + String(str_equalData.prefix(4)) + "ducts" + String(str_arrayContent.prefix(9))))
            //: self.completionHandle?( .noProductId, 0)
            self.completionHandle?(.noProductId, 0)
            //: return
            return
        }

        //: let payment = SKPayment(product: response.products.first!)
        let payment = SKPayment(product: response.products.first!)
        //: SKPaymentQueue.default().add(payment)
        SKPaymentQueue.default().add(payment)
    }

    // 查询apple内购商品失败
    //: func request(_ request: SKRequest, didFailWithError error: Error) {
    func request(_: SKRequest, didFailWithError error: Error) {
        //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, Error:\(error).")
        QueryThen.bringInstance(msg: (String(str_modelName) + String(str_tapMakeData)) + "\(error).")
        //: self.completionHandle?( .noProductId, 0)
        self.completionHandle?(.noProductId, 0)
    }

    // 查询apple内购商品完成
    //: func requestDidFinish(_ request: SKRequest) {
    func requestDidFinish(_: SKRequest) {}
}

// MARK: - SKPaymentTransactionObserver【支付回调】

//: extension AppleIAPManager: SKPaymentTransactionObserver {
extension MBankManagerTransactionObserver: SKPaymentTransactionObserver {
    /// 2.2 apple内购完成回调
    //: func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
    func paymentQueue(_: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        //: for transaction in transactions {
        for transaction in transactions {
            //: switch transaction.transactionState {
            switch transaction.transactionState {
            //: case .purchasing:
            case .purchasing: // 交易中
                //: break
                break
            //: case .purchased:
            case .purchased: // 交易成功
                /**
                 original.transactionIdentifier 首次订阅时为nil，transaction.transactionIdentifier有值；
                 后续自动订阅、续订时，original.transactionIdentifier为首次订阅时生成的transaction.transactionIdentifier，值固定不变；
                 每次订阅transaction.transactionIdentifier都不一样，为当前交易的标识；
                 */
                //: if transaction.original != nil && createOrderId == nil {
                if transaction.original != nil && createOrderId == nil { // 启动自动续订时，不需要调用服务端验证接口
                    //: self.completionHandle?(.renewSucceed, 0)
                    self.completionHandle?(.renewSucceed, 0)
                    //: } else {
                } else { // 普通购买和订阅
                    //: UploadLogTool.writeLog(msg: "IAP-purchased:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                    QueryThen.bringInstance(msg: (String(str_indexData) + String(str_pathName.prefix(9))) + "\(currentPayType)" + (str_playerName + str_fileName.capitalized) + "\(String(describing: createOrderId))" + (String(str_showRestoreData)) + "\(transaction.payment.productIdentifier)" + (String(str_frameData) + str_viewValue.replacingOccurrences(of: "party", with: ":")) + "\(String(describing: transaction.transactionIdentifier)).")
                    // 初始化每个交易请求次数
                    //: reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    // 3. 服务端校验流程
                    //: transcationPurchasedToCheck(transaction.transactionIdentifier!, self.currentPayType)
                    addAcross(transaction.transactionIdentifier!, self.currentPayType)
                }
                // 移除苹果支付系统缓存
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: createOrderId = nil
                createOrderId = nil
            //: case .failed:
            case .failed: // 交易失败/取消
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-failed:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                QueryThen.bringInstance(msg: (String(str_norData.prefix(5)) + String(str_giftName.prefix(6))) + "\(currentPayType)" + (str_playerName + str_fileName.capitalized) + "\(String(describing: createOrderId))" + (String(str_showRestoreData)) + "\(transaction.payment.productIdentifier)" + (String(str_frameData) + str_viewValue.replacingOccurrences(of: "party", with: ":")) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.failed, 0)
                self.completionHandle?(.failed, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: case .restored:
            case .restored: // 已购买过该商品
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.restored, 0)
                self.completionHandle?(.restored, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: case .deferred:
            case .deferred: // 交易延期
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-deferred:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                QueryThen.bringInstance(msg: (String(str_textMakeName.prefix(5)) + "efer" + String(str_equalIconName.prefix(4))) + "\(currentPayType)" + (str_playerName + str_fileName.capitalized) + "\(String(describing: createOrderId))" + (String(str_showRestoreData)) + "\(transaction.payment.productIdentifier)" + (String(str_frameData) + str_viewValue.replacingOccurrences(of: "party", with: ":")) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.deferred, 0)
                self.completionHandle?(.deferred, 0)
                //: createOrderId = nil
                createOrderId = nil
            //: @unknown default:
            @unknown default:
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.unknow, 0)
                self.completionHandle?(.unknow, 0)
                //: createOrderId = nil
                createOrderId = nil
                //: UploadLogTool.writeLog(msg: "IAP未知交易类型:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                QueryThen.bringInstance(msg: (String(str_sendName) + String(str_leadingData)) + "\(currentPayType)" + (str_playerName + str_fileName.capitalized) + "\(String(describing: createOrderId))" + (String(str_showRestoreData)) + "\(transaction.payment.productIdentifier)" + (String(str_frameData) + str_viewValue.replacingOccurrences(of: "party", with: ":")) + "\(String(describing: transaction.transactionIdentifier)).")
                //: fatalError(" 未知的交易类型")
                fatalError((String(str_viewBottomName) + str_userFaceContent.capitalized))
            }
        }
    }

    /// 3. 服务端校验流程
    /// - Parameters:
    ///   - transactionId: 交易唯一标识符
    ///   - payType: 支付类型
    //: fileprivate func transcationPurchasedToCheck(_ transactionId: String, _ payType: ApplePayType) {
    fileprivate func addAcross(_ transactionId: String, _ payType: QuantityRelationType) {
        //: guard let receiptStr = getVerifyData(transactionId, payType) else {
        guard let receiptStr = realizeEqualView(transactionId, payType) else {
            //: UploadLogTool.writeLog(msg: "IAP获取本地收据数据失败, transactionId:\(transactionId), orderId:\(String(describing: createOrderId)), payType:\(payType).")
            QueryThen.bringInstance(msg: (String(str_videoData) + String(str_makeData.prefix(5)) + "sact" + String(str_aspectText.suffix(6))) + "\(transactionId)" + (String(str_sizeCellValue) + String(str_giftTitle.prefix(7))) + "\(String(describing: createOrderId))" + (String(str_indexText) + String(str_effectValue.suffix(4))) + "\(payType).")
            //: self.completionHandle?(.verityFail, 0)
            self.completionHandle?(.verityFail, 0)
            //: return
            return
        }

        // 缓存支付成功信息，防止接口校验失败
        //: if createOrderId != nil {
        if createOrderId != nil { // 正常支付流程
            //: switch(payType) {
            switch payType {
            //: case .Pay:
            case .Pay:
                //: if self.payCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 {  // 防止重复添加缓存数据
                if self.payCacheList.filter({ $0[(str_indexValue.lowercased() + "ctionId")] == transactionId || $0[String(bytes: str_saveContent.map{originCall(with: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(str_indexValue.lowercased() + "ctionId"): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: str_saveContent.map{originCall(with: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: str_pairContent.map{requestContent(player: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.payCacheList.append(cacheDict)
                    self.payCacheList.append(cacheDict)
                    //: let diskPath = self.getPayCachePath()
                    let diskPath = self.stochasticProcessWrite()
                    //: NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                }

            //: case .Subscribe:
            case .Subscribe:
                //: if self.subscribeCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 { // 防止重复添加缓存数据
                if self.subscribeCacheList.filter({ $0[(str_indexValue.lowercased() + "ctionId")] == transactionId || $0[String(bytes: str_saveContent.map{originCall(with: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(str_indexValue.lowercased() + "ctionId"): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: str_saveContent.map{originCall(with: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: str_pairContent.map{requestContent(player: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.subscribeCacheList.append(cacheDict)
                    self.subscribeCacheList.append(cacheDict)
                    //: let diskPath = self.getSubscribeCachePath()
                    let diskPath = self.getRandom()
                    //: NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                }
            }
        }

        // 限制交易重试最大次数
        //: var reqCount = reqRetryCountDict[transactionId] ?? 0
        var reqCount = reqRetryCountDict[transactionId] ?? 0
        //: reqCount += 1
        reqCount += 1
        //: reqRetryCountDict[transactionId] = reqCount
        reqRetryCountDict[transactionId] = reqCount
        //: if reqCount > APPLE_IAP_MAX_RETRY_COUNT {
        if reqCount > kLet_noScreenValue {
            //: self.completionHandle?(.verityFail, 0)
            self.completionHandle?(.verityFail, 0)
            //: return
            return
        }

        // 3.服务端校验，根据transactionId从缓存中取
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: let paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.payCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_pay_uploadAppletransaction(transactionId, params: paramsArr.first!)
            viewVideo(transactionId, params: paramsArr.first!)

        //: case .Subscribe:
        case .Subscribe:
            //: let paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.subscribeCacheList.filter { $0[(str_indexValue.lowercased() + "ctionId")] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_subscribe_uploadAppletransaction(transactionId, params: paramsArr.first!)
            imageAppletransactionContent(transactionId, params: paramsArr.first!)
        }
    }
}
