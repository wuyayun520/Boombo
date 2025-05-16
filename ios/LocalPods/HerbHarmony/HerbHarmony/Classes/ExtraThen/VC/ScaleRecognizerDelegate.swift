
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let str_cookieVoiceName:[UInt8] = [0x60,0x5f,0x52,0x53,0x59,0x16,0x55,0x57,0x5a,0x5a,0x45,0x16,0x41,0x5f,0x5a,0x5a,0x16,0x57,0x5a,0x5a,0x16,0x43,0x45,0x53,0x16,0x42,0x5e,0x53,0x16,0x55,0x43,0x44,0x44,0x53,0x58,0x42,0x16,0x74,0x53,0x57,0x43,0x42,0x5f,0x50,0x4f,0x16,0x65,0x53,0x42,0x42,0x5f,0x58,0x51,0x45]

/*: "Cancel" :*/
fileprivate let str_errorName:String = "make group succeed letCancel"

/*: "OK" :*/
fileprivate let str_modelValue:String = "Otalk"

/*: "Done" :*/
fileprivate let str_shareName:String = "Donecount content"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class ScaleRecognizerDelegate: NameViewController {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.startRunning()
        }
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stopRunning()
        }
        //: popGesture(isOpen: true)
        equalOpen(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        equalOpen(isOpen: false)
        //: setupSubviews()
        become()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: STFilterView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kLet_appMarginText+50), width: ScreenWidth, height: 258+kLet_appMarginText+50))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: kLet_environmentClickValue - (258 + kLet_appMarginText + 50), width: kLet_senseContent, height: 258 + kLet_appMarginText + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension ScaleRecognizerDelegate {
    //: @objc func backClick() {
    @objc func detail() {
        //: let config = ShowAlertConfig()
        let config = ManagerAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.liveAttention(type: .Medium, fontSize: 18)
        config.textFont = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        VoiceAlertShow.customForTotal(message: String(bytes: str_cookieVoiceName.map{$0^54}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_errorName.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension ScaleRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func become() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(str_shareName.prefix(4))).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(detail), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
