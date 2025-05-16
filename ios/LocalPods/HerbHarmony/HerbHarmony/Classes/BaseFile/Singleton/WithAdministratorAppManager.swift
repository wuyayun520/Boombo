
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let str_toRangeValue:String = "valuePS"
fileprivate let str_logName:String = "ESSdataD"

/*: "UID" :*/
fileprivate let str_clickData:String = "uid"

/*: "Any" :*/
fileprivate let str_keyData:[Character] = ["A","n","y"]

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let str_managerCommentName:[UInt8] = [0xb,0x2d,0x3b,0x2c,0x1c,0x3f,0x2d,0x37,0x3d,0x17,0x30,0x38,0x31,0xd,0x3b,0x2a,0x2a,0x37,0x30,0x39,0x71,0x2b,0x2d,0x3b,0x2c,0xa,0x3f,0x39,0x70,0x34,0x2d,0x31,0x30]

private func elseCard(shared num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "获取数据" :*/
fileprivate let str_hiddenData:String = "获取数据"

/*: "json 解析失败" :*/
fileprivate let str_tableValue:String = "json 解析失\u{8d25}"

/*: "request_HasInit" :*/
fileprivate let str_tabValue:String = "requeobserver"
fileprivate let str_homeTitle:[Character] = ["s","I","n","i","t"]

/*: "Reachable via WiFi" :*/
fileprivate let str_equalTitle:String = "talk user to toReacha"
fileprivate let str_greetValue:[Character] = ["v","i","a"," ","W","i","F","i"]

/*: "Reachable via Cellular" :*/
fileprivate let str_topValue:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l"]
fileprivate let str_collectAddTitle:[Character] = ["a","r"]

/*: "Network not reachable" :*/
fileprivate let str_viewName:[Character] = ["N","e","t","w","o","r","k"," ","n","o","t"," ","r"]
fileprivate let str_dataContent:String = "EA"
fileprivate let str_upValue:String = "chnamele"

/*: "Not reachable" :*/
fileprivate let str_videoValue:[Character] = ["N","o"]
fileprivate let str_addContent:String = "t reaview self bubble to shove"

/*: "Unable to start notifier" :*/
fileprivate let str_giftName:String = "at error text burn selfUnabl"
fileprivate let str_voiceContent:String = "view event medium show title start"
fileprivate let str_positionPriceName:[Character] = [" ","n","o","t","i","f","i","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithAdministratorAppManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class WithAdministratorAppManager: NSObject {
public class WithAdministratorAppManager: NSObject {
    //: @objc static public let share = WithAdministratorAppManager()
    @objc public static let share = WithAdministratorAppManager()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = DeceasedPersonTransformable() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = ModelTransformable() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = DataInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = FromMeasurable() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: TextHashable = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return SectionFreckleTextConvertible.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return SectionFreckleTextConvertible.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: DoingAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (str_toRangeValue.replacingOccurrences(of: "value", with: "PH") + str_logName.replacingOccurrences(of: "data", with: "I")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: DoingAddrTool.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (str_clickData.uppercased()) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func campOut() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = DeceasedPersonTransformable()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        kLet_tableName = (String(str_keyData)).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        kLet_userLiveMarginValue = (String(str_keyData)).localized
    }
}

//: extension WithAdministratorAppManager {
extension WithAdministratorAppManager {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func moreTo(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(WithAdministratorAppManager.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            kLet_dismissData.set(WithAdministratorAppManager.share.loginUserMode.userID, forKey: kLet_userValue)
            //: } else {
        } else {
            //: EdificeV2Listener.shared.func__LogingOut()
            EdificeV2Listener.shared.upQuit()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            kLet_dismissData.removeObject(forKey: kLet_userValue)
            //: func__cleanPrevLoginData()
            inherit()
//            DoingAddrTool.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            SumReactiveCompatible.share.isTotal(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func subCell() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = kLet_dismissData.dictionary(forKey: kLet_statusScreenText)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<FromMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: WithAdministratorAppManager.share.appConfigMode = configModel
            WithAdministratorAppManager.share.appConfigMode = configModel
        }
        //: if let status = WithAdministratorAppManager.share.reachability?.connection, status != .unavailable {
        if let status = WithAdministratorAppManager.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            phoneMessage()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(program(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func phoneMessage() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        CustomThen.completionOf { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func contents() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = kLet_dismissData.dictionary(forKey: kLet_callData)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<DeceasedPersonTransformable>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func inherit() {
        //: func__reSet()
        campOut()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        kLet_dismissData.removeObject(forKey: kLet_callData)
//        let oldServerUrl: String = DoingAddrTool.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func milk() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.cachesList() + String(bytes: str_managerCommentName.map{elseCard(shared: $0)}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.jumpPath(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<BridgeMeasurable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (str_hiddenData.capitalized))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (str_tableValue))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func pastModelFirst() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (str_tabValue.replacingOccurrences(of: "observer", with: "s") + "t_Ha" + String(str_homeTitle)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    CustomThen.clickWith()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func assault() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(str_equalTitle.suffix(6)) + "ble " + String(str_greetValue)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(str_topValue) + String(str_collectAddTitle)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(str_viewName) + str_dataContent.lowercased() + str_upValue.replacingOccurrences(of: "name", with: "ab")))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(str_videoValue) + String(str_addContent.prefix(5)) + "chable"))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(str_giftName.suffix(5)) + "e to" + String(str_voiceContent.suffix(6)) + String(str_positionPriceName)))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func program(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            phoneMessage()
        }
    }
}
