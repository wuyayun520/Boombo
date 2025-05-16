
//: Declare String Begin

/*: "Speaker On" :*/
fileprivate let str_labData:String = "view makeSpeake"

/*: "Speaker Off" :*/
fileprivate let str_viewData:String = "Speakeself line"
fileprivate let str_moreEqualData:String = "r Offlet index true lab"

/*: "s- :*/
fileprivate let str_nameData:String = "s-commit temp var"

/*: - :*/
fileprivate let str_inputValue:[Character] = ["-"]

/*: "TRTC 音频通话销毁. logId： :*/
fileprivate let str_myName:String = "size file equal let extensionTRTC "
fileprivate let str_labStrikeTitle:[Character] = ["音","频","通","话"]
fileprivate let str_touchShowData:[Character] = ["销","毁","."," ","l","o","g","I","d","："]

/*: ." :*/
fileprivate let str_equalValue:String = "direction"

/*: "TRTC 音频通话错误. errCode: :*/
fileprivate let str_dataStopName:[Character] = ["T","R","T","C"," ","音","\u{9891}"]
fileprivate let str_scaleValue:String = "通话错误."

/*: , errMsg: :*/
fileprivate let str_imageTitle:[Character] = [","," ","e","r","r","M"]
fileprivate let str_keyTitle:String = "sg:pic user size"

/*: "TRTC 音频通话SDK收到警告. warningCode: :*/
fileprivate let str_usedValue:String = "TRTC 音true let"
fileprivate let str_mainMakeContent:String = "equal let return error videoK收到警告."
fileprivate let str_toTitle:String = "ndata"
fileprivate let str_showOutputText:String = "ngCode:with make return style succeed"

/*: , warningMsg: :*/
fileprivate let str_aspectText:[Character] = [","," ","w","a","r","n"]
fileprivate let str_titleValue:String = "IN"
fileprivate let str_skipText:String = "gMsg:call center user sex"

/*: "TRTC 音频通话进入房间. result: :*/
fileprivate let str_statusData:String = "image"
fileprivate let str_viewName:String = "RTC add name level"
fileprivate let str_textName:String = "\u{8fdb}\u{5165}房间"

/*: , logId： :*/
fileprivate let str_valueSizeName:String = ", logIcount gift extra top"
fileprivate let str_atContent:String = "d：progress back model"

/*:  加入了房间" :*/
fileprivate let str_makeTitle:String = " "
fileprivate let str_textModeName:[Character] = ["加","入","了","房","间"]

/*:  离开了房间" :*/
fileprivate let str_genderData:String = " 离开了key"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/16.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

/// 音频渲染配置
//: private class TalkingVoiceChatConfig: NSObject {
private class SectionVocalisationChatConfig: NSObject {
    //: var isHandsfree = false
    var isHandsfree = false // 是否免提，默认否
    //: var isMute = false
    var isMute = false // 是否静音，默认否
    //: var isTalking = false
    var isTalking = false // 是否正在通话
    //: var disconnected = true
    var disconnected = true // 是否未连接
}

//: class TalkingVoiceChatManager: NSObject {
class ManagerReactiveCompatible: NSObject {
    //: weak var handsfreeBtn: UIButton?
    weak var handsfreeBtn: UIButton? // 免提按钮弱引用
    //: weak var handsfreeDesLab: UILabel?
    weak var handsfreeDesLab: UILabel? // 免提描述弱引用
    //: private var config = TalkingVoiceChatConfig()
    private var config = SectionVocalisationChatConfig() // 音频渲染配置类
    //: private var logId = 0
    private var logId = 0 // 通话Id

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.chiselIn()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.everyLastBy()
    }
}

// MARK: - Public Event

