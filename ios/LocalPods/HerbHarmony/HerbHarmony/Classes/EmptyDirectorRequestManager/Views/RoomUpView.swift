
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0x25,0x22,0x25,0x38,0x64,0x2f,0x23,0x28,0x29,0x3e,0x76,0x65,0x6c,0x24,0x2d,0x3f,0x6c,0x22,0x23,0x38,0x6c,0x2e,0x29,0x29,0x22,0x6c,0x25,0x21,0x3c,0x20,0x29,0x21,0x29,0x22,0x38,0x29,0x28]

private func bringNameFrom(pop num: UInt8) -> UInt8 {
    return num ^ 76
}

/*: "icon_video_bd" :*/
fileprivate let str_itColorData:String = "size var size viewicon_v"

/*: "btn_video_drop_nor" :*/
fileprivate let str_withoutViewData:[Character] = ["b","t","n","_","v","i","d","e","o"]
fileprivate let str_finishValue:String = "_dropscale number commit mini move"

/*: "get json error" :*/
fileprivate let str_shareData:String = "get let pic return raw"
fileprivate let str_withText:String = "dealor"

/*: s" :*/
fileprivate let str_indicatorTitle:[Character] = ["s"]

/*: "icon_videocall_topView" :*/
fileprivate let str_flowTitle:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l","l","_","t","o","p","V","i","e","w"]

/*: "Video Call" :*/
fileprivate let str_appTitle:String = "true video selfVideo C"
fileprivate let str_bottomText:String = "agiftgift"

/*: "icon_videocall_initerv_topView" :*/
fileprivate let str_beData:String = "adjust equal attributeicon_v"
fileprivate let str_hateText:String = "none frame for inputall_ini"
fileprivate let str_statusName:String = "array liveterv_to"
fileprivate let str_equalData:String = "pViewif social attention false"

/*: "Free" :*/
fileprivate let str_partyData:[Character] = ["F","r","e","e"]

/*: "You've been barred from receiving calls" :*/
fileprivate let str_progressPiIfValue:[UInt8] = [0x7b,0x4d,0x57,0x5,0x54,0x47,0x2,0x40,0x47,0x47,0x4c,0x2,0x40,0x43,0x50,0x50,0x47,0x46,0x2,0x44,0x50,0x4d,0x4f,0x2,0x50,0x47,0x41,0x47,0x4b,0x54,0x4b,0x4c,0x45,0x2,0x41,0x43,0x4e,0x4e,0x51]

/*: "&type=6" :*/
fileprivate let str_headName:String = "&type=6string view"

/*: "#864EFF" :*/
fileprivate let str_inputValue:[Character] = ["#","8","6","4","E"]
fileprivate let str_imageValue:String = "hanghang"

/*: "#F79AFF" :*/
fileprivate let str_attentionNumberTitle:String = "var event string#F"
fileprivate let str_effectTimeValue:String = "request actual make inside self79AFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoomUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class RoomUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.ofUpFrom()
        //: self.setupSubViewsConstraint()
        self.confinementConstraint()
        //: self.bindInteraction()
        self.sectionCounteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.map{bringNameFrom(pop: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.modelPlay()
        //: player?.removeVideoWidget()
        player?.sizeRoom()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: RoomThen = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = RoomThen(type: .custom)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_itColorData.suffix(6)) + "ideo_bd")), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(cube), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_withoutViewData) + String(str_finishValue.prefix(5)) + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ambientSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.behindUpRoom(fontSize: 10)
        lb.font = UIFont.behindUpRoom(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: ButtonPlayerManager? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = ButtonPlayerManager()
        //: player.setMute(bEnable: false)
        player.manager(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = DigitiserReactiveCompatible.default.game(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_shareData.prefix(4)) + "json e" + str_withText.replacingOccurrences(of: "deal", with: "rr")))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension RoomUpView {
    /// 获取权限
    //: private func getServercePermission() {
    private func aboveShow() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        LaissezPasserThen.effectOf(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            LaissezPasserThen.withLoad(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = MoveReactiveCompatible.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.giftEmptyColor()
                        //: self.dismiss()
                        self.readWith()
                        //: switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            flingOnColor()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            getCrackingWrite()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.towardPicThrough()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func roomView() {
        //: switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.nearCounterval(name: "icon_videocall_topView")
            topIcon.image = UIImage.nearCounterval(name: (String(str_flowTitle)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(str_appTitle.suffix(7)) + str_bottomText.replacingOccurrences(of: "gift", with: "l")).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.nearCounterval(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.nearCounterval(name: (String(str_beData.suffix(6)) + "ideoc" + String(str_hateText.suffix(7)) + String(str_statusName.suffix(7)) + String(str_equalData.prefix(5))))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(str_partyData)).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func mvp() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if MoveReactiveCompatible.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.drunk(url: MoveReactiveCompatible.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.nearSquare(urlStr: MoveReactiveCompatible.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func giftEmptyColor() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func towardPicThrough() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        kLet_voiceText.quantityingTime(eventID: kLet_viewProgressData)
        //: initVideoCallTime()
        minimize()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard MoveReactiveCompatible.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.atShow(showMsg: String(bytes: str_progressPiIfValue.map{$0^34}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        MoveReactiveCompatible.shared.toCompletion(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.actionController()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.actionController()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = VestryObjectProtocol()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.actionController()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func viewFinish(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        MoveReactiveCompatible.shared.toCompletion(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func minimize() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        MoveReactiveCompatible.shared.theologize()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension RoomUpView {
    //: @objc private func finishBtnClick() {
    @objc private func cube() {
        //: self.dismiss()
        self.readWith()
        //: switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch WithAdministratorAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            flingOnColor()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            getCrackingWrite()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            LaissezPasserThen.polaroidCameraMicrophone { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.towardPicThrough()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func flingOnColor() {
        //: initVideoCallTime()
        minimize()
        //: LeadingEqualReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        LeadingEqualReactiveCompatible.share.messageOf(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if actionController()?.isKind(of: SignReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = actionController() as! SignReactiveCompatible
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func getCrackingWrite() {
        //: initVideoCallTime()
        minimize()
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        LeadingEqualReactiveCompatible.share.nowKeyLog(appendParams: (String(str_headName.prefix(7))))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if actionController()?.isKind(of: SignReactiveCompatible.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = actionController() as! SignReactiveCompatible
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func ambientSnap() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        kLet_voiceText.quantityingTime(eventID: kLet_videoData)
        //: initVideoCallTime()
        minimize()
        //: uploadRepord(type: 3)
        viewFinish(type: 3)
        //: dismiss()
        readWith()
    }

    //: func show() {
    func build() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func readWith() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        giftEmptyColor()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension RoomUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func ofUpFrom() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func confinementConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func sectionCounteraction() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        layerApp(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (String(str_inputValue) + str_imageValue.replacingOccurrences(of: "hang", with: "F")))!.cgColor, UIColor(hex: (String(str_attentionNumberTitle.suffix(2)) + String(str_effectTimeValue.suffix(5))))!.cgColor])
        //: self.getServercePermission()
        self.aboveShow()
        //: self.seTypeView()
        self.roomView()
        //: self.beginPlayer()
        self.mvp()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_backTitle, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func layerApp(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
