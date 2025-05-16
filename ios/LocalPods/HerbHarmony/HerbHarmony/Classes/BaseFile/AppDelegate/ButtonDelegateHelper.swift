
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let str_ofName:String = "www.head make at"
fileprivate let str_makeMessageShareValue:String = "self white any height share.com"

/*: "后台播放音乐模式异常:  :*/
fileprivate let str_sizeTitle:[Character] = ["后","台","\u{64ad}","\u{653e}","\u{97f3}","乐","模","式","\u{5f02}","常",":"," "]

/*: ." :*/
fileprivate let str_labData:[Character] = ["."]

/*: "key_uid" :*/
fileprivate let str_burnChangeName:String = "me room whitekey_uid"

/*: "Reachable via WiFi" :*/
fileprivate let str_pathTitle:String = "screen videoReacha"
fileprivate let str_numberName:String = "a WiFito var app self length"

/*: "Reachable via Cellular" :*/
fileprivate let str_rawValue:String = "Reachamodel var"
fileprivate let str_menuValue:String = "for user than array lista Cellul"
fileprivate let str_contentName:[Character] = ["a","r"]

/*: "Current network unavailable" :*/
fileprivate let str_centerBurnTitle:String = "Currenlet model request text"
fileprivate let str_tagBlockData:String = "work unguard value edit effect intimate"
fileprivate let str_normalData:[Character] = ["a"]
fileprivate let str_labContent:String = "vofil"

/*: "Network none" :*/
fileprivate let str_makeContent:String = "Networbar direction"
fileprivate let str_conditionValue:String = "reply"

/*: "call_response_bgm" :*/
fileprivate let str_upValue:String = "call_model self content location title"
fileprivate let str_socialValue:String = "nse_bgmmode true text"

/*: "Error playing BMG audio:  :*/
fileprivate let str_showData:[Character] = ["E","r","r","o","r"," ","p","l","a","y","i","n","g"]
fileprivate let str_thinkValue:[Character] = [" ","B","M","G"]
fileprivate let str_exceptionData:String = "range by import action in audio: "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonDelegateHelper.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import UIKit
import UIKit

//: import WebKit
import WebKit

//: import AVFAudio
import AVFAudio

//: import FirebaseCrashlytics
import FirebaseCrashlytics

