
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pathValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_video_minimize" :*/
fileprivate let str_videoName:[Character] = ["b","t","n","_","v","i","d","e","o","_"]
fileprivate let str_arrowName:[Character] = ["m","i","n"]
fileprivate let str_mediumViewText:[Character] = ["i","m","i","z","e"]

/*: "btn_video_drop_nor" :*/
fileprivate let str_responseListName:[Character] = ["b","t","n","_","v","i","d","e","o","_","d","r"]
fileprivate let str_firstData:String = "event dataop_nor"

/*: "btn_video_turn_nor" :*/
fileprivate let str_thanName:[Character] = ["b"]
fileprivate let str_textValue:[Character] = ["t","n","_","v","i","d","e","o","_","t","u","r","n","_","n","o","r"]

/*: "btn_video_turn_pre" :*/
fileprivate let str_rootValue:[Character] = ["b","t","n","_","v","i","d","e","o","_","t","u","r","n","_","p","r","e"]

/*: "Switch" :*/
fileprivate let str_modelHiName:[Character] = ["S","w","i","t","c","h"]

/*: "btn_video_start_nor" :*/
fileprivate let str_topText:String = "btn_vself path view white view"
fileprivate let str_ofValue:String = "add to block keyideo_"
fileprivate let str_titleData:[Character] = ["t","_","n","o","r"]

/*: "btn_video_start_pre" :*/
fileprivate let str_countData:[Character] = ["b"]
fileprivate let str_socialValue:String = "tn_vidin at select user"
fileprivate let str_faceArrayName:String = "rt_premanager view close"

/*: "Camera On" :*/
fileprivate let str_attentionContent:String = "Camerpath var at table"

/*: "00:00" :*/
fileprivate let str_frameText:String = "postpost:postpost"

/*: "Camera must be on" :*/
fileprivate let str_nameTableValue:String = "model statusCamera"
fileprivate let str_labelModelValue:String = "let domain track equallyt be"
fileprivate let str_messageName:[Character] = [" ","o","n"]

/*: "Camera Off" :*/
fileprivate let str_rawData:String = "area path notCame"
fileprivate let str_timeValue:[Character] = ["f","f"]

/*: "%02i:%02i" :*/
fileprivate let str_backgroundValue:[Character] = ["%","0","2","i",":"]
fileprivate let str_styleValue:String = "%02idrunk reason"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingCallView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class LeadingCallView: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: ModelQuantityObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = StandardChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: StandardChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        anCell()
        //: setupSubViewsConstraint()
        indexSetup()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        statuteTitle()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pathValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        commentTimer()
        //: invalidateIdleTimer()
        cutenessTimer()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageState), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_videoName) + String(str_arrowName) + String(str_mediumViewText))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeMinimize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_responseListName) + String(str_firstData.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hangup), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_thanName) + String(str_textValue))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_rootValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(outsideGiftClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.unprecedented(fontSize: 15)
        lab.font = UIFont.unprecedented(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (String(str_modelHiName)).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_topText.prefix(5)) + String(str_ofValue.suffix(5)) + "star" + String(str_titleData))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_countData) + String(str_socialValue.prefix(6)) + "eo_sta" + String(str_faceArrayName.prefix(6)))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.unprecedented(fontSize: 15)
        lab.font = UIFont.unprecedented(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(str_attentionContent.prefix(5)) + "a On").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 18)
        lab.font = UIFont.behindUpRoom(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension LeadingCallView {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func statuteTitle() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (str_frameText.replacingOccurrences(of: "post", with: "0"))
        //: startTalkCount()
        totUp()
        //: touchHiddenTimer()
        itemCollection()
        //: updateLayout()
        tum()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func makeMinimize() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.squareSearched()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func sinceOf(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func hangup() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        kLet_voiceText.quantityingTime(eventID: kLet_endText)
        //: closeViewClick()
        viewLog()
    }

    //: func closeViewClick() {
    func viewLog() {
        //: self.destroryTimer()
        self.commentTimer()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.comeOutAtRequest()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func endTo() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.appText()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func viewDismiss() {
        //: acceptButtonClick()
        endTo()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        clickDown()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func freeSpokenClick() {
        //: acceptButtonClick()
        endTo()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        clickDown()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func outsideGiftClick() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if kLet_tabTitle == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.atShow(showMsg: (String(str_nameTableValue.suffix(6)) + " mus" + String(str_labelModelValue.suffix(4)) + String(str_messageName)).localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.videoVoice(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func clickDown() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(str_rawData.suffix(4)) + "ra O" + String(str_timeValue)).localized : (String(str_attentionContent.prefix(5)) + "a On").localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.inviteTo(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func imageState() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            cutenessTimer()
            //: } else {
        } else {
            //: touchHiddenTimer()
            itemCollection()
        }
    }

    //: private func destroryTimer() {
    private func commentTimer() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension LeadingCallView {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func totUp() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.viewLog()
            }
            //: self.changeTalkTime()
            self.changeToTime()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func changeToTime() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension LeadingCallView {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func itemCollection() {
        //: invalidateIdleTimer()
        cutenessTimer()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(addView), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func cutenessTimer() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(addView), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func addView() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.imageState()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension LeadingCallView {
    /// 添加视图
    //: private func setupSubviews() {
    private func anCell() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func indexSetup() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_messageContent + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kLet_appMarginText-53)
            make.bottom.equalTo(-kLet_appMarginText - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(kLet_messageContent + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func tum() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kLet_appMarginText-53)
            make.bottom.equalTo(-kLet_appMarginText - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
