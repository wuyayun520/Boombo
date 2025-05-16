
//: Declare String Begin

/*: "TalkingFemaleVIPCallIdsArrayKey_ :*/
fileprivate let str_positionValue:[UInt8] = [0xe2,0xef,0xfa,0xf9,0xf7,0xfc,0xf5,0xd4,0xf3,0xfb,0xef,0xfa,0xf3,0xe4,0xd7,0xde,0xd1,0xef,0xfa,0xfa,0xd7,0xf2,0x1,0xcf,0x0,0x0,0xef,0x7,0xd9,0xf3,0x7,0xed]

fileprivate func moreView(photo num: UInt8) -> UInt8 {
    let value = Int(num) - 142
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "CHANGE_BEAN" :*/
fileprivate let str_cameraName:String = "labANG"
fileprivate let str_blankToValue:String = "E_BEANa model start line"

/*: "Failed to get user information, please return and try again" :*/
fileprivate let str_rowText:[UInt8] = [0x9c,0xbb,0xb3,0xb6,0xbf,0xbe,0xfa,0xae,0xb5,0xfa,0xbd,0xbf,0xae,0xfa,0xaf,0xa9,0xbf,0xa8,0xfa,0xb3,0xb4,0xbc,0xb5,0xa8,0xb7,0xbb,0xae,0xb3,0xb5,0xb4,0xf6,0xfa,0xaa,0xb6,0xbf,0xbb,0xa9,0xbf,0xfa,0xa8,0xbf,0xae,0xaf,0xa8,0xb4,0xfa,0xbb,0xb4,0xbe,0xfa,0xae,0xa8,0xa3,0xfa,0xbb,0xbd,0xbb,0xb3,0xb4]

private func switchlineBar(secure num: UInt8) -> UInt8 {
    return num ^ 218
}

/*: "type" :*/
fileprivate let str_locationName:[Character] = ["t","y","p","e"]

/*: "uid" :*/
fileprivate let str_colorText:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_blueName:String = "ferrorm"
fileprivate let str_cornerValue:String = "Callfile self name"

/*: "cmd" :*/
fileprivate let str_emptyExtentTitle:[UInt8] = [0x2a,0x24,0x2d]

private func extensionApp(video num: UInt8) -> UInt8 {
    return num ^ 73
}

/*: "requestCall" :*/
fileprivate let str_withContent:String = "reenvironmentu"
fileprivate let str_itemValue:String = "tab"

/*: "data" :*/
fileprivate let str_trackText:[UInt8] = [0x3a,0x3f,0x2a,0x3f]

private func viewTitle(block num: UInt8) -> UInt8 {
    return num ^ 94
}

/*: "onRequestCall" :*/
fileprivate let str_editData:String = "onRequitem false with info"
fileprivate let str_messageVideoText:[Character] = ["e","s","t","C","a","l","l"]

/*: "&type=3" :*/
fileprivate let str_infoText:String = "&typelet else data make selection"
fileprivate let str_wrapValue:String = "=3"

/*: "&type=4" :*/
fileprivate let str_appTempName:String = "frame with&type=4"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EstateMenuManager.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum MenuNumeric: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class EstateMenuManager: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "TalkingFemaleVIPCallIdsArrayKey_\(WithAdministratorAppManager.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = String(bytes: str_positionValue.map{moreView(photo: $0)}, encoding: .utf8)! + "\(WithAdministratorAppManager.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DataSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DataSocketDelegate.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension EstateMenuManager {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func outsideStart(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = SuspensionBridgeDataSource(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.toWith(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = MenuNumeric(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_cameraName.replacingOccurrences(of: "lab", with: "CH") + String(str_blankToValue.prefix(6))), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (str_cameraName.replacingOccurrences(of: "lab", with: "CH") + String(str_blankToValue.prefix(6))), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.fort(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            requestTo(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func requestTo(type: MenuNumeric) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.sendCall()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.sharedComplection()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func sharedComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        LaissezPasserThen.withLoad(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.atShow(showMsg: kLet_viewData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            DataSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            DataSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.callType(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func sendCall(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        LaissezPasserThen.polaroidCameraMicrophone { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.atShow(showMsg: kLet_viewData)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            DataSocketDelegate.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            DataSocketDelegate.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.callType(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension EstateMenuManager {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func fort(type: MenuNumeric, vipPrompt: String) {
        //: guard WithAdministratorAppManager.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard WithAdministratorAppManager.share.loginUserMode.status == SectionFreckleTextConvertible.normal.rawValue else {
            //: self.requestCall(type: type)
            self.requestTo(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = kLet_dismissData.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.requestTo(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        kLet_dismissData.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = ScaleOfMeasurementAlertView(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.requestTo(type: type)
        }
        //: alert.show()
        alert.bindRemove()
    }
}

// MARK: - TotalMatchDelegate, StartErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension EstateMenuManager: TotalMatchDelegate, StartErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func callType(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.atShow(showMsg: String(bytes: str_rowText.map{switchlineBar(secure: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [(String(str_locationName)): type, (String(str_colorText)): uid]
        //: let index = EnableFreeCallType.nor
        let index = SumryEnableNumeric.nor
        //: if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0 && WithAdministratorAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0 && WithAdministratorAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (str_blueName.replacingOccurrences(of: "error", with: "ro") + "Free" + String(str_cornerValue.prefix(4))))
            //: TalkingSocketManager.shared.isFreeCall = true
            DataSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_emptyExtentTitle.map{extensionApp(video: $0)}, encoding: .utf8)!: (str_withContent.replacingOccurrences(of: "environment", with: "q") + "estCal" + str_itemValue.replacingOccurrences(of: "tab", with: "l")), String(bytes: str_trackText.map{viewTitle(block: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DataSocketDelegate.shared.demonstrateInfo(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func giftCircle(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(String(str_colorText))] = self.uid
        //: WithAdministratorAppManager.share.start1v1TalkCall(info: newData)
        WithAdministratorAppManager.share.pointDelay(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func discredit(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func number1(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_editData.prefix(6)) + String(str_messageVideoText)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.atShow(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == Salmagundi.MoneyLack.rawValue {
                //: let json = JSON(data)
                let json = JSON(data)
                //: var appendParams = "&type=3"
                var appendParams = (String(str_infoText.prefix(5)) + str_wrapValue.capitalized)
                //: if json["type"].intValue == 1 { // 音频
                if json[(String(str_locationName))].intValue == 1 { // 音频
                    //: appendParams = "&type=4"
                    appendParams = (String(str_appTempName.suffix(7)))
                }
                //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: appendParams)
                LeadingEqualReactiveCompatible.share.squash(appendParams: appendParams)
            }
        }
    }
}
