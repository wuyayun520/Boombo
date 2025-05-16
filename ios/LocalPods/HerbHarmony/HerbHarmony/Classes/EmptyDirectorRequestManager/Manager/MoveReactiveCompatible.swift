
//: Declare String Begin

/*: "0,0" :*/
fileprivate let str_toTitle:String = "0,0"

/*: "dist/loungePlus" :*/
fileprivate let str_layerText:[Character] = ["d","i","s","t","/","l","o","u","n","g","e","P","l","u","s"]

/*: "mf/freeCall/getVideoInfo" :*/
fileprivate let str_listValue:String = "indicator event share callmf/freeC"
fileprivate let str_modelViewTitle:String = "minimize self case progress collectionall/g"
fileprivate let str_labelData:String = "deoInfomini self view"

/*: "fromType" :*/
fileprivate let str_phoneTitle:[UInt8] = [0xc4,0xd0,0xcd,0xcf,0xf6,0xdb,0xd2,0xc7]

private func overdoRandom(message num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "videoId" :*/
fileprivate let str_fromData:String = "videoIdtrue video near all make"

/*: "uid" :*/
fileprivate let str_momentName:[Character] = ["u","i","d"]

/*: "type" :*/
fileprivate let str_endValue:String = "tfronte"

/*: "logId" :*/
fileprivate let str_femaleData:[Character] = ["l","o","g","I","d"]

/*: "duration" :*/
fileprivate let str_buttonTitle:String = "ddata"
fileprivate let str_dismissTabValue:String = "rmodelion"

/*: "stopUid" :*/
fileprivate let str_lastContent:[Character] = ["s","t","o","p","U","i","d"]

/*: "mf/freeCall/operation" :*/
fileprivate let str_frameData:[Character] = ["m","f","/","f","r","e","e","C","a","l","l"]
fileprivate let str_imageName:String = "/"
fileprivate let str_destroyData:String = "opricer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoveReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

/// 主动拨打视频弹窗管理
//: class TalkingVideoInitivCallManager: NSObject {
class MoveReactiveCompatible: NSObject {
    //: private var videoCallTimer: Timer?
    private var videoCallTimer: Timer? /// timer
    //: var videoCallModel = TalkingVideoInitivCallModel.init()
    var videoCallModel = TitleMeasurable()
    //: private var countDown = 0
    private var countDown = 0 /// x秒后显示主动拨打弹窗
    //: private var intervalDown = 0
    private var intervalDown = 0 /// 间隔时间x秒
    //: private var timer_Duration: TimeInterval = 0
    private var timer_Duration: TimeInterval = 0 /// 时间间隔 初次3s，后续90s

    //: static let shared = TalkingVideoInitivCallManager()
    static let shared = MoveReactiveCompatible()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_VideoCallTimer),
                                               selector: #selector(timer),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useTitle,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingVideoInitivCallManager {
extension MoveReactiveCompatible {
    //: private func distroryNotif() {
    private func groupModel() {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func setObserver() {
    func becomeFinish() {
        //: guard WithAdministratorAppManager.share.loginUserMode.callPopupSetting != "0,0" else {
        guard WithAdministratorAppManager.share.loginUserMode.callPopupSetting != "0,0" else {
            //: distroryNotif()
            groupModel()
            //: return
            return
        }
        //: let arr = WithAdministratorAppManager.share.loginUserMode.callPopupSetting .split(separator: ",")
        let arr = WithAdministratorAppManager.share.loginUserMode.callPopupSetting.split(separator: ",")
        //: if arr.count > 1 {
        if arr.count > 1 {
            //: countDown = Int(arr[0]) ?? 0
            countDown = Int(arr[0]) ?? 0
            //: intervalDown = Int(arr[1]) ?? 0
            intervalDown = Int(arr[1]) ?? 0
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+Double(countDown)) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(countDown)) {
            //: self.req_getVideoInfo()
            self.deleteShow()
        }
        /// 充值/订阅成功
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(paySuccessTool),
                                               selector: #selector(bit),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_greetData,
                                               //: object: nil)
                                               object: nil)
    }

    /// 开启x秒倒计时
    //: func initVideoCallTimer() {
    func theologize() {
        //: self.timer_Duration = TimeInterval(intervalDown)
        self.timer_Duration = TimeInterval(intervalDown)
        //: if videoCallTimer == nil {
        if videoCallTimer == nil {
            //: videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(req_getVideoInfo), userInfo: nil, repeats: true)
            videoCallTimer = Timer.scheduledTimer(timeInterval: timer_Duration, target: self, selector: #selector(deleteShow), userInfo: nil, repeats: true)
            //: RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
            RunLoop.current.add(videoCallTimer!, forMode: RunLoop.Mode.common)
        }
    }

    //: private func videoCallTimerPopView() {
    private func untilView() {
        /// 当前显示半屏充值页或订阅页时，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if actionController()?.isKind(of: SignReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = actionController() as! SignReactiveCompatible
            //: if vc.urlStr.contains(WebUrlType.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains("dist/loungePlus") {
            if vc.urlStr.contains(MBridgeCollection.RechargeToVideoInitivHalfPage.rawValue) || vc.urlStr.contains((String(str_layerText))) {
                //: return
                return
            }
        }
        /// 当前在随机匹配页，视频通话页，不显示弹窗
        //: if currentViewController()?.isKind(of: TalkingRandomVideoViewController.self) == true || currentViewController()?.isKind(of: TalkingVideoInitivCallVC.self) == true {
        if actionController()?.isKind(of: MediaShouldReactiveCompatible.self) == true || actionController()?.isKind(of: VestryObjectProtocol.self) == true {
            //: return
            return
        }
        //: TalkingPopupWindowManager.shared.videoCallPopUpWindow()
        ShowWindowManager.shared.cameraFor()
        //: stop_VideoCallTimer()
        timer()
    }

    /// 停止
    //: @objc func stop_VideoCallTimer() {
    @objc func timer() {
        //: if self.videoCallTimer != nil {
        if self.videoCallTimer != nil {
            //: self.videoCallTimer?.invalidate()
            self.videoCallTimer?.invalidate()
            //: self.videoCallTimer = nil
            self.videoCallTimer = nil
        }
    }

    ///  充值成功后，跳转到callTab页面
    //: @objc private func paySuccessTool() {
    @objc private func bit() {
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if actionController()?.isKind(of: SignReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = actionController() as! SignReactiveCompatible
            //: if (vc.urlStr.contains(WebUrlType.RechargeHalfPage.rawValue) || vc.urlStr.contains(WebUrlType.SubscribeAlert.rawValue )) && vc.isRechargeOrSubscribeChangeMatch {
            if vc.urlStr.contains(MBridgeCollection.RechargeHalfPage.rawValue) || vc.urlStr.contains(MBridgeCollection.SubscribeAlert.rawValue), vc.isRechargeOrSubscribeChangeMatch {
                //: stop_VideoCallTimer()
                timer()
                //: vc.dismiss(animated: true)
                vc.dismiss(animated: true)
//                tabberSelete()
            }
        }
    }
}

// MARK: - Load Data

//: extension TalkingVideoInitivCallManager {
extension MoveReactiveCompatible {
    /// 获取用户主动拨打视频信息
    //: @objc private func req_getVideoInfo() {
    @objc private func deleteShow() {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/getVideoInfo"
        reqModel.requestPath = (String(str_listValue.suffix(8)) + String(str_modelViewTitle.suffix(5)) + "etVi" + String(str_labelData.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["fromType": "0"]
        reqModel.params = [String(bytes: str_phoneTitle.map{overdoRandom(message: $0)}, encoding: .utf8)!: "0"]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            /// 用户正在通话中，需要开启x秒后再次请求
            //: if errorModel?.errorCode == 104 {
            if errorModel?.errorCode == 104 {
                //: self.initVideoCallTimer()
                self.theologize()
                //: return
                return
            }
            //: guard succeed == true else {
            guard succeed == true else {
                //: self.distroryNotif()
                self.groupModel()
                //: self.stop_VideoCallTimer()
                self.timer()
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: if let model = TalkingVideoInitivCallModel.deserialize(from: result as? Dictionary) {
            if let model = TitleMeasurable.deserialize(from: result as? Dictionary) {
                //: self.videoCallModel = model
                self.videoCallModel = model
            }
            /// 预加载
            //: let  player = TalkingVideoPlayerManager.init()
            let player = ButtonPlayerManager()
            //: player.setMute(bEnable: true)
            player.manager(bEnable: true)
            //: player.playerWithUrlAndVideoView(url: self.videoCallModel.winVideoUrl, view: UIView.init())
            player.drunk(url: self.videoCallModel.winVideoUrl, view: UIView())

            //: self.videoCallTimerPopView()
            self.untilView()
        }
    }

    /** 接口记录用户是否接通或拒绝当前通话
     *  type :3 拒绝 1 接通 2 挂断
     *  duration 接通时长
     */
    //: func req_userOperation(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
    func toCompletion(type: Int, duration: Int = 0, stopUid: String = "", completion: @escaping FinishBlock) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["videoId"] = videoCallModel.videoId
        dict[(String(str_fromData.prefix(7)))] = videoCallModel.videoId
        //: dict["uid"] = videoCallModel.uid
        dict[(String(str_momentName))] = videoCallModel.uid
        //: dict["type"] = type
        dict[(str_endValue.replacingOccurrences(of: "front", with: "yp"))] = type
        //: dict["logId"] = videoCallModel.logId
        dict[(String(str_femaleData))] = videoCallModel.logId

        //: if duration > 0 {
        if duration > 0 {
            //: dict["duration"] = duration
            dict[(str_buttonTitle.replacingOccurrences(of: "data", with: "u") + str_dismissTabValue.replacingOccurrences(of: "model", with: "at"))] = duration
        }
        //: if stopUid.count > 0 {
        if stopUid.count > 0 {
            //: dict["stopUid"] = stopUid
            dict[(String(str_lastContent))] = stopUid
        }

        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/freeCall/operation"
        reqModel.requestPath = (String(str_frameData) + str_imageName.capitalized + str_destroyData.replacingOccurrences(of: "price", with: "pe") + "ation")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
