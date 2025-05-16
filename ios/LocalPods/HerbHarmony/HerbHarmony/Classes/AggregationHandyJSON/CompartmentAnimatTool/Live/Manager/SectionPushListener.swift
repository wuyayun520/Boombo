
//: Declare String Begin

/*: "LIVE_NEED_OPEN_NOTIFICATION" :*/
fileprivate let str_awakeData:[Character] = ["L","I","V","E","_","N","E","E","D","_","O"]
fileprivate let str_modelGestureValue:String = "last area for other roomPEN_"
fileprivate let str_deviceData:[Character] = ["C","A","T","I","O","N"]

/*: "LIVE_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let str_modelText:[UInt8] = [0xfd,0xf8,0xe7,0xf4,0xee,0xe2,0xe5,0xf0,0xe5,0xe4,0xe2,0xee,0xf2,0xf9,0xf0,0xff,0xf6,0xf4,0xee,0xff,0xfe,0xe5,0xf8,0xf7,0xf8,0xf2,0xf0,0xe5,0xf8,0xfe,0xff]

private func currentView(sub num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "live/startCheck" :*/
fileprivate let str_playerName:String = "live/value label sense object succeed"
fileprivate let str_countValue:String = "frame error accept selftChec"
fileprivate let str_maxName:String = "kind"

/*: "live/start" :*/
fileprivate let str_viewText:[Character] = ["l","i","v","e","/","s","t","a","r","t"]

/*: "live/stop" :*/
fileprivate let str_clearTableTaskName:[Character] = ["l","i","v","e","/","s","t","o","p"]

/*: "type" :*/
fileprivate let str_imageName:[UInt8] = [0x4c,0x41,0x48,0x5d]

private func deviceUserVar(content num: UInt8) -> UInt8 {
    return num ^ 56
}

/*: "mf/user/dataCard" :*/
fileprivate let str_socialData:[Character] = ["m","f","/","u","s","e","r","/","d","a","t","a","C","a","r","d"]

/*: "uid" :*/
fileprivate let str_styleText:[UInt8] = [0x45,0x59,0x54]

/*: "streamerUid" :*/
fileprivate let str_viewValue:[UInt8] = [0x28,0x2f,0x29,0x3e,0x3a,0x36,0x3e,0x29,0xe,0x32,0x3f]

private func indexModel(content num: UInt8) -> UInt8 {
    return num ^ 91
}

/*: "roomId" :*/
fileprivate let str_showTitle:String = "user pathroomId"

/*: "Try again later, if you have any questions please contact customer service" :*/
fileprivate let str_liveValue:[UInt8] = [0x9a,0xbc,0xb7,0xee,0xaf,0xa9,0xaf,0xa7,0xa0,0xee,0xa2,0xaf,0xba,0xab,0xbc,0xe2,0xee,0xa7,0xa8,0xee,0xb7,0xa1,0xbb,0xee,0xa6,0xaf,0xb8,0xab,0xee,0xaf,0xa0,0xb7,0xee,0xbf,0xbb,0xab,0xbd,0xba,0xa7,0xa1,0xa0,0xbd,0xee,0xbe,0xa2,0xab,0xaf,0xbd,0xab,0xee,0xad,0xa1,0xa0,0xba,0xaf,0xad,0xba,0xee,0xad,0xbb,0xbd,0xba,0xa1,0xa3,0xab,0xbc,0xee,0xbd,0xab,0xbc,0xb8,0xa7,0xad,0xab]

private func typeLive(look num: UInt8) -> UInt8 {
    return num ^ 206
}

/*: "redirectUrl" :*/
fileprivate let str_managerLevelName:String = "colored"
fileprivate let str_addData:String = "irresultc"

/*: "livePushUrl" :*/
fileprivate let str_indexData:String = "livePuonline type"
fileprivate let str_mText:String = "shUrltitle string"

/*: "FaceActionEvent_Interval_1_second" :*/
fileprivate let str_toLoadValue:[UInt8] = [0x92,0xb5,0xb7,0xb1,0x95,0xb7,0xa0,0xbd,0xbb,0xba,0x91,0xa2,0xb1,0xba,0xa0,0x8b,0x9d,0xba,0xa0,0xb1,0xa6,0xa2,0xb5,0xb8,0x8b,0xe5,0x8b,0xa7,0xb1,0xb7,0xbb,0xba,0xb0]

