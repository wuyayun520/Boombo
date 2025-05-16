
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushManagerVideoTitle:[UInt8] = [0xd4,0xd3,0xd4,0xc9,0x95,0xde,0xd2,0xd9,0xd8,0xcf,0x87,0x94,0x9d,0xd5,0xdc,0xce,0x9d,0xd3,0xd2,0xc9,0x9d,0xdf,0xd8,0xd8,0xd3,0x9d,0xd4,0xd0,0xcd,0xd1,0xd8,0xd0,0xd8,0xd3,0xc9,0xd8,0xd9]

private func modeHidden(sex num: UInt8) -> UInt8 {
    return num ^ 189
}

/*: "icon_me_income" :*/
fileprivate let str_whiteTitle:String = "self try self addicon_m"
fileprivate let str_infoContent:[Character] = ["e"]

/*: "Income" :*/
fileprivate let str_fillNoteValue:String = "Incomenormal var model"

/*: "icon_me_male_wallet" :*/
fileprivate let str_viewValue:String = "icoposition"
fileprivate let str_actionData:String = "mimagee"

/*: "Wallet" :*/
fileprivate let str_fatalName:String = "Walletname show"

/*: "#7189F7" :*/
fileprivate let str_likeData:String = "match dimension leading bottom#7189F"
fileprivate let str_colorValue:[Character] = ["7"]

/*: "Level" :*/
fileprivate let str_progressValue:[Character] = ["L","e","v","e","l"]

/*: "icon_me_level" :*/
fileprivate let str_makeValue:String = "make manager managericon_"
fileprivate let str_dateTitle:String = "eveidentity"

/*: "$ :*/
fileprivate let str_partyLabData:[Character] = ["$"]

/*: "Verification needed before balance check" :*/
fileprivate let str_sharedTitle:[UInt8] = [0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x63,0x6e,0x61,0x6c,0x61,0x62,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x64,0x65,0x64,0x65,0x65,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x56]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class CollectionViewCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        asCurrent()
        //: setupSubViewsConstraint()
        giftConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushManagerVideoTitle.map{modeHidden(sex: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(effectClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue && WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: icon.image = UIImage.nearCounterval(name: "icon_me_income")
            icon.image = UIImage.nearCounterval(name: (String(str_whiteTitle.suffix(6)) + "e_incom" + String(str_infoContent)))
            //: lab.text = "Income".localized
            lab.text = (String(str_fillNoteValue.prefix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.nearCounterval(name: "icon_me_male_wallet")
            icon.image = UIImage.nearCounterval(name: (str_viewValue.replacingOccurrences(of: "position", with: "n") + "_me_" + str_actionData.replacingOccurrences(of: "image", with: "al") + "_wallet"))
            //: lab.text = "Wallet".localized
            lab.text = (String(str_fatalName.prefix(6))).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_likeData.suffix(6)) + String(str_colorValue)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(belowEnableceClick), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(str_progressValue)).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.nearCounterval(name: "icon_me_level")
        icon.image = UIImage.nearCounterval(name: (String(str_makeValue.suffix(5)) + "me_l" + str_dateTitle.replacingOccurrences(of: "identity", with: "l")))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (String(str_likeData.suffix(6)) + String(str_colorValue)))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension CollectionViewCell {
    //: func setViewData() {
    func straddleSelect() {
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: goldCoinsNum.text = "$\(WithAdministratorAppManager.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(WithAdministratorAppManager.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(WithAdministratorAppManager.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(WithAdministratorAppManager.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = WithAdministratorAppManager.share.loginUserMode.level
        myLevelNum.text = WithAdministratorAppManager.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func effectClick() {
        //: incomeClick()
        viewVideoAppear()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func belowEnableceClick() {
        //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .Level)
        LeadingEqualReactiveCompatible.share.enableLine(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func viewVideoAppear() {
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.unknown.rawValue || WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.successMsg(showMsg: String(bytes: str_sharedTitle.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = WithRecognizerDelegate()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.actionController()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.successMsg(showMsg: String(bytes: str_sharedTitle.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = CommensurateViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.actionController()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .Balance)
                LeadingEqualReactiveCompatible.share.enableLine(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension CollectionViewCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func asCurrent() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func giftConstraint() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (kLet_senseContent - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
