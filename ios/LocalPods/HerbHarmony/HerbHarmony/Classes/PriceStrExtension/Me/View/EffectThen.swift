
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mediumData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "bg_message_top" :*/
fileprivate let str_slideText:String = "bg_messvideo manager not style model"
fileprivate let str_loadTitle:String = "atool"
fileprivate let str_titleContentData:[Character] = ["e","_","t","o","p"]

/*: "#432813" :*/
fileprivate let str_errorName:String = "#equal2813"

/*: "me_premium_subscribed" :*/
fileprivate let str_picValue:[UInt8] = [0xc2,0xca,0xf0,0xdf,0xdd,0xca,0xc2,0xc6,0xda,0xc2,0xf0,0xdc,0xda,0xcd,0xdc,0xcc,0xdd,0xc6,0xcd,0xca,0xcb]

private func targetCell(size num: UInt8) -> UInt8 {
    return num ^ 175
}

/*: "me_premium_upgrade" :*/
fileprivate let str_bottomContent:String = "top interactionme_pr"
fileprivate let str_liveTitleData:String = "m_upgradetask if"

/*: "Expiration:  :*/
fileprivate let str_keyText:String = "touch category viewExpir"
fileprivate let str_atPartyWithContent:[Character] = [" "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EffectThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMeUpgradeCardCell: UITableViewCell {
class EffectThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: setupSubviews()
        labStart()
        //: setupSubViewsConstraint()
        needSection()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mediumData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.nearCounterval(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.nearCounterval(name: (String(str_slideText.prefix(7)) + str_loadTitle.replacingOccurrences(of: "tool", with: "g") + String(str_titleContentData))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var expTimeLab: UILabel = {
    private lazy var expTimeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor(hex: "#432813")
        lab.textColor = UIColor(hex: (str_errorName.replacingOccurrences(of: "equal", with: "43")))
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 14)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var tapGesture: UITapGestureRecognizer = {
    lazy var tapGesture: UITapGestureRecognizer = {
        //: let t = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        let t = UITapGestureRecognizer(target: self, action: #selector(atomicSum85Join(_:)))
        //: return t
        return t
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeUpgradeCardCell {
extension EffectThen {
    /// 点击跳转事件
    //: @objc func tapAction(_ tapGesture: UITapGestureRecognizer) {
    @objc func atomicSum85Join(_: UITapGestureRecognizer) {
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
        LeadingEqualReactiveCompatible.share.nowKeyLog()
    }
}

// MARK: - Layout

//: extension TalkingMeUpgradeCardCell {
extension EffectThen {
    /// 刷新视图
    //: func refreshUpgradeCard() {
    func reload() {
        //: let imgNameStr = WithAdministratorAppManager.share.loginUserMode.loungePlus ? "me_premium_subscribed" : "me_premium_upgrade"
        let imgNameStr = WithAdministratorAppManager.share.loginUserMode.loungePlus ? String(bytes: str_picValue.map{targetCell(size: $0)}, encoding: .utf8)! : (String(str_bottomContent.suffix(5)) + "emiu" + String(str_liveTitleData.prefix(9)))
        //: bgImgView.image = UIImage.nearCounterval(name: imgNameStr)
        bgImgView.image = UIImage.nearCounterval(name: imgNameStr)
        //: expTimeLab.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        expTimeLab.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        //: expTimeLab.text = "Expiration: \(WithAdministratorAppManager.share.loginUserMode.loungePlusExpire)"
        expTimeLab.text = (String(str_keyText.suffix(5)) + "ation:" + String(str_atPartyWithContent)) + "\(WithAdministratorAppManager.share.loginUserMode.loungePlusExpire)"
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func labStart() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: contentView.addSubview(expTimeLab)
        contentView.addSubview(expTimeLab)
        //: bgImgView.addGestureRecognizer(tapGesture)
        bgImgView.addGestureRecognizer(tapGesture)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func needSection() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(actualWidth(w: 86))
            make.height.equalTo(actualWidth(w: 86))
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }

        //: expTimeLab.snp.makeConstraints { make in
        expTimeLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 45))
            make.top.equalTo(actualWidth(w: 45))
            //: make.leading.equalTo(actualWidth(w: 58))
            make.leading.equalTo(actualWidth(w: 58))
        }
    }
}