private func frameUp(data num: UInt8) -> UInt8 {
    return num ^ 212
}

/*: "hasFace" :*/
fileprivate let str_rangeTitle:String = "class text view make collectionhasFace"

/*: "Opening failed" :*/
fileprivate let str_countData:String = "action hidden bookOpen"
fileprivate let str_directionData:String = "linfod"

/*: "LIVE 状态码： :*/
fileprivate let str_managerValue:[Character] = ["L","I","V","E"," ","状","\u{6001}","\u{7801}"]
fileprivate let str_contentValue:[Character] = ["："]

/*: ." :*/
fileprivate let str_infoValue:String = "icon"

/*: "Network busy!" :*/
fileprivate let str_resultConversationValue:String = "Networhome call"

/*: "LIVE 异常下播，evtID: :*/
fileprivate let str_makeTitle:[Character] = ["L","I","V","E"," ","异","常","下","播"]
fileprivate let str_handleExtentName:String = "，evtID:to true label image"

/*: "Live room exception" :*/
fileprivate let str_videoValue:String = "self content view textLive "
fileprivate let str_layerContent:String = "view tryroom e"
fileprivate let str_addFrameName:String = "xctouchption"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SectionPushListener.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

// 是否需要恢复直播
//: public var NEED_RESTORE_LIVE = false
public var kLet_userName = false
// 唤起直播功能
//: public let LIVE_NEED_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_NEED_OPEN_NOTIFICATION")
public let kLet_timeValue = NSNotification.Name(rawValue: (String(str_awakeData) + String(str_modelGestureValue.suffix(4)) + "NOTIFI" + String(str_deviceData)))
// 直播状态变更通知
//: public let LIVE_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_STATUS_CHANGE_NOTIFICATION")
public let kLet_replaceName = NSNotification.Name(rawValue: String(bytes: str_modelText.map{currentView(sub: $0)}, encoding: .utf8)!)

/// 直播渲染配置
//: class TalkingLiveConfig: NSObject {
class PriceThen: NSObject {
    //: var livePushUrl = ""                 // 推流地址
    var livePushUrl = "" // 推流地址
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isMute = false
    var isMute = false // 是否静音
    //: var isRequest = false
    var isRequest = false // 正在请求中（防止多次调用）
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
}

