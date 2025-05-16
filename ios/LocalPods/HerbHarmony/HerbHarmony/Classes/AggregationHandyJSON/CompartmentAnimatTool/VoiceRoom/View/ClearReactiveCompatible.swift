
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ageData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#45003A" :*/
fileprivate let str_rowImageData:[Character] = ["#","4","5","0","0","3","A"]

/*: "#2D0059" :*/
fileprivate let str_userTitle:String = "#2D0059bottom up self"

/*: "party_close_btn" :*/
fileprivate let str_thanText:[Character] = ["p","a","r","t","y","_"]
fileprivate let str_toName:[Character] = ["c","l","o"]
fileprivate let str_matchTitle:String = "se_btnequal room"

/*: "btn_party_minimal_nor" :*/
fileprivate let str_aboutName:String = "headn"
fileprivate let str_liveOfData:[Character] = ["_","p","a","r","t","y","_","m","i","n","i","m","a","l","_","n","o","r"]

/*: "Minimal" :*/
fileprivate let str_equalText:String = "fatal equal custom show pushMinim"
fileprivate let str_videoText:String = "buttonl"

/*: "btn_party_quit_nor" :*/
fileprivate let str_hiddenValue:String = "btn_paimage need equal"
fileprivate let str_colorRedValue:String = "change intimate else clearit_nor"

/*: "Quit" :*/
fileprivate let str_viewData:String = "Quitblock image self return"

/*: "btn_party_close_nor" :*/
fileprivate let str_imageName:[Character] = ["b","t","n","_"]
fileprivate let str_frameTitle:[Character] = ["p","a","r","t","y","_","c","l","o","s","e","_","n","o","r"]

/*: "Close" :*/
fileprivate let str_makeText:String = "Closelabel var user"

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let str_pathPlayerName:[UInt8] = [0x99,0xc4,0x75,0xce,0xc4,0xca,0x75,0xcc,0xb6,0xc3,0xc9,0x75,0xc9,0xc4,0x75,0xb8,0xc1,0xc4,0xc8,0xba,0x75,0xc9,0xbd,0xba,0x75,0xc7,0xc4,0xc4,0xc2,0x94,0x75,0x96,0xbb,0xc9,0xba,0xc7,0x75,0xb8,0xc1,0xc4,0xc8,0xbe,0xc3,0xbc,0x75,0xc9,0xbd,0xba,0x75,0xc7,0xc4,0xc4,0xc2,0x81,0x75,0xb6,0xc1,0xc1,0x75,0xca,0xc8,0xba,0xc7,0xc8,0x75,0xcc,0xbe,0xc1,0xc1,0x75,0xb7,0xba,0x75,0xc7,0xba,0xc2,0xc4,0xcb,0xba,0xb9,0x75,0xbb,0xc7,0xc4,0xc2,0x75,0xc9,0xbd,0xba,0x75,0xc7,0xc4,0xc4,0xc2,0x83]

fileprivate func kindServer(model num: UInt8) -> UInt8 {
    let value = Int(num) - 85
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_menuName:String = "input contact userCancel"

/*: "OK" :*/
fileprivate let str_viewTitle:String = "ok"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearReactiveCompatible.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class ClearReactiveCompatible: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
    private let isAnchor = (String(StackMThen.estimated().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        forefront()
        //: setupSubViewsConstraint()
        isAction()
        //: addNotifications()
        notificationsSection()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ageData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (String(str_rowImageData)))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(str_userTitle.prefix(7))))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_thanText) + String(str_toName) + String(str_matchTitle.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(quantityervalDoing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_aboutName.replacingOccurrences(of: "head", with: "bt") + String(str_liveOfData))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(roundBlock), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 17)
        lab.font = UIFont.behindUpRoom(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(str_equalText.suffix(5)) + str_videoText.replacingOccurrences(of: "button", with: "a")).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_hiddenValue.prefix(6)) + "rty_qu" + String(str_colorRedValue.suffix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(page), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 17)
        lab.font = UIFont.behindUpRoom(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(str_viewData.prefix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_imageName) + String(str_frameTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowTo), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 17)
        lab.font = UIFont.behindUpRoom(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(str_makeText.prefix(5))).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension ClearReactiveCompatible {
    /// 展示视图
    //: func show() {
    func showMomentContent() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: IconThen.getWindow().addSubview(self)
        IconThen.getBind().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func quantityervalDoing() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func roundBlock() {
        //: self.dismiss()
        self.quantityervalDoing()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        StackMThen.estimated().dataQueryed()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func page() {
        //: self.dismiss()
        self.quantityervalDoing()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        StackMThen.estimated().chemistryLabResource()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func belowTo() {
        //: let config = ShowAlertConfig()
        let config = ManagerAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        VoiceAlertShow.customForTotal(message: String(bytes: str_pathPlayerName.map{kindServer(model: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_menuName.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            StackMThen.estimated().chemistryLabResource()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            BindReqTool.imageCompletion(roomId: StackMThen.estimated().partyModel.roomId)
            //: self.dismiss()
            self.quantityervalDoing()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension ClearReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func forefront() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func isAction() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(kLet_messageContent + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func notificationsSection() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(quantityervalDoing),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_clickKeyTitle,
                                               //: object: nil)
                                               object: nil)
    }
}
