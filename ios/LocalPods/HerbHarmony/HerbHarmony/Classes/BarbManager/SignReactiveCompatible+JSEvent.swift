
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let str_imageName:[UInt8] = [0x9d,0x8f,0x88,0x9c,0x83,0x8f,0x9d,0x95,0x9e,0x82,0x83,0x98,0x8e,0x95,0x98,0x8f,0x8c,0x98,0x8f,0x99,0x82,0x89,0x85,0x83,0x84,0x95,0x84,0x85,0x9e,0x83,0x8c,0x83,0x89,0x8b,0x9e,0x83,0x85,0x84]

private func pageActualPop(table num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "goodsId" :*/
fileprivate let str_fullContent:[Character] = ["g","o","o","d","s","I","d"]

/*: "source" :*/
fileprivate let str_unprecedentedText:String = "viewurce"

/*: "type" :*/
fileprivate let str_todayData:[Character] = ["t","y","p","e"]

/*: "title" :*/
fileprivate let str_countWrapData:String = "taddtle"

/*: "url" :*/
fileprivate let str_frameValue:[Character] = ["u","r","l"]

/*: "money" :*/
fileprivate let str_iconName:String = "MONEY"

/*: "Other" :*/
fileprivate let str_modelManagerText:String = "Otherview come false"

/*: "show" :*/
fileprivate let str_acrossContent:[Character] = ["s","h","o","w"]

/*: "target" :*/
fileprivate let str_cancelVideoData:String = "toargeto"

/*: "eventName" :*/
fileprivate let str_firstArrayData:[Character] = ["e","v","e","n","t","N","a","m"]
fileprivate let str_positionName:[Character] = ["e"]

/*: "jsonString" :*/
fileprivate let str_endTitle:String = "lab"
fileprivate let str_blackValue:String = "sonSimport table background let"

/*: "coin" :*/
fileprivate let str_putData:String = "ctransformn"

/*: "uid" :*/
fileprivate let str_interactionTheWantTitle:String = "uilab"

/*: "未实现的js事件： :*/
fileprivate let str_buttonValue:[Character] = ["未","\u{5b9e}","现","的","j","s","事","件","："]

/*: "PurchaseClick" :*/
fileprivate let str_coverData:String = "Purchasuser case in view view"
fileprivate let str_collectValueContent:String = "eClickview content"

/*: "Retry After or Go to \"Feedback\" to contact us" :*/
fileprivate let str_playIconValue:[UInt8] = [0x73,0x75,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x6f,0x74,0x20,0x22,0x6b,0x63,0x61,0x62,0x64,0x65,0x65,0x46,0x22,0x20,0x6f,0x74,0x20,0x6f,0x47,0x20,0x72,0x6f,0x20,0x72,0x65,0x74,0x66,0x41,0x20,0x79,0x72,0x74,0x65,0x52]

/*: "Apple" :*/
fileprivate let str_sendName:String = "path main path yesterday hiddenApple"

/*: " apple支付充值失败： :*/
fileprivate let str_stageValue:String = " apappear return image section"
fileprivate let str_warningText:String = "status："

/*: "payResultCallback();" :*/
fileprivate let str_shareName:String = "style makepayRes"
fileprivate let str_micAppValue:[Character] = ["u","l","t","C","a","l","l","b"]
fileprivate let str_eventTitle:[Character] = ["a","c","k","(",")",";"]

/*: "USD" :*/
fileprivate let str_iconValue:String = "modelSD"

/*: "amount" :*/
fileprivate let str_colorData:[UInt8] = [0xf8,0x4,0x6,0xc,0x5,0xb]

fileprivate func hiddenMake(my num: UInt8) -> UInt8 {
    let value = Int(num) + 105
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let str_clearData:[UInt8] = [0x29,0x65,0x75,0x72,0x74,0x28,0x73,0x75,0x74,0x61,0x74,0x53,0x74,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x4e,0x6d,0x65,0x74,0x73,0x79,0x53,0x74,0x65,0x67]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let str_normalName:[UInt8] = [0x29,0x65,0x73,0x6c,0x61,0x66,0x28,0x73,0x75,0x74,0x61,0x74,0x53,0x74,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x4e,0x6d,0x65,0x74,0x73,0x79,0x53,0x74,0x65,0x67]

/*: "mfBean" :*/
fileprivate let str_viewName:[UInt8] = [0x5e,0x55,0x71,0x56,0x52,0x5d]

private func defenseLaboratory(white num: UInt8) -> UInt8 {
    return num ^ 51
}

/*: "%.2f" :*/
fileprivate let str_selectedName:[Character] = ["%",".","2","f"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignReactiveCompatible+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let kLet_rejectValue = NSNotification.Name(rawValue: String(bytes: str_imageName.map{pageActualPop(table: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension SignReactiveCompatible {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func stateMessage(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = ModelVolumeTableConvertible(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.funcSender(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            hideRequire()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            ware(productId: json[(String(str_fullContent))].stringValue, source: json[(str_unprecedentedText.replacingOccurrences(of: "view", with: "so"))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(String(str_todayData))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_useContent = kLet_limitStatusValue
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(String(str_todayData))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                kLet_useContent = kLet_limitStatusValue
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            skirt(type: json[(String(str_todayData))].stringValue, productId: json[(String(str_fullContent))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            addMethod(title: json[(str_countWrapData.replacingOccurrences(of: "add", with: "i"))].stringValue, url: json[(String(str_frameValue))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payType: "Other")
            plainspoken(price: Double(json[(str_iconName.lowercased())].stringValue) ?? 0, payType: (String(str_modelManagerText.prefix(5))))

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            giftShow(show: json[(String(str_acrossContent))].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            tourl(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: IconThen.getCustomerServiceID())
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: IconThen.motivation())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(str_cancelVideoData.replacingOccurrences(of: "to", with: "t"))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: LeadingEqualReactiveCompatible.share.func__pushToSubscribePageWebVC()
                LeadingEqualReactiveCompatible.share.numberimateVc()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = MyEditProfilesVC()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                markMessage()
            //: case 4:
            case 4: /// 发布动态页面
                //: selectTabBarItem(ofType: TabBarItemType.Moment)
                assignInsideTypeTotaleraction(ofType: SubmitNumeric.Moment)

                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: kLet_halfName,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: selectTabBarItem(ofType: TabBarItemType.Account)
                assignInsideTypeTotaleraction(ofType: SubmitNumeric.Account)
            //: case 6:
            case 6: /// 首页
                //: selectTabBarItem(ofType: TabBarItemType.Social)
                assignInsideTypeTotaleraction(ofType: SubmitNumeric.Social)
            //: case 7:
            case 7: /// 消息列表页
                //: selectTabBarItem(ofType: TabBarItemType.Message)
                assignInsideTypeTotaleraction(ofType: SubmitNumeric.Message)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = ComeUpToViewController()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: selectTabBarItem(ofType: TabBarItemType.Moment)
                assignInsideTypeTotaleraction(ofType: SubmitNumeric.Moment)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(String(str_todayData))].intValue
            //: changeNotifaStatus(type: type)
            ordination(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            playPoint()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            self.json(eventName: json[(String(str_firstArrayData) + String(str_positionName))].stringValue, jsonStr: json[(str_endTitle.replacingOccurrences(of: "lab", with: "j") + String(str_blackValue.prefix(4)) + "tring")].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            changeWith(coin: json[(str_putData.replacingOccurrences(of: "transform", with: "oi"))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            equalPackage()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            magnitudeDoingeBalance()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            CustomThen.adRequest { _, _, _ in
                //: if WithAdministratorAppManager.share.loginUserMode.jumpType == 1 {
                if WithAdministratorAppManager.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.funcSender(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: LeadingEqualReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: false)
                        LeadingEqualReactiveCompatible.share.gameShove(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: json[(str_interactionTheWantTitle.replacingOccurrences(of: "lab", with: "d"))].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            LeadingEqualReactiveCompatible.share.bindDownFrom(uid: json[(str_interactionTheWantTitle.replacingOccurrences(of: "lab", with: "d"))].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: LeadingEqualReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            LeadingEqualReactiveCompatible.share.messageOf(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.funcSender(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            comeEnable(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(str_buttonValue)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func skirt(type _: String, productId: String, payType: QuantityRelationType) {
        //: applePay(productId: productId, payType: payType)
        ware(productId: productId, payType: payType)
    }

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func ware(productId: String, source: Int = -1, payType: QuantityRelationType) {
        //: if WithAdministratorAppManager.share.loginUid.isEmptyString {
        if WithAdministratorAppManager.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: FirebaseAnalyticsManager.share.logEvent(name: "PurchaseClick")
        CombinationReactiveCompatible.share.dataConverterParameters(name: (String(str_coverData.prefix(7)) + String(str_collectValueContent.prefix(6))))

        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { type, reportMoney in
        MBankManagerTransactionObserver.shared.getDownThroughTabulaRasa(productId: productId, payType: payType, source: index) { type, reportMoney in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch type {
                switch type {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    StandardProgressHUD.slot(String(bytes: str_playIconValue.reversed(), encoding: .utf8)!.localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney)
                    marginalCost(price: reportMoney)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: refreshCoin(price: reportMoney, payType: "Apple")
                    plainspoken(price: reportMoney, payType: (String(str_sendName.suffix(5))))
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(type.rawValue)")
                    printLog(message: (String(str_stageValue.prefix(4)) + "ple支\u{4ed8}充值失" + str_warningText.replacingOccurrences(of: "status", with: "败")) + "\(type.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func addMethod(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = RoomThen()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.equalRgba(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(saveWant), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(String(str_frameValue)): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func saveWant(button: RoomThen) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(String(str_frameValue))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        nonevent()
    }

    /// 退出登录
    //: private func needLogin() {
    private func hideRequire() {
        //: guard Int(WithAdministratorAppManager.share.loginUid) ?? 0 > 0 else {
        guard Int(WithAdministratorAppManager.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: kLet_useTitle,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果 支付/订阅 成功验证通过
    /// - Parameter price: 充值金额
    //: func appleIAPVeritySucceed(price: Double) {
    func marginalCost(price: Double) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(str_shareName.suffix(6)) + String(str_micAppValue) + String(str_eventTitle))) { _, _ in
        }
        //: refreshCoin(price: price, payType: "Apple")
        plainspoken(price: price, payType: (String(str_sendName.suffix(5))))
    }

    /// 支付/订阅 成功刷新个人信息【apple/paypal】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 类型
    //: private func refreshCoin(price: Double, payType: String) {
    private func plainspoken(price: Double, payType: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_turnQuantityimateContent, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_countGiftFailureData, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_systemValue, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_greetData, object: nil)

        // 成功埋点
        //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
        ViewIndexReactiveCompatible.share.sign(price: price, currency: (str_iconValue.replacingOccurrences(of: "model", with: "U")))
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payType, price: price, currency: "USD")
        CombinationReactiveCompatible.share.makeCollisionCourse(payType: payType, price: price, currency: (str_iconValue.replacingOccurrences(of: "model", with: "U")))

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if kLet_useContent.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            kLet_voiceText.workingPapers(eventID: kLet_useContent, parameterStr: [String(bytes: str_colorData.map{hiddenMake(my: $0)}, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_rejectValue, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func giftShow(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func markMessage() {
        //: if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isSuccessed.rawValue {
            //: return
            return
                //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.unknown.rawValue {
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
            //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = CommensurateViewController()
            //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LeadingEqualReactiveCompatible.share.getEqualVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
        }
    }

    /// 根据TabBarItemType切换底部TabBar
    //: private func selectTabBarItem(ofType targetType: TabBarItemType) {
    private func assignInsideTypeTotaleraction(ofType targetType: SubmitNumeric) {
        //: guard let rootVC = IconThen.getWindow().rootViewController as? TalkingTabBarViewController else { return }
        guard let rootVC = IconThen.getBind().rootViewController as? WithControllerDelegate else { return }
        //: let tabBarContentTypes = rootVC.tabBarConentTypes()
        let tabBarContentTypes = rootVC.closeAction()
        //: for (index, item) in tabBarContentTypes.enumerated() {
        for (index, item) in tabBarContentTypes.enumerated() {
            //: if let itemType = item as? TabBarItemType, itemType == targetType {
            if let itemType = item as? SubmitNumeric, itemType == targetType {
                //: let vc = self.tabBarController?.viewControllers?[index]
                let vc = self.tabBarController?.viewControllers?[index]
                //: self.tabBarController?.tabBar.isHidden = false
                self.tabBarController?.tabBar.isHidden = false
                //: self.tabBarController?.selectedIndex = index
                self.tabBarController?.selectedIndex = index
                //: self.tabBarController?.selectedViewController = vc
                self.tabBarController?.selectedViewController = vc
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: return
                return
            }
        }
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func ordination(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            CustomThen.counternalRepresentationData { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            CustomThen.adRequest { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            LaissezPasserThen.beneath { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: str_clearData.reversed(), encoding: .utf8)! : String(bytes: str_normalName.reversed(), encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func playPoint() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        CustomThen.adRequest { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if SectionPushListener.cover().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_conversationName, object: nil, userInfo: [String(bytes: str_viewName.map{defenseLaboratory(white: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func changeWith(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            CustomThen.vanguard { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(WithAdministratorAppManager.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(WithAdministratorAppManager.share.loginUserMode.mf_coin)! + value
            //: WithAdministratorAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            WithAdministratorAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func equalPackage() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_sizeSaltTitle, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func json(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        kLet_voiceText.quantityingTime(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func magnitudeDoingeBalance() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