//: class TalkingLiveManager: NSObject {
class SectionPushListener: NSObject {
    // 直播间消息
    //: var liveRoomModel = TalkingLiveRoomModel()
    var liveRoomModel = ShowHandyJSON()
    // 是否正在直播中（状态变更时发送通知）
    //: private(set) var isLive: Bool = false {
    private(set) var isLive: Bool = false {
        //: didSet {
        didSet {
            //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
                //: NotificationCenter.default.post(name: LIVE_STATUS_CHANGE_NOTIFICATION, object: self)
                NotificationCenter.default.post(name: kLet_replaceName, object: self)
            }
        }
    }

    // TXLive
    //: var config = TalkingLiveConfig()
    var config = PriceThen() // 直播渲染配置类
    //: private weak var renderLiveView: UIView?
    private weak var renderLiveView: UIView? // 直播视图视频源
    //: private var localPreviewView: TalkingTRTCVideoView?
    private var localPreviewView: EnableViewDelegete? // 本地预览view（使用商汤美颜）
    //: private static var _instance: TalkingLiveManager?
    private static var _instance: SectionPushListener? // singleton

    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingLiveManager {
    class func cover() -> SectionPushListener {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLiveManager()
            _instance = SectionPushListener()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func roundData() {
        //: if TalkingLiveManager._instance != nil {
        if SectionPushListener._instance != nil {
            //: TalkingLiveManager._instance = nil
            SectionPushListener._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 直播小窗口悬浮窗
    //: private lazy var liveMiniView: TalkingLiveMiniView = {
    private lazy var liveMiniView: TalkingStartOrientationMiniView = {
        //: let mini = TalkingLiveMiniView.buildLiveMiniView()
        let mini = TalkingStartOrientationMiniView.viewOf()
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 进入直播间
            //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
            self.telecasting(self.liveRoomVC.renderView, smallWindow: false)
            //: guard let currentVC = self.currentViewController() else { return }
            guard let currentVC = self.actionController() else { return }
            // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
            //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
            if currentVC.isKind(of: ClassTipsProtocol.self) {
                //: if var vcArr = currentVC.navigationController?.viewControllers {
                if var vcArr = currentVC.navigationController?.viewControllers {
                    //: vcArr.removeLast()
                    vcArr.removeLast()
                    //: vcArr.append(self.liveRoomVC)
                    vcArr.append(self.liveRoomVC)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
                //: } else {
            } else {
                //: currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
            }
        }
        //: return mini
        return mini
        //: }()
    }()

    // 直播控制器
    //: private lazy var liveRoomVC: TalkingLiveBeautifyViewController = {
    private lazy var liveRoomVC: ManagerClickViewController = {
        //: let vc = TalkingLiveBeautifyViewController()
        let vc = ManagerClickViewController()
        //: return vc
        return vc
        //: }()
    }()

    // 检测无人脸弹窗
    //: private lazy var noFaceAlert: TalkingLiveAlertView = {
    private lazy var noFaceAlert: ShouldThen = //: return ShouldThen(frame: .zero, type: .noFace)
        .init(frame: .zero, type: .noFace)
    //: }()

    // 直播推流对象
    //: private lazy var livePusher: TXLivePush = {
    private lazy var livePusher: TXLivePush = {
        //: let pushConfig = TXLivePushConfig()
        let pushConfig = TXLivePushConfig()
        //: pushConfig.frontCamera = self.config.frontCamera
        pushConfig.frontCamera = self.config.frontCamera
        //: pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        // 标清
        //: let pusher = TXLivePush(config: pushConfig)
        let pusher = TXLivePush(config: pushConfig)
        //: pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
        pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
                                //: adjustBitrate: true,
                                adjustBitrate: true,
                                //: adjustResolution: false)
                                adjustResolution: false)
        //: return pusher!
        return pusher!
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// 检测是否被禁用“开播功能”
    //: class func req_liveStartCheck(completion: @escaping FinishBlock) {
    class func intervalimate(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/startCheck"
        reqModel.requestPath = (String(str_playerName.prefix(5)) + "star" + String(str_countValue.suffix(5)) + str_maxName.replacingOccurrences(of: "kind", with: "k"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开启直播
    //: class func req_liveStart(completion: @escaping FinishBlock) {
    class func tableCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/start"
        reqModel.requestPath = (String(str_viewText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 停止直播
    /// - Parameters:
    ///   - type: 停播类型：1=主动终止；2=没有人脸；3=通话中断
    ///   - completion: 回调
    //: class func req_liveStop(type: Int, completion: FinishBlock? = nil) {
    class func labOpen(type: Int, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/stop"
        reqModel.requestPath = (String(str_clearTableTaskName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: str_imageName.map{deviceUserVar(content: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// - Parameters:
    ///  - uid: 卡片用户id
    ///   - streamerUid: 主播id
    //: class func req__userCardInfo(uid: String, streamerUid: String, roomId: String? = nil , completion: @escaping FinishBlock) {
    class func showCompletion(uid: String, streamerUid: String, roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/dataCard"
        reqModel.requestPath = (String(str_socialData))
        //: var params = ["uid": uid, "streamerUid": streamerUid]
        var params = [String(bytes: str_styleText.map{$0^48}, encoding: .utf8)!: uid, String(bytes: str_viewValue.map{indexModel(content: $0)}, encoding: .utf8)!: streamerUid]
        //: if let roomId = roomId {
        if let roomId = roomId {
            //: params["roomId"] = roomId
            params[(String(str_showTitle.suffix(6)))] = roomId
        }
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - 权限检测，通过后开启直播

//: extension TalkingLiveManager {
extension SectionPushListener {
    // 检测直播状态，未开播时打开直播
    //: func checkLiveAuthAndTurnOn(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    func talkHandler(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard self.isLive == false else { return }
        guard self.isLive == false else { return }
        //: guard self.config.isRequest == false else { return }
        guard self.config.isRequest == false else { return }
        //: self.config.isRequest = true
        self.config.isRequest = true

        // 1. 商汤美颜
        //: guard SenseTime_Use == true else {
        guard kLet_tabTitle == true else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Try again later, if you have any questions please contact customer service".localized)
            self.atShow(showMsg: String(bytes: str_liveValue.map{typeLive(look: $0)}, encoding: .utf8)!.localized)
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: return
            return
        }

        // 2. 权限检测
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        LaissezPasserThen.polaroidCameraMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.atShow(showMsg: kLet_viewData)
                //: self.config.isRequest = false
                self.config.isRequest = false
                //: completionHandler?(false)
                completionHandler?(false)
                //: return
                return
            }
            // 3. 接口是否禁播检测
            //: TalkingLiveManager.req_liveStartCheck { succeed, result, errorModel in
            SectionPushListener.intervalimate { succeed, result, errorModel in
                //: guard succeed else {
                guard succeed else {
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? Dictionary<String, Any> {
                        if let result = result as? [String: Any] {
                            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            LeadingEqualReactiveCompatible.share.loadWith(urlStr: result[(str_managerLevelName.replacingOccurrences(of: "color", with: "r") + str_addData.replacingOccurrences(of: "result", with: "e") + "tUrl")] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.atShow(showMsg: errorModel!.errorMsg)
                    }
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }
                // 4. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DataSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.atShow(showMsg: kLet_keyTitle)
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }

                // 校验成功，开启直播
                //: completionHandler?(true)
                completionHandler?(true)
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())

                // 进入直播间
                //: self.currentViewController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                self.actionController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                //: self.live_createRoomAndStartPush(livePushUrl: json["livePushUrl"].stringValue)
                self.atPress(livePushUrl: json[(String(str_indexData.prefix(6)) + String(str_mText.prefix(5)))].stringValue)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// 展示直播违规弹窗
    //: static func live_showWarningView(content: String, reason: String, time: String) {
    static func alarmismChannel(content: String, reason: String, time: String) {
        //: let alert = TalkingLiveWarningView()
        let alert = DoingFrameThen()
        //: alert.refreshUI(content: content, reason: reason, time: time)
        alert.activity(content: content, reason: reason, time: time)
        //: alert.show()
        alert.offLocal()
    }

    /// 释放资源
    //: func live_releaseAllResource() {
    func toResource() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isLive = false
            self.isLive = false
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.removeObserver(self) // 移除通知
            //: TalkingSocketManager.shared.endLivePing()
            DataSocketDelegate.shared.draftCopyPing() // 结束心跳包
            //: self.liveMiniView.removeFromSuperview()
            self.liveMiniView.removeFromSuperview() // 移除小窗口
            //: self.liveRoomVC.popCurrentViewController()
            self.liveRoomVC.countMessageNewPopCuttingEdge() // 将直播视图从栈中移除
            //: self.destoryTXLiveView()
            self.destoryPageDomainPerspectivePath()
            // 释放单例
            //: TalkingLiveManager.destroy()
            SectionPushListener.roundData()
            // 销毁弹幕
            //: TalkingDanmuManager.danmu_releaseAllResource()
            SumeractionReactiveCompatible.oddmentState()
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ShouldKingfisherCompatible.shared as! ShouldKingfisherCompatible).femaleSection()
        }
    }

    /// 创建视频通话房间开始推流
    /// - Parameter livePushUrl: 推流地址
    //: func live_createRoomAndStartPush(livePushUrl: String) {
    func atPress(livePushUrl: String) {
        //: self.config.livePushUrl = livePushUrl
        self.config.livePushUrl = livePushUrl

        // 创建预览画面，开始直播（默认大屏）
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
        self.telecasting(self.liveRoomVC.renderView, smallWindow: false)
        //: self.live_startPush(livePushUrl: livePushUrl)
        self.crop(livePushUrl: livePushUrl)
    }

    /// 更新tx直播画面
    /// - Parameters:
    ///   - randerView: 渲染视图（默认为小窗口）
    ///   - smallWindow: 是否小窗口
    //: func live_updateTXLivePreview(_ randerView: UIView? = nil, smallWindow: Bool) {
    func telecasting(_ randerView: UIView? = nil, smallWindow: Bool) {
        //: if randerView == nil {
        if randerView == nil {
            //: self.renderLiveView = self.liveMiniView.renderView
            self.renderLiveView = self.liveMiniView.renderView
            //: } else {
        } else {
            //: self.renderLiveView = randerView
            self.renderLiveView = randerView
        }

        //: self.liveMiniView.isHidden = !smallWindow
        self.liveMiniView.isHidden = !smallWindow
        //: self.config.isSmallMode = smallWindow
        self.config.isSmallMode = smallWindow
        // 清除小窗口未读消息标识
        //: if self.config.isSmallMode {
        if self.config.isSmallMode {
            //: updateUnredMessageCount(clear: true)
            quantityerruption(clear: true)
        }
        //: startTXLivePreview(smallWindow: smallWindow)
        draft(smallWindow: smallWindow)
    }

    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: func switchTRTCCamer(front: Bool) {
    func femaleBy(front: Bool) {
        //: guard self.config.frontCamera != front else { return }
        guard self.config.frontCamera != front else { return }
        //: self.config.frontCamera = front
        self.config.frontCamera = front

        //: guard SenseTime_Use == true else {
        guard kLet_tabTitle == true else {
            //: livePusher.switchCamera()
            livePusher.switchCamera()
            //: return
            return
        }

        //: self.localPreviewView?.switchTRTCCamer(isFront: front)
        self.localPreviewView?.televisionUp(isFront: front)
    }
}

// MARK: - 通知事件

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// 添加通知监听
    //: private func addNotifications() {
    private func contact() {
        // 监听是否捕获到人脸
        //: if SenseTime_Use == true {
        if kLet_tabTitle == true {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(catchFaceResultNotification(notification:)),
                                                   selector: #selector(aboveBorder(notification:)),
                                                   //: name: NSNotification.Name(rawValue: "FaceActionEvent_Interval_1_second"),
                                                   name: NSNotification.Name(rawValue: String(bytes: str_toLoadValue.map{frameUp(data: $0)}, encoding: .utf8)!),
                                                   //: object: nil)
                                                   object: nil)
        }

        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillTerminate),
                                               selector: #selector(television),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// 程序销毁时调用停播接口
    //: @objc private func appWillTerminate() {
    @objc private func television() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 1)
        SectionPushListener.labOpen(type: 1)
    }
}

// MARK: - 未读消息提醒标识

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// 更新未读消息数量
    /// - Parameter clear: 是否清空
    //: func updateUnredMessageCount(clear: Bool = false) {
    func quantityerruption(clear: Bool = false) {
        //: guard self.config.isSmallMode else { return }
        guard self.config.isSmallMode else { return }
        //: if clear {
        if clear {
            //: self.liveMiniView.msgCount = 0
            self.liveMiniView.msgCount = 0
            //: } else {
        } else {
            //: self.liveMiniView.msgCount += 1
            self.liveMiniView.msgCount += 1
        }
    }
}

// MARK: - 商汤人脸检测

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// 商汤美颜是否捕获到人脸通知（间隔1秒）
    //: @objc private func catchFaceResultNotification(notification: NSNotification) {
    @objc private func aboveBorder(notification: NSNotification) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard self.isLive == true else { return }
            guard self.isLive == true else { return }
            //: let userInfo = notification.userInfo as! [String: AnyObject]
            let userInfo = notification.userInfo as! [String: AnyObject]
            //: let hasFace = (userInfo["hasFace"] as! NSNumber).description.boolValue
            let hasFace = (userInfo[(String(str_rangeTitle.suffix(7)))] as! NSNumber).description.boolValue
            //: if hasFace == true {
            if hasFace == true {
                //: self.liveMiniView.noFaceTime = 0
                self.liveMiniView.noFaceTime = 0
                //: self.liveRoomVC.topView.noFaceTime = 0
                self.liveRoomVC.topView.noFaceTime = 0
                //: } else {
            } else {
                //: self.liveMiniView.noFaceTime += 1
                self.liveMiniView.noFaceTime += 1
                //: self.liveRoomVC.topView.noFaceTime += 1
                self.liveRoomVC.topView.noFaceTime += 1
            }
            // 连续X秒无人脸出现直接下播
            //: if self.liveMiniView.noFaceTime == MAX_NOFACETIME {
            if self.liveMiniView.noFaceTime == kLet_homeData {
                //: self.interval_noFace()
                self.pack()
            }
            // 开启超时检测（防止直播时长时间后台、锁屏）
            //: self.interval_cancelPreviousPerformRequest()
            self.seekTime()
            //: self.interval_startPerformRequest()
            self.performRequest()
        }
    }

    /// 开启超时检测（防止直播时长时间后台、锁屏）
    //: private func interval_startPerformRequest() {
    private func performRequest() {
        //: self.perform(#selector(interval_noFace), with: nil, afterDelay: 30)
        self.perform(#selector(pack), with: nil, afterDelay: 30)
    }

    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func seekTime() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_noFace),
                                               selector: #selector(pack),
                                               //: object: nil)
                                               object: nil)
    }

    /// 未检测到人脸超过30秒
    //: @objc private func interval_noFace() {
    @objc private func pack() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 2)
        SectionPushListener.labOpen(type: 2)
        //: self.live_releaseAllResource()
        self.toResource()
        //: self.noFaceAlert.show()
        self.noFaceAlert.afterwardCeremony()
    }
}

