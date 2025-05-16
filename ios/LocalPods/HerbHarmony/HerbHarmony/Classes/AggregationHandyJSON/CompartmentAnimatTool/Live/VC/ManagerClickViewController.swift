
//: Declare String Begin

/*: "uid" :*/
fileprivate let str_titleData:String = "ugroupd"

/*: "floatingScreen" :*/
fileprivate let str_colorName:String = "ftoa"
fileprivate let str_dataValue:String = "storagereen"

/*: "MF:LiveChatMsg" :*/
fileprivate let str_rawRequestPlayTitle:String = "MF:not for"
fileprivate let str_numberData:String = "LiveCto super"

/*: "MF:LiveChatMentionMsg" :*/
fileprivate let str_totalContent:String = "on"
fileprivate let str_imagePressData:[Character] = ["F",":","L","i","v","e","C","h","a","t","M","e","n","t","i","o","n","M","s","g"]

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_textValue:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","G","i"]
fileprivate let str_sendScriptValue:[Character] = ["f","t","M","s","g"]

/*: "LiveGift_ :*/
fileprivate let str_ofSucceedContent:[Character] = ["L","i","v","e","G"]
fileprivate let str_memberLayerName:[Character] = ["i","f","t","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerClickViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: class TalkingLiveBeautifyViewController: TalkingBaseViewController {
class ManagerClickViewController: NameViewController {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        rootSubviews()
        //: setupSubViewsConstraint()
        voiceConstraint()
        //: initNotifacation()
        briquet()
        //: TalkingDanmuManager.shared().delegate = self
        SumeractionReactiveCompatible.playerFor().delegate = self
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        acceptGift()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频渲染视图
    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: BondBottomView = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = BondBottomView(frame: .zero)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: MajorThen = {
        //: let text = TalkingLiveRoomInputView.init()
        let text = MajorThen()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: ChangeDataSource = {
        //: let view = TalkingDanmuMsgListTableView.init()
        let view = ChangeDataSource()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: PopView = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = PopView()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: SwathThen = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = SwathThen()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: lazy var topView: TalkingLiveRoomTopView = {
    lazy var topView: StateTopView = {
        //: let view = TalkingLiveRoomTopView()
        let view = StateTopView()
        //: view.weakVC = self
        view.weakVC = self
        //: view.rightBtnBlock = { [weak self] in
        view.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var floatScreenView: TalkingFloatScreenView = {
    private lazy var floatScreenView: TouchThen = { // 飘屏
        //: let v = TalkingFloatScreenView()
        let v = TouchThen()
        //: v.isHidden = (WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// 通知
//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    //: func initNotifacation() {
    func briquet() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(doMove),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: kLet_contentBarName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(popDoingAdd),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: kLet_countKeyValue,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(blockUserExitRoom(notification:)),
                                               selector: #selector(cellNumber(notification:)),
                                               //: name: LIVE_BLOCK_USER_NOTIFICATION,
                                               name: kLet_barContent,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(random(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: kLet_skipLicenseData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func danmuMoveTop() {
    @objc func doMove() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kLet_appMarginText))
            make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight - kLet_noText - bottomView.height - kLet_appMarginText))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func popDoingAdd() {
        //: var ishave = 0
        var ishave = 0
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: ClassTipsProtocol.self) || vc.isKind(of: CleanManagerDelegate.self) {
                //: ishave += 1
                ishave += 1
            }
        }
        //: if ishave == 0 {
        if ishave == 0 {
            //: danmuView.snp.updateConstraints { make in
            danmuView.snp.updateConstraints { make in
                //: make.bottom.equalTo(bottomView.snp.top)
                make.bottom.equalTo(bottomView.snp.top)
            }
        }
    }

    /// 拉黑用户踢出房间
    //: @objc func blockUserExitRoom(notification: NSNotification) -> Void {
    @objc func cellNumber(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid = userinfo["uid"] as? String
        let uid = userinfo[(str_titleData.replacingOccurrences(of: "group", with: "i"))] as? String

        //: if String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUserMode.userID {
        if String(SectionPushListener.cover().liveRoomModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUserMode.userID {
            //: V2TIMManager.sharedInstance().muteGroupMember(TalkingLiveManager.shared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
            V2TIMManager.sharedInstance().muteGroupMember(SectionPushListener.cover().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
                //: } fail: { code, decstr in
            } fail: { _, _ in
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func random(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(str_colorName.replacingOccurrences(of: "to", with: "lo") + "tingS" + str_dataValue.replacingOccurrences(of: "storage", with: "c"))]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = SignScreenModel.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.toReceive(model)
        }
    }
}

// MARK: - Request

//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    /// 停止直播
    //: private func req_stopLive() {
    private func titleLive() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        SectionPushListener.labOpen(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            SectionPushListener.cover().toResource()
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomBottomViewDelegate {
extension ManagerClickViewController: SightViewDelegate {
    //: func func__commentBtnClick() {
    func infoClick() {
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.readFlushPlaceholder()
    }
}

// MARK: - SetOutReactiveCompatible

//: extension TalkingLiveBeautifyViewController: TalkingDanmuManagerDelegate {
extension ManagerClickViewController: SetOutReactiveCompatible {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func roundLocation(Msg: QuantityLeadingTransformable) {
        //: addGiftEffectModelArr(Msg: Msg)
        eponym(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func transform(Msg: QuantityLeadingTransformable) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.scaleOfMeasurement(msgModel: Msg)
        // 展示未读消息提醒标识(文本、@、礼物)
        //: if Msg.MsgExtension == "MF:LiveChatMsg" ||
        if Msg.MsgExtension == (String(str_rawRequestPlayTitle.prefix(3)) + String(str_numberData.prefix(5)) + "hatMsg") ||
            //: Msg.MsgExtension == "MF:LiveChatMentionMsg" ||
            Msg.MsgExtension == (str_totalContent.replacingOccurrences(of: "on", with: "M") + String(str_imagePressData)) ||
            //: Msg.MsgExtension == "MF:LiveChatGiftMsg" {
            Msg.MsgExtension == (String(str_textValue) + String(str_sendScriptValue))
        {
            //: TalkingLiveManager.shared().updateUnredMessageCount()
            SectionPushListener.cover().quantityerruption()
        }
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func digitiserUid(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: let view = TalkingLiveUserCardView.init(frame: self.view.frame, uid: pushUid ?? "")
        let view = EffectSectionThen(frame: self.view.frame, uid: pushUid ?? "")
        //: view.delegate = self
        view.delegate = self
        //: view.show()
        view.blot()
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func visualizationUid(nickName: String, atUid: String?) {
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.radiogram(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func login() {}

    //: func func__userLogout() {}
    func describeLogout() {}
}

// MARK: - OptionViewDelegate 资料卡

//: extension TalkingLiveBeautifyViewController: TalkingLiveUserCardViewDelegate {
extension ManagerClickViewController: OptionViewDelegate {
    //: func func__atUserClick(uid: String, nickname: String) {
    func koine(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.radiogram(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    /// 加载之前动画
    //: func initCachEffectData() {
    func acceptGift() {
        //: let toUid = "LiveGift_\(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)"
        let toUid = (String(str_ofSucceedContent) + String(str_memberLayerName)) + "\(SectionPushListener.cover().liveRoomModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.taget(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func eponym(Msg: QuantityLeadingTransformable) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in SumReactiveCompatible.share.greetShared() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [ButtonModelType]
        }
        //: let giftModel = Msg.gift
        let giftModel = Msg.gift
        //: if giftModel != nil {
        if giftModel != nil {
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel!)
            giftTrackView.simultaneously(model: giftModel!)
            //: giftEffectView.addGiftAnimatModelArr(modelArr: [giftModel!])
            giftEffectView.giftExecuteEnable(modelArr: [giftModel!])
        }
    }
}

/// 屏幕点击事件
//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.view)
        var point = touch.location(in: self.view)
        //: point = commInputView.layer.convert(point, from: self.view.layer)
        point = commInputView.layer.convert(point, from: self.view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 发表弹幕代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomInputViewDelegate {
extension ManagerClickViewController: CleanReactiveCompatible {
    //: @objc func dismissClick() {
    @objc func clickSearched() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.aircraft()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func makeEqual(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        circuit(msgStr: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func removeBottom(heightToBottom: CGFloat) {
        /// 半屏页打开时，不改变弹幕位置
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: ClassTipsProtocol.self) || vc.isKind(of: CleanManagerDelegate.self) {
                //: return
                return
            }
        }

        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: let height = heightToBottom == 0 ? 0 : -(heightToBottom-bottomView.height+commInputView.height-kLet_appMarginText)
            let height = heightToBottom == 0 ? 0 : -(heightToBottom - bottomView.height + commInputView.height - kLet_appMarginText)
            //: make.bottom.equalTo(bottomView.snp.top).offset(height)
            make.bottom.equalTo(bottomView.snp.top).offset(height)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func plot(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }

        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 发送文本消息
    //: func sendToTextMsg(msgStr: String, toUid: String?) {
    func circuit(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        SumeractionReactiveCompatible.equalDataConverter(groupId: SectionPushListener.cover().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

// MARK: - Event

//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    /// 开播成功，刷新直播间
    //: func refreshLiveRoomView() {
    func enableTo() {
        //: topView.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        topView.alteration(SectionPushListener.cover().liveRoomModel)
        //: bottomView.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        bottomView.modelEqual(SectionPushListener.cover().liveRoomModel)
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func countMessageNewPopCuttingEdge(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.timerClear()
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = actionController() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.countMessageNewPopCuttingEdge()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveBeautifyViewController {
extension ManagerClickViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func rootSubviews() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.addSubview(topView.svgaView)
        view.addSubview(topView.svgaView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func voiceConstraint() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-(kLet_appMarginText + 10))
            make.bottom.equalToSuperview().offset(-(kLet_appMarginText + 10))
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
        }
        //: danmuView.snp.makeConstraints { make in
        danmuView.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(MsgTableViewHeight)
            make.height.equalTo(kLet_countName)
            //: make.width.equalTo(MsgTableViewWidth)
            make.width.equalTo(kLet_viewBarTitle)
        }
        //: floatScreenView.snp.makeConstraints { make in
        floatScreenView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(-20)
            make.top.equalTo(topView.snp.bottom).offset(-20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(90)
            make.height.equalTo(90)
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(self.view)
            make.leading.equalTo(self.view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-kLet_countName)
        }
    }
}
