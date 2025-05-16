
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_popData:[UInt8] = [0x5d,0x5a,0x5d,0x40,0x1c,0x57,0x5b,0x50,0x51,0x46,0xe,0x1d,0x14,0x5c,0x55,0x47,0x14,0x5a,0x5b,0x40,0x14,0x56,0x51,0x51,0x5a,0x14,0x5d,0x59,0x44,0x58,0x51,0x59,0x51,0x5a,0x40,0x51,0x50]

private func managerMessage(direction num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "Allow push notifications" :*/
fileprivate let str_withoutData:String = "extension self var manager varAllow "
fileprivate let str_equalData:[Character] = ["p","u","s"]
fileprivate let str_shadowAttentionValue:String = "path self manager modelh noti"
fileprivate let str_labelData:String = "tiups"

/*: "You don't miss out on chat messages when someone wants to chat with you." :*/
fileprivate let str_appText:[UInt8] = [0x67,0x51,0x4b,0x1e,0x5a,0x51,0x50,0x19,0x4a,0x1e,0x53,0x57,0x4d,0x4d,0x1e,0x51,0x4b,0x4a,0x1e,0x51,0x50,0x1e,0x5d,0x56,0x5f,0x4a,0x1e,0x53,0x5b,0x4d,0x4d,0x5f,0x59,0x5b,0x4d,0x1e,0x49,0x56,0x5b,0x50,0x1e,0x4d,0x51,0x53,0x5b,0x51,0x50,0x5b,0x1e,0x49,0x5f,0x50,0x4a,0x4d,0x1e,0x4a,0x51,0x1e,0x5d,0x56,0x5f,0x4a,0x1e,0x49,0x57,0x4a,0x56,0x1e,0x47,0x51,0x4b,0x10]

private func messageStyle(actual num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "Open" :*/
fileprivate let str_textValue:String = "hidden makeOpen"

/*: "icon_chats_subtract" :*/
fileprivate let str_equalTitle:String = "icovoice"
fileprivate let str_userCornerData:[Character] = ["_","s","u"]
fileprivate let str_midBringName:String = "bttoact"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToTipView.swift
//  HerbHarmony
//
//  Created by Hemming on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingNoticeTipView: UIView {
class ToTipView: UIView {
    //: public var viewHeight: CGFloat = 0
    public var viewHeight: CGFloat = 0

    //: public var closeBtnBlock: (() -> Void)?
    public var closeBtnBlock: (() -> Void)?

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_popData.map{managerMessage(direction: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        addEqual()
        //: setupSubViewsConstraint()
        circulate()
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Allow push notifications".localized
        lab.text = (String(str_withoutData.suffix(6)) + String(str_equalData) + String(str_shadowAttentionValue.suffix(6)) + "fica" + str_labelData.replacingOccurrences(of: "up", with: "on")).localized
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 15)
        lab.font = UIFont.behindUpRoom(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleValueLab: UILabel = {
    private lazy var titleValueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You don't miss out on chat messages when someone wants to chat with you.".localized
        lab.text = String(bytes: str_appText.map{messageStyle(actual: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .colorPush()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.unprecedented(fontSize: 13)
        lab.font = UIFont.unprecedented(fontSize: 13)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_textValue.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundColor(color: UIColor.alright(), forState: .normal)
        btn.backgroundBlock(color: UIColor.alright(), forState: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(loadDoing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_equalTitle.replacingOccurrences(of: "voice", with: "n") + "_chats" + String(str_userCornerData) + str_midBringName.replacingOccurrences(of: "to", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(nog), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: @objc func openBtnClick() {
    @objc func loadDoing() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
    }

    //: @objc func closeBtnClick() {
    @objc func nog() {
        //: self.closeBtnBlock?()
        self.closeBtnBlock?()
    }
}

//: extension TalkingNoticeTipView {
extension ToTipView {
    /// 创建视图
    //: private func setupSubviews() {
    private func addEqual() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(titleValueLab)
        addSubview(titleValueLab)
        //: addSubview(openBtn)
        addSubview(openBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)

        //: viewHeight = titleValueLab.sizeThatFits(CGSize(width: ScreenWidth-110, height: CGFLOAT_MAX)).height + 66
        viewHeight = titleValueLab.sizeThatFits(CGSize(width: kLet_senseContent - 110, height: CGFLOAT_MAX)).height + 66
        //: self.frame = CGRect(x: 0, y: StatusBarHeight, width: ScreenWidth, height: viewHeight)
        self.frame = CGRect(x: 0, y: kLet_messageContent, width: kLet_senseContent, height: viewHeight)
    }

    //: private func setupSubViewsConstraint() {
    private func circulate() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.top.trailing.bottom.equalToSuperview().inset(10)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
        }
        //: titleValueLab.snp.makeConstraints { make in
        titleValueLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
