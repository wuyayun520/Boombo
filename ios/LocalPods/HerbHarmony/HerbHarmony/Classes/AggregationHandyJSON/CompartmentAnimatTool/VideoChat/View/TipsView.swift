
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleValue:[UInt8] = [0x77,0x70,0x77,0x6a,0x36,0x7d,0x71,0x7a,0x7b,0x6c,0x24,0x37,0x3e,0x76,0x7f,0x6d,0x3e,0x70,0x71,0x6a,0x3e,0x7c,0x7b,0x7b,0x70,0x3e,0x77,0x73,0x6e,0x72,0x7b,0x73,0x7b,0x70,0x6a,0x7b,0x7a]

private func dataLab(table num: UInt8) -> UInt8 {
    return num ^ 30
}

/*: "icon_free_call_bg_coundown" :*/
fileprivate let str_transformName:String = "to name self coloricon_fr"
fileprivate let str_directionValue:[Character] = ["e","e","_","c","a","l","l","_","b","g","_","c","o","u","n","d","o","w","n"]

/*: "icon_free_call_countdown" :*/
fileprivate let str_blockContent:[Character] = ["i","c","o","n","_","f","r","e","e","_","c","a","l","l","_","c","o","u","n","t","d","o"]
fileprivate let str_layerData:[Character] = ["w","n"]

/*: "Not enough coins" :*/
fileprivate let str_customName:[Character] = ["N","o","t"," ","e","n"]
fileprivate let str_editData:String = "ough caction equal view"

/*: "#8566FF" :*/
fileprivate let str_valueContent:String = "voice size transition#8566FF"

/*: "Recharge" :*/
fileprivate let str_reportData:[Character] = ["R","e","c","h","a","r","g","e"]

/*: "%@s Remaining" :*/
fileprivate let str_topName:String = "sibling load height%@s Re"
fileprivate let str_toValue:[Character] = ["m","a","i","n","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TipsView.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/4/29.
//

//: import UIKit
import UIKit

/// 免费通话剩余20s倒计时页面
//: class TalkingFreeCallRechargeTipsView: UIView {
class TipsView: UIView {
    // MARK: - 属性声明

    //: var touchRechargeBtnBlock: (() -> Void)?
    var touchRechargeBtnBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        concatenate()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleValue.map{dataLab(table: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.cornerRadius = 12
        v.layer.cornerRadius = 12
        //: return v
        return v
        //: }()
    }()

    //: lazy var topBgImagV: UIImageView = {
    lazy var topBgImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.nearCounterval(name: "icon_free_call_bg_coundown")
        imag.image = UIImage.nearCounterval(name: (String(str_transformName.suffix(7)) + String(str_directionValue)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImagV: UIImageView = {
    lazy var topImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.nearCounterval(name: "icon_free_call_countdown")
        imag.image = UIImage.nearCounterval(name: (String(str_blockContent) + String(str_layerData)))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Not enough coins".localized
        lb.text = (String(str_customName) + String(str_editData.prefix(6)) + "oins").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.font = UIFont.behindUpRoom(fontSize: 12)
        lb.font = UIFont.behindUpRoom(fontSize: 12)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var countLB: UILabel = {
    lazy var countLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.init(hex: "#8566FF")
        lb.textColor = UIColor(hex: (String(str_valueContent.suffix(7))))
        //: lb.font = UIFont.unprecedented(fontSize: 10)
        lb.font = UIFont.unprecedented(fontSize: 10)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var callBtn: UIButton = {
    lazy var callBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.layer.cornerRadius = 10
        btn.layer.cornerRadius = 10
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        //: btn.setTitle("Recharge".localized, for: .normal)
        btn.setTitle((String(str_reportData)).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(anAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingFreeCallRechargeTipsView {
extension TipsView {
    //: func setTipsMessage(count: Int) {
    func dataSnuggle(count: Int) {
        //: countLB.text = "%@s Remaining".localizedArguments(count)
        countLB.text = (String(str_topName.suffix(6)) + String(str_toValue)).localizedArguments(count)
    }

    //: @objc private func callBtnClick() {
    @objc private func anAction() {
        //: LeadingEqualReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        LeadingEqualReactiveCompatible.share.messageOf(webViewType: .RechargeHalfPage)
        //: touchRechargeBtnBlock?()
        touchRechargeBtnBlock?()
    }
}

//: extension TalkingFreeCallRechargeTipsView {
extension TipsView {
    //: private func setupSubviews() {
    private func concatenate() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topBgImagV)
        contentView.addSubview(topBgImagV)
        //: addSubview(topImagV)
        addSubview(topImagV)
        //: contentView.addSubview(tipsLB)
        contentView.addSubview(tipsLB)
        //: contentView.addSubview(countLB)
        contentView.addSubview(countLB)
        //: contentView.addSubview(callBtn)
        contentView.addSubview(callBtn)

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
        }
        //: topBgImagV.snp.makeConstraints { make in
        topBgImagV.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(57)
            make.height.equalTo(57)
        }
        //: topImagV.snp.makeConstraints { make in
        topImagV.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(37)
            make.width.equalTo(37)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }

        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.top.equalTo(38)
            make.top.equalTo(38)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: countLB.snp.makeConstraints { make in
        countLB.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLB.snp.bottom).offset(4)
            make.top.equalTo(tipsLB.snp.bottom).offset(4)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(countLB.snp.bottom).offset(8)
            make.top.equalTo(countLB.snp.bottom).offset(8)
            //: make.size.equalTo(CGSize.init(width: 72, height: 20))
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
    }
}
