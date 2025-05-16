
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_deadlineDismissValue:[UInt8] = [0x82,0x87,0x82,0x8d,0x41,0x7c,0x88,0x7d,0x7e,0x8b,0x53,0x42,0x39,0x81,0x7a,0x8c,0x39,0x87,0x88,0x8d,0x39,0x7b,0x7e,0x7e,0x87,0x39,0x82,0x86,0x89,0x85,0x7e,0x86,0x7e,0x87,0x8d,0x7e,0x7d]

fileprivate func keySucceed(user num: UInt8) -> UInt8 {
    let value = Int(num) + 231
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_more_beauty_nor" :*/
fileprivate let str_centerMessageSexName:String = "view selfbtn_l"
fileprivate let str_addDataName:String = "mwithe"
fileprivate let str_taskInsideName:String = "exist let index withy_nor"

/*: "Beautify" :*/
fileprivate let str_appValue:String = "full model account top progressBeau"

/*: "btn_live_more_switch_nor" :*/
fileprivate let str_styleValue:String = "btn_guard dismiss record"
fileprivate let str_enableData:[Character] = ["o","r","e","_","s","w","i","t","c"]
fileprivate let str_pathText:String = "data heighth_nor"

/*: "Switch" :*/
fileprivate let str_labelLightText:String = "Switchmatch any error gesture var"

/*: "btn_live_more_stop_nor" :*/
fileprivate let str_viewName:String = "view user classbtn_"
fileprivate let str_atContent:String = "_mormake image if"
fileprivate let str_removeValue:String = "op_norlet for"

/*: "Stop Live" :*/
fileprivate let str_appEqualName:String = "error frame if selfStop Live"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToInfoView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomMoreView: UIView {
class ToInfoView: UIView {
    //: private let contentV_H = (104+kLet_appMarginText)
    private let contentV_H = (104 + kLet_appMarginText)
    //: private let beautifySettingView_H = (258+kLet_appMarginText+50)
    private let beautifySettingView_H = (258 + kLet_appMarginText + 50)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        ofLocal()
        //: setupSubViewsConstraint()
        byConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_deadlineDismissValue.map{keySucceed(user: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(countClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 0
        v.spacing = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var beautifyBtn: TalkingButton = {
    private lazy var beautifyBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_more_beauty_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_centerMessageSexName.suffix(5)) + "ive_" + str_addDataName.replacingOccurrences(of: "with", with: "or") + "_beaut" + String(str_taskInsideName.suffix(5)))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.setTitle("Beautify".localized, for: .normal)
        btn.setTitle((String(str_appValue.suffix(4)) + "tify").localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(beautifyButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonCapacity), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var switchBtn: TalkingButton = {
    private lazy var switchBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_more_switch_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_styleValue.prefix(4)) + "live_m" + String(str_enableData) + String(str_pathText.suffix(5)))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.setTitle("Switch".localized, for: .normal)
        btn.setTitle((String(str_labelLightText.prefix(6))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(switchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(doingOver), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stopBtn: TalkingButton = {
    private lazy var stopBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_more_stop_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_viewName.suffix(4)) + "live" + String(str_atContent.prefix(4)) + "e_st" + String(str_removeValue.prefix(6)))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.setTitle("Stop Live".localized, for: .normal)
        btn.setTitle((String(str_appEqualName.suffix(9))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(stopLiveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sizeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 美颜视图
    //: private lazy var beautifyView: STBeautyAdjustView = {
    private lazy var beautifyView: STBeautyAdjustView = {
        //: let view = STBeautyAdjustView.init(frame: CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H))
        let view = STBeautyAdjustView(frame: CGRect(x: 0, y: kLet_environmentClickValue, width: kLet_senseContent, height: beautifySettingView_H))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomMoreView {
extension ToInfoView {
    /// 停止直播
    //: private func req_stopLive() {
    private func encampViewLive() {
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

// MARK: - Event

//: extension TalkingLiveRoomMoreView {
extension ToInfoView {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func countClick() {
        //: dismiss()
        wait()
    }

    /// 美颜按钮
    //: @objc private func beautifyButtonClick() {
    @objc private func buttonCapacity() {
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: self.beautifyView.isHidden = false
        self.beautifyView.isHidden = false
        //: self.beautifyView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H)
        self.beautifyView.frame = CGRect(x: 0, y: kLet_environmentClickValue, width: kLet_senseContent, height: beautifySettingView_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.beautifyView.frame.origin.y -= self.beautifyView.height
            self.beautifyView.frame.origin.y -= self.beautifyView.height
        }
    }

    /// 切换摄像头按钮
    //: @objc private func switchButtonClick() {
    @objc private func doingOver() {
        //: dismiss()
        wait()
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: TalkingLiveManager.shared().switchTRTCCamer(front: switchBtn.isSelected)
        SectionPushListener.cover().femaleBy(front: switchBtn.isSelected)
        //: switchBtn.isSelected = !switchBtn.isSelected
        switchBtn.isSelected = !switchBtn.isSelected
    }

    /// 停止直播按钮
    //: @objc private func stopLiveButtonClick() {
    @objc private func sizeClick() {
        //: dismiss()
        wait()
        //: req_stopLive()
        encampViewLive()
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMoreView {
extension ToInfoView {
    /// 展示视图
    //: func showView() {
    func phosphoresceFeeCuttingEdge() {
        //: currentViewController()?.view.addSubview(self)
        actionController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: kLet_environmentClickValue, width: kLet_senseContent, height: contentV_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func wait() {
        //: if self.beautifyView.isHidden == false {
        if self.beautifyView.isHidden == false {
            // 保存美颜设置
            //: STFilterCacheCost.share.store()
            STFilterCacheCost.share.store()

            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.beautifyView.frame.origin.y += self.beautifyView.height
                self.beautifyView.frame.origin.y += self.beautifyView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.beautifyView.isHidden = true
                self.beautifyView.isHidden = true
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }

            //: } else {
        } else {
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.contentView.frame.origin.y += self.contentView.height
                self.contentView.frame.origin.y += self.contentView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMoreView {
extension ToInfoView {
    /// 添加视图
    //: private func setupSubviews() {
    private func ofLocal() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(beautifyBtn)
        stackView.addArrangedSubview(beautifyBtn)
        //: stackView.addArrangedSubview(switchBtn)
        stackView.addArrangedSubview(switchBtn)
        //: stackView.addArrangedSubview(stopBtn)
        stackView.addArrangedSubview(stopBtn)
        //: addSubview(beautifyView)
        addSubview(beautifyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func byConstraint() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
        }
        //: let width = ScreenWidth/4
        let width = kLet_senseContent / 4
        //: beautifyBtn.snp.makeConstraints { make in
        beautifyBtn.snp.makeConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
            //: make.height.equalTo(contentV_H-kLet_appMarginText)
            make.height.equalTo(contentV_H - kLet_appMarginText)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
        //: stopBtn.snp.makeConstraints { make in
        stopBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
    }
}