// MARK: - TX直播

//: extension TalkingLiveManager {
extension SectionPushListener {
    /// tx本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: private func startTXLivePreview(smallWindow: Bool) {
    private func draft(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard kLet_tabTitle == true else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)

            //: livePusher.startPreview(self.renderLiveView)
            livePusher.startPreview(self.renderLiveView)
            //: return
            return
        }

        //: if self.localPreviewView == nil {
        if self.localPreviewView == nil {
            //: self.localPreviewView = TalkingTRTCVideoView()
            self.localPreviewView = EnableViewDelegete()
        }
        //: self.localPreviewView?.startPreView(isSmallWindow: smallWindow, livePusher: livePusher)
        self.localPreviewView?.topTitle(isSmallWindow: smallWindow, livePusher: livePusher)
        //: if self.localPreviewView?.superview != self.renderLiveView {
        if self.localPreviewView?.superview != self.renderLiveView {
            //: self.localPreviewView?.removeFromSuperview()
            self.localPreviewView?.removeFromSuperview()
            //: self.renderLiveView?.addSubview(self.localPreviewView!)
            self.renderLiveView?.addSubview(self.localPreviewView!)
            //: self.localPreviewView?.snp.makeConstraints({ make in
            self.localPreviewView?.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
                //: })
            }
        }
    }

    /// 开始直播推流
    /// - Parameter livePushUrl: 推流地址
    //: private func live_startPush(livePushUrl: String) {
    private func crop(livePushUrl: String) {
        //: if SenseTime_Use {
        if kLet_tabTitle {
            //: } else {
        } else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)
        }

        //: livePusher.delegate = self
        livePusher.delegate = self
        //: livePusher.setMute(self.config.isMute)
        livePusher.setMute(self.config.isMute)
        //: let result = livePusher.start(livePushUrl)
        let result = livePusher.start(livePushUrl)
        //: onEnterRoom(Int(result))
        contentApp(Int(result))
    }

    /// 销毁tx直播
    //: private func destoryTXLiveView() {
    private func destoryPageDomainPerspectivePath() {
        //: if SenseTime_Use {
        if kLet_tabTitle {
            //: self.localPreviewView?.stopPreView()
            self.localPreviewView?.fee()
            //: } else {
        } else {
            //: self.livePusher.stopPreview()
            self.livePusher.stopPreview()
        }

        //: self.localPreviewView?.removeFromSuperview()
        self.localPreviewView?.removeFromSuperview()
        //: self.localPreviewView = nil
        self.localPreviewView = nil

        //: self.livePusher.stop()
        self.livePusher.stop()
    }

    /// 进入直播间，调用接口
    //: func onEnterRoom(_ result: Int) {
    func contentApp(_ result: Int) {
        //: guard result >= 0 else {
        guard result >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Opening failed".localized)
            self.atShow(showMsg: (String(str_countData.suffix(4)) + "ing fai" + str_directionData.replacingOccurrences(of: "info", with: "e")).localized)
            //: self.live_releaseAllResource()
            self.toResource()
            //: return
            return
        }

        // 加入房间成功，调用开播接口
        //: TalkingLiveManager.req_liveStart { succeed, result, errorModel in
        SectionPushListener.tableCompletion { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.live_releaseAllResource()
                self.toResource()
                //: return
                return
            }
            //: if let model = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) {
            if let model = ShowHandyJSON.deserialize(from: result as? Dictionary) {
                //: self.liveRoomModel = model
                self.liveRoomModel = model
            }
            // 加入弹幕
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            SumeractionReactiveCompatible.liveDownCompletion(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            // 开播成功
            //: self.isLive = true
            self.isLive = true
            //: self.liveMiniView.refreshMiniView()
            self.liveMiniView.sight()
            //: self.liveRoomVC.refreshLiveRoomView()
            self.liveRoomVC.enableTo()
            //: TalkingSocketManager.shared.startLivePing()
            DataSocketDelegate.shared.factoid()
            //: self.addNotifications()
            self.contact()
            // 销毁上传busy状态定时器
            //: (TalkingApplication.shared as! TalkingApplication).destroyTimer()
            (ShouldKingfisherCompatible.shared as! ShouldKingfisherCompatible).fullMoon()
        }
    }
}