//: extension TalkingVoiceChatManager {
extension ManagerReactiveCompatible {
    /// 挂断来电后，需重恢复音频设备
    //: func enableAudioModule(enable: Bool) {
    func pathReplySelected(enable: Bool) {
        //: guard enable == true else { return }
        guard enable == true else { return }

        // 先暂停音频设备
        //: notification_stopLocalAudio(notif: nil)
        atomicCount85(notif: nil)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            // 再恢复音频设备
            //: self.notification_startLocalAudio(notif: nil)
            self.decadeShow(notif: nil)
        }
    }

    /// 释放资源
    //: func shouldReleaseAllResource() {
    func everyLastBy() {
        //: destoryTRTCView()
        atLast()
    }

    /// 创建音频通话房间
    /// - Parameter roomId: 房间id
    //: func createRoomAndStartPublish(roomId: Int) {
    func finishClick(roomId: Int) {
        //: self.handsfreeBtn?.isEnabled = !hasHeadSet()
        self.handsfreeBtn?.isEnabled = !toSize()

        //: self.config.isTalking = true
        self.config.isTalking = true
        //: self.logId = roomId
        self.logId = roomId
        //: enterRoom()
        toiletLocal()
    }

    /// 设置静音
    /// - Parameter isMute: true：静音；false：恢复
    //: func setMute(isMute: Bool) {
    func another(isMute: Bool) {
        //: guard self.config.isMute != isMute else { return }
        guard self.config.isMute != isMute else { return }

        //: self.config.isMute = isMute
        self.config.isMute = isMute
        //: TRTCCloud.sharedInstance().muteLocalAudio(isMute)
        TRTCCloud.sharedInstance().muteLocalAudio(isMute)
    }

    /// 设置免提
    /// - Parameter isHandsfree: true：开启免提；false：听筒
    //: func setHandsfree(isHandsfree: Bool) {
    func alongSet(isHandsfree: Bool) {
        //: guard hasHeadSet() == false else { return }
        guard toSize() == false else { return }
        //: guard self.config.isHandsfree != isHandsfree else { return }
        guard self.config.isHandsfree != isHandsfree else { return }

        //: self.config.isHandsfree = isHandsfree
        self.config.isHandsfree = isHandsfree
        //: self.handsfreeBtn?.isSelected = isHandsfree
        self.handsfreeBtn?.isSelected = isHandsfree
        //: self.handsfreeDesLab?.text = isHandsfree ? "Speaker On".localized:"Speaker Off".localized
        self.handsfreeDesLab?.text = isHandsfree ? (String(str_labData.suffix(6)) + "r On").localized : (String(str_viewData.prefix(6)) + String(str_moreEqualData.prefix(5))).localized
        //: updateWhenPlayDeviceChanged(isHandsfree: isHandsfree)
        lessAdd(isHandsfree: isHandsfree)
    }
}

// MARK: - Private Event