//: public class AppDelegateHelper: NSObject {
public class ButtonDelegateHelper: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(str_ofName.prefix(4)) + "apple" + String(str_makeMessageShareValue.suffix(4))))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: static let shared = AppDelegateHelper()
    static let shared = ButtonDelegateHelper()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = PrincipalViewController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(removeIn),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: kLet_messageData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension ButtonDelegateHelper {
    //: class func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    class func publicTransportWindow(_ application: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        ButtonDelegateHelper.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        DoingAddrTool.share.jab()
        //: AppDelegateHelper.shared.installNotificationObservers()
        ButtonDelegateHelper.shared.bowlerDetect()
        //: AppDelegateHelper.shared.initGetCache()
        ButtonDelegateHelper.shared.rangeCache()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        DoingAddrTool.share.technicality()
        //: AppDelegateHelper.shared.currApplication = application
        ButtonDelegateHelper.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            QueryThen.bringInstance(msg: (String(str_sizeTitle)) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func objectTap(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        ButtonDelegateHelper.shared.fromRangePath()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func willOff(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        ButtonDelegateHelper.shared.playArray()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        ButtonDelegateHelper.shared.dutyTag()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func imageMessageActive(_ application: UIApplication) {
        //: let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
        let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func stopLevel(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func largesse(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        ButtonDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func rangeCache() {
        //: WithAdministratorAppManager.share.func__checkAppConfigModeNeedUpdate()
        WithAdministratorAppManager.share.subCell()
        //: WithAdministratorAppManager.share.func__loadCurrentLoginInfoData()
        WithAdministratorAppManager.share.contents()
    }

    //: @objc private func initRootController() {
    @objc private func removeIn() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            ButtonDelegateHelper.shared.upAdd(currApplication!)
        }
        //: WithAdministratorAppManager.share.func__listenRequestHasInit()
        WithAdministratorAppManager.share.pastModelFirst()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (kLet_dismissData.string(forKey: kLet_userValue)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            elementController()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(WithAdministratorAppManager.share.loginUid)
            Crashlytics.crashlytics().setUserID(WithAdministratorAppManager.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(WithAdministratorAppManager.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(WithAdministratorAppManager.share.loginUid, forKey: (String(str_burnChangeName.suffix(7))))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            MBankManagerTransactionObserver.shared.customDisplay()
            //: WithAdministratorAppManager.share.request_HasInit = false
            WithAdministratorAppManager.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            SumReactiveCompatible.share.isTotal(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            CustomThen.pane()
            //: } else {
        } else {
            //: if WithAdministratorAppManager.share.loginSessionId.count > 0 {
            if WithAdministratorAppManager.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                CellReactiveCompatible.pair { _ in
                }
                //: WithAdministratorAppManager.share.func__cleanPrevLoginData()
                WithAdministratorAppManager.share.inherit()
            }
            //: func__setupLoginViewController()
            cypherController()
            //: WithAdministratorAppManager.share.request_HasInit = true
            WithAdministratorAppManager.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func elementController() {
        //: func__setupRootViewController(type: .Taking)
        sharedUp(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func cypherController() {
        //: func__setupRootViewController(type: .Login)
        sharedUp(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func sharedUp(type: CellViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            deleteToChild(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.deleteToChild(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func deleteToChild(type: CellViewType) {
        //: if checkRootTarBarController(type: type) {
        if openType(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = WithControllerDelegate(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func openType(type: CellViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is WithControllerDelegate {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? WithControllerDelegate {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func bowlerDetect() {
        // 网络状态监听
        //: WithAdministratorAppManager.share.startNotifierNetwork()
        WithAdministratorAppManager.share.assault()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(confirmView(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(kLet_tableScreenName)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                TotaleractionManager.shared.rawDatabase()
                //: self.func__setupTakingViewController()
                self.elementController()
                //: WithAdministratorAppManager.share.func__UserLoginChanged(isLogin: true)
                WithAdministratorAppManager.share.moreTo(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(WithAdministratorAppManager.share.loginUid)
                Crashlytics.crashlytics().setUserID(WithAdministratorAppManager.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(WithAdministratorAppManager.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(WithAdministratorAppManager.share.loginUid, forKey: (String(str_burnChangeName.suffix(7))))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                MBankManagerTransactionObserver.shared.customDisplay()
                //: if !WithAdministratorAppManager.share.request_HasInit {
                if !WithAdministratorAppManager.share.request_HasInit {
                    //: WithAdministratorAppManager.share.request_HasInit = true
                    WithAdministratorAppManager.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                CustomThen.pane()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(kLet_useTitle)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: WithAdministratorAppManager.share.func__UserLoginChanged(isLogin: false)
                WithAdministratorAppManager.share.moreTo(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                DataSocketDelegate.shared.approximateMatchOut(userLoginOut: true)
                //: TalkingLocationManager.destroy()
                WithReactiveCompatible.enterDoing()
                //: self.func__setupLoginViewController()
                self.cypherController()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (ShouldKingfisherCompatible.shared as! ShouldKingfisherCompatible).toImage()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(kLet_turnQuantityimateContent)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                CustomThen.adRequest { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_nameData, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func confirmView(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(str_pathTitle.suffix(6)) + "ble vi" + String(str_numberName.prefix(6))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(str_rawValue.prefix(6)) + "ble vi" + String(str_menuValue.suffix(8)) + String(str_contentName)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            atShow(showMsg: (String(str_centerBurnTitle.prefix(6)) + "t net" + String(str_tagBlockData.prefix(7)) + String(str_normalData) + str_labContent.replacingOccurrences(of: "of", with: "a") + "able").localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(str_makeContent.prefix(6)) + "k non" + str_conditionValue.replacingOccurrences(of: "reply", with: "e")))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func fromRangePath() {
        //: checkAndEndBackgroundTask()
        dutyTag()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.dutyTag()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func dutyTag() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func sizeBgm() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = DigitiserReactiveCompatible.default.postType(name: (String(str_upValue.prefix(5)) + "respo" + String(str_socialValue.prefix(7))))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            overBlock()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(str_showData) + String(str_thinkValue) + String(str_exceptionData.suffix(8))) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func playArray() {
        //: stopSystemVibrate()
        constraintFor()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func overBlock() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func constraintFor() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