// MARK: - TXLivePushListener

//: extension TalkingLiveManager: TXLivePushListener {
extension SectionPushListener: TXLivePushListener {
    //: func onPushEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPushEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: UploadLogTool.writeLog(msg: "LIVE 状态码：\(evtID).")
        QueryThen.bringInstance(msg: (String(str_managerValue) + String(str_contentValue)) + "\(evtID).")
        //: if evtID == PUSH_WARNING_NET_BUSY.rawValue {
        if evtID == PUSH_WARNING_NET_BUSY.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Network busy!".localized)
            self.atShow(showMsg: (String(str_resultConversationValue.prefix(6)) + "k busy!").localized)

            //: } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
        } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
            //: evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            //: evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            //: evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            //: evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            //: evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            //: evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            //: evtID == PUSH_ERR_SERVER_REFUSED.rawValue {
            evtID == PUSH_ERR_SERVER_REFUSED.rawValue
        {
            // 主播异常下播
            //: UploadLogTool.writeLog(msg: "LIVE 异常下播，evtID:\(evtID).")
            QueryThen.bringInstance(msg: (String(str_makeTitle) + String(str_handleExtentName.prefix(7))) + "\(evtID).")
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception".localized)
            self.atShow(showMsg: (String(str_videoValue.suffix(5)) + String(str_layerContent.suffix(6)) + str_addFrameName.replacingOccurrences(of: "touch", with: "e")).localized)
            //: TalkingLiveManager.req_liveStop(type: 1)
            SectionPushListener.labOpen(type: 1)
            //: live_releaseAllResource()
            toResource()
            // 重新开播弹窗
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: let alert = TalkingLiveAlertView(frame: .zero, type: .turnOnLive)
                let alert = ShouldThen(frame: .zero, type: .turnOnLive)
                //: alert.rightBlcok = {
                alert.rightBlcok = {
                    //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
                    SectionPushListener.cover().talkHandler()
                }
                //: alert.show()
                alert.afterwardCeremony()
            }
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}

    //: func onScreenCaptureStarted() {}
    func onScreenCaptureStarted() {}

    //: func onScreenCapturePaused(_ reason: Int32) {}
    func onScreenCapturePaused(_: Int32) {}

    //: func onScreenCaptureResumed(_ reason: Int32) {}
    func onScreenCaptureResumed(_: Int32) {}

    //: func onScreenCaptureStoped(_ reason: Int32) {}
    func onScreenCaptureStoped(_: Int32) {}
}
