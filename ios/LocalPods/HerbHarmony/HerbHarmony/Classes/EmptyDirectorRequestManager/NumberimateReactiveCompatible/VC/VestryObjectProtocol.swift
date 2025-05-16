
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameData:[UInt8] = [0x9c,0x9b,0x9c,0x81,0xdd,0x96,0x9a,0x91,0x90,0x87,0xcf,0xdc,0xd5,0x9d,0x94,0x86,0xd5,0x9b,0x9a,0x81,0xd5,0x97,0x90,0x90,0x9b,0xd5,0x9c,0x98,0x85,0x99,0x90,0x98,0x90,0x9b,0x81,0x90,0x91]

private func infoData(current num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "&type=6" :*/
fileprivate let str_modelName:[Character] = ["&","t","y","p","e","=","6"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VestryObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class VestryObjectProtocol: NameViewController {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: StandardChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: NameEffectThen? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = TotalPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameData.map{infoData(current: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! DataViewController
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            DataSocketDelegate.shared.currTalkingVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.equalRgba(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isTalking = true
        DataSocketDelegate.shared.isTalking = true
        //: setupSubviews()
        withSubviews()
        //: setupSubViewsConstraint()
        setupText()
        //: req_callGetUserInfo()
        nameConstraint()
        //: self.startPreview()
        self.emphasizing()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.modelPlay()
        //: self.player?.removeVideoWidget()
        self.player?.sizeRoom()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isTalking = false
        DataSocketDelegate.shared.isTalking = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: LeadingCallView = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = LeadingCallView(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(MoveReactiveCompatible.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: AlterWindowView = {
        //: let v = TalkingVideoWindowView()
        let v = AlterWindowView()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: kLet_senseContent - 15 - actualWidth(w: 125), y: kLet_messageContent + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.reliefWithView()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: UserStatePowerToolThen = {
        //: let m = TalkingVideoInitivCallTool()
        let m = UserStatePowerToolThen()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: ButtonPlayerManager? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = ButtonPlayerManager()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension VestryObjectProtocol {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func nameConstraint() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = StandardChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isTalkingNow = true
        self.chatModel?.isTalkingNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.drunk(url: MoveReactiveCompatible.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.recognize()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension VestryObjectProtocol {
    /// 预览视频画面
    //: private func startPreview() {
    private func emphasizing() {
        //: self.videoManager.startPreview()
        self.videoManager.recognize()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func setAshoreDownCoverAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func reliefWithView() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.sinceRender()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension VestryObjectProtocol: MainReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func poolPlayerReport(player _: ButtonPlayerManager, status: TotalPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_voiceText.quantityingTime(eventID: kLet_screenName)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func informant(player _: ButtonPlayerManager, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func showSub(player _: ButtonPlayerManager, progress _: CGFloat) {}
}

// MARK: - ModelQuantityObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension VestryObjectProtocol: ModelQuantityObjectProtocol {
    //: func interactionView_reportSucceed() {
    func textSucceed() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func appText() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func comeOutAtRequest() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currTalkingVC = nil
            DataSocketDelegate.shared.currTalkingVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = MoveReactiveCompatible.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : WithAdministratorAppManager.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(MoveReactiveCompatible.shared.videoCallModel.uid)" : WithAdministratorAppManager.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        MoveReactiveCompatible.shared.toCompletion(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kLet_voiceText.quantityingTime(eventID: kLet_screenName)
        }
        //: popCurrentViewController()
        setAshoreDownCoverAnimated()

        //: if WithAdministratorAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
        if WithAdministratorAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: LeadingEqualReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            LeadingEqualReactiveCompatible.share.messageOf(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if WithAdministratorAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if WithAdministratorAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            LeadingEqualReactiveCompatible.share.nowKeyLog(appendParams: (String(str_modelName)))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.actionController()?.isKind(of: SignReactiveCompatible.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.actionController() as! SignReactiveCompatible
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func videoVoice(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.frontName(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func inviteTo(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.starFrom(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func squareSearched() {
        //: TalkingSocketManager.shared.currTalkingVC = self
        DataSocketDelegate.shared.currTalkingVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = NameEffectThen.reconstructAddView()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.backgroundBelow()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.dataClose()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.sinceRender()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.actionController()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        setAshoreDownCoverAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension VestryObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func withSubviews() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.sinceOf(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupText() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