//: extension TalkingVoiceChatManager {
extension ManagerReactiveCompatible {
    /// 判断当前设备是否链接了蓝牙耳机等设备
    /// - Returns: true：有；false：没有
    //: private func hasHeadSet() -> Bool {
    private func toSize() -> Bool {
        //: let audioSession = AVAudioSession.sharedInstance()
        let audioSession = AVAudioSession.sharedInstance()
        //: let currentRoute = audioSession.currentRoute
        let currentRoute = audioSession.currentRoute
        //: for output in currentRoute.outputs {
        for output in currentRoute.outputs {
            //: let portType = output.portType
            let portType = output.portType
            //: if portType == .headphones ||
            if portType == .headphones ||
                //: portType == .bluetoothA2DP ||
                portType == .bluetoothA2DP ||
                //: portType == .bluetoothLE ||
                portType == .bluetoothLE ||
                //: portType == .bluetoothHFP {
                portType == .bluetoothHFP
            {
                //: return true
                return true
            }
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceChatManager {
extension ManagerReactiveCompatible {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func chiselIn() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_stopLocalAudio(notif:)),
                                               selector: #selector(atomicCount85(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(notification_startLocalAudio(notif:)),
                                               selector: #selector(decadeShow(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(cellTurn(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(eventOwing(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台，暂停音频设备
    //: @objc private func notification_stopLocalAudio(notif: Notification?) {
    @objc private func atomicCount85(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().stopLocalAudio()
            TRTCCloud.sharedInstance().stopLocalAudio()
        }
    }

    /// 监听 App 从后台切前台，开启音频设备
    //: @objc private func notification_startLocalAudio(notif: Notification?) {
    @objc private func decadeShow(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            //: TRTCCloud.sharedInstance().startLocalAudio(.default)
            TRTCCloud.sharedInstance().startLocalAudio(.default)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func cellTurn(notif: Notification) {
        //: guard notif.userInfo != nil else { return }
        guard notif.userInfo != nil else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
            guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
                //: return
                return
            }
            //: let  interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            let interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            //: if interruptStatus == AVAudioSession.InterruptionType.began {
            if interruptStatus == AVAudioSession.InterruptionType.began {
                // 暂停音频设备
                //: self.notification_stopLocalAudio(notif: nil)
                self.atomicCount85(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.notification_startLocalAudio(notif: nil)
                self.decadeShow(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func eventOwing(notif: Notification) {
        //: guard let interuptionDict = notif.userInfo else { return }
        guard let interuptionDict = notif.userInfo else { return }
        //: guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
        guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
            //: return
            return
        }
        //: let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)
        let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)

        //: switch(routeChangeReason) {
        switch routeChangeReason {
        //: case .newDeviceAvailable:
        case .newDeviceAvailable: // 听筒
            //: self.handsfreeBtn?.isEnabled = false
            self.handsfreeBtn?.isEnabled = false
            //: updateWhenPlayDeviceChanged(isHandsfree: false)
            lessAdd(isHandsfree: false)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable: // 免提
            //: self.handsfreeBtn?.isEnabled = true
            self.handsfreeBtn?.isEnabled = true
            //: self.config.isHandsfree = true
            self.config.isHandsfree = true
            //: self.handsfreeBtn?.isSelected = true
            self.handsfreeBtn?.isSelected = true
            //: self.handsfreeDesLab?.text = "Speaker On".localized
            self.handsfreeDesLab?.text = (String(str_labData.suffix(6)) + "r On").localized
            //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
            lessAdd(isHandsfree: self.config.isHandsfree)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 音频通话事件

//: extension TalkingVoiceChatManager {
extension ManagerReactiveCompatible {
    /// 进入音频通话房间
    //: private func enterRoom() {
    private func toiletLocal() {
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = kLet_buildRecordData
        //: params.roomId = UInt32(logId)
        params.roomId = UInt32(logId)
        //: params.userId = WithAdministratorAppManager.share.loginUserMode.userID
        params.userId = WithAdministratorAppManager.share.loginUserMode.userID
        //: params.userSig = WithAdministratorAppManager.share.appUserConfigMode.uSigTrtc
        params.userSig = WithAdministratorAppManager.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(logId)"
        params.streamId = "s-\(params.userId)-\(logId)"
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().startLocalAudio(.default)
        TRTCCloud.sharedInstance().startLocalAudio(.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .audioCall)
        // 初始设置是否免提
        //: updateWhenPlayDeviceChanged(isHandsfree: self.config.isHandsfree)
        lessAdd(isHandsfree: self.config.isHandsfree)
    }

    /// 更新通话模式
    /// - Parameter isHandsfree: 是否免提
    //: private func updateWhenPlayDeviceChanged(isHandsfree: Bool) {
    private func lessAdd(isHandsfree: Bool) {
        //: TRTCCloud.sharedInstance().setAudioRoute((isHandsfree ? .modeSpeakerphone:.modeEarpiece))
        TRTCCloud.sharedInstance().setAudioRoute(isHandsfree ? .modeSpeakerphone : .modeEarpiece)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func atLast() {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话销毁. logId：\(logId).")
        QueryThen.bringInstance(msg: (String(str_myName.suffix(5)) + String(str_labStrikeTitle) + String(str_touchShowData)) + "\(logId).")
        //: guard self.config.isTalking else { return }
        guard self.config.isTalking else { return }

        //: if self.config.isHandsfree == false {
        if self.config.isHandsfree == false { // 恢复系统扬声器播放声音
            //: updateWhenPlayDeviceChanged(isHandsfree: true)
            lessAdd(isHandsfree: true)
        }
        //: TRTCCloud.sharedInstance().exitRoom()
        TRTCCloud.sharedInstance().exitRoom()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: TRTCCloud.destroySharedIntance()
            TRTCCloud.destroySharedIntance()
        }
        //: self.config.isTalking = false
        self.config.isTalking = false
    }

    /// 音频通话重连
    /// - Parameter roomId: 房间Id
    //: func restartTalkWhenDisconnectedAndNetAvailable(roomId: Int) {
    func chemicalAgentSize(roomId: Int) {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish(roomId: roomId)
            self.finishClick(roomId: roomId)
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVoiceChatManager: TRTCCloudDelegate {
extension ManagerReactiveCompatible: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        QueryThen.bringInstance(msg: (String(str_dataStopName) + str_scaleValue.capitalized + " errCode:") + "\(errCode)" + (String(str_imageTitle) + String(str_keyTitle.prefix(3))) + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.atShow(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        QueryThen.bringInstance(msg: (String(str_usedValue.prefix(6)) + "频通话SD" + String(str_mainMakeContent.suffix(6)) + " war" + str_toTitle.replacingOccurrences(of: "data", with: "i") + String(str_showOutputText.prefix(7))) + "\(warningCode)" + (String(str_aspectText) + str_titleValue.lowercased() + String(str_skipText.prefix(5))) + "\(String(describing: warningMsg)).")
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: UploadLogTool.writeLog(msg: "TRTC 音频通话进入房间. result:\(result), logId：\(logId).")
        QueryThen.bringInstance(msg: (str_statusData.replacingOccurrences(of: "image", with: "T") + String(str_viewName.prefix(4)) + "音频通话" + str_textName + ". result:") + "\(result)" + (String(str_valueSizeName.prefix(6)) + String(str_atContent.prefix(2))) + "\(logId).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: TalkingSocketManager.shared.endTalkingPing()
            DataSocketDelegate.shared.direct()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: TalkingSocketManager.shared.endTalkingPing()
        DataSocketDelegate.shared.direct()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        printLog(message: "\(userId)" + (str_makeTitle.capitalized + String(str_textModeName)))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        printLog(message: "\(userId)" + (str_genderData.replacingOccurrences(of: "key", with: "房间")))
    }
}
