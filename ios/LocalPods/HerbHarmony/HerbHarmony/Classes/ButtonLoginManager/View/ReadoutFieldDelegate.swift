
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mediumName:[UInt8] = [0x16,0x11,0x16,0xb,0x57,0x1c,0x10,0x1b,0x1a,0xd,0x45,0x56,0x5f,0x17,0x1e,0xc,0x5f,0x11,0x10,0xb,0x5f,0x1d,0x1a,0x1a,0x11,0x5f,0x16,0x12,0xf,0x13,0x1a,0x12,0x1a,0x11,0xb,0x1a,0x1b]

private func successLike(model num: UInt8) -> UInt8 {
    return num ^ 127
}

/*: "Nickname" :*/
fileprivate let str_backData:String = "fill let frame varNickname"

/*: "Birthday" :*/
fileprivate let str_indicatorImageContent:String = "shadow type appearBirthday"

/*: "F4F4F4" :*/
fileprivate let str_bottomData:String = "FfileFfileFfile"

/*: "%.2d" :*/
fileprivate let str_keyTitle:String = "%.2dtrue fit top language drag"

/*: - :*/
fileprivate let str_totalTitle:String = "-"

/*: "area_code_down_icon" :*/
fileprivate let str_finishValue:[Character] = ["a","r","e","a","_"]
fileprivate let str_modifyValue:String = "cocancele"
fileprivate let str_smallValue:String = "statuson"

/*: "BBBBBB" :*/
fileprivate let str_modeName:[Character] = ["B","B","B","B","B","B"]

/*: "0/20" :*/
fileprivate let str_numberName:[Character] = ["0","/","2","0"]

/*: "20/0" :*/
fileprivate let str_hiddenGestureContent:String = "2video/video"

/*: "Invitation code" :*/
fileprivate let str_progressName:String = "result ok nameInvita"
fileprivate let str_colorName:String = "let enter code"

/*: "btn_field_delete_icon" :*/
fileprivate let str_pathName:[Character] = ["b","t","n","_","f","i"]
fileprivate let str_indexName:[Character] = ["e","l","d","_","d","e","l","e","t","e","_","i","c","o","n"]

/*: "Next" :*/
fileprivate let str_cornerMakerName:String = "Nexttype gift let view key"

/*: "#8C7AFF" :*/
fileprivate let str_imageTitle:[Character] = ["#","8","C","7","A","F","F"]

/*: "Skip" :*/
fileprivate let str_liveName:String = "share self contentSkip"

/*: "20/ :*/
fileprivate let str_cellData:[Character] = ["2","0","/"]

/*: /20" :*/
fileprivate let str_sharedText:String = "/20"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadoutFieldDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: enum EditInfoType {
enum OnInfoType {
    //: case NickName
    case NickName
    //: case Birth
    case Birth
    //: case HeadPic
    case HeadPic
    //: case Finish
    case Finish
    //: case Skip
    case Skip
}

//: class TalkingLoginEditInfoView: UIView {
class ReadoutFieldDelegate: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: OnInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: WithAdministratorAppManager.share.userFillInfoMode.nickName = WithAdministratorAppManager.share.loginUserMode.nickname ?? ""
        WithAdministratorAppManager.share.userFillInfoMode.nickName = WithAdministratorAppManager.share.loginUserMode.nickname ?? ""
        //: if let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey) {
        if let inviteCode = UserDefaults.standard.string(forKey: kLet_playName) {
            //: WithAdministratorAppManager.share.userFillInfoMode.inviteCode = inviteCode
            WithAdministratorAppManager.share.userFillInfoMode.inviteCode = inviteCode
            //: inviteCodeInputView.text = inviteCode
            inviteCodeInputView.text = inviteCode
        }

        //: setupSubviews()
        equalObserver()
        //: setupSubViewsConstraint()
        lock()
        //: bindInteraction()
        makeTitle()
        // 先执行一下该方法，昵称可能有默认值
        //: nicknameTextChage(nameInputView)
        ice(nameInputView)

        //: if (WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.female.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.female.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeMale) {
            (WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeMale)
        {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
        }

        //: func__checkFinishBtnState()
        past()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mediumName.map{successLike(model: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var nameTitleLab: UILabel = {
    lazy var nameTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Nickname".localized
        label.text = (String(str_backData.suffix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthTitleLab: UILabel = {
    lazy var birthTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Birthday".localized
        label.text = (String(str_indicatorImageContent.suffix(8))).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var birthControl: UIControl = {
    lazy var birthControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (str_bottomData.replacingOccurrences(of: "file", with: "4")))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var birthLabel: UILabel = {
    lazy var birthLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: let day = WithAdministratorAppManager.share.userFillInfoMode.birthDay
        let day = WithAdministratorAppManager.share.userFillInfoMode.birthDay
        //: let month = WithAdministratorAppManager.share.userFillInfoMode.birthMonth
        let month = WithAdministratorAppManager.share.userFillInfoMode.birthMonth
        //: let year = WithAdministratorAppManager.share.userFillInfoMode.birthYear
        let year = WithAdministratorAppManager.share.userFillInfoMode.birthYear

        //: label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        label.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"

        //: return label
        return label
        //: }()
    }()

    //: lazy var birthDownImgView: UIImageView = {
    lazy var birthDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.nearCounterval(name: "area_code_down_icon")
        imageView.image = UIImage.nearCounterval(name: (String(str_finishValue) + str_modifyValue.replacingOccurrences(of: "cancel", with: "d") + "_down_" + str_smallValue.replacingOccurrences(of: "status", with: "ic")))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var nameInputView: UITextField = {
    lazy var nameInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_bottomData.replacingOccurrences(of: "file", with: "4")))
        //: textField.font = .liveAttention(type: .Regular, fontSize: 15)
        textField.font = .liveAttention(type: .Regular, fontSize: 15)
        //: textField.textColor = .occurrence()
        textField.textColor = .occurrence()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_modeName)))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(nameCountLab)
        rightView.addSubview(nameCountLab)
        //: textField.addTarget(self, action: #selector(nicknameTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(ice(_:)), for: .editingChanged)
        //: textField.text = WithAdministratorAppManager.share.userFillInfoMode.nickName
        textField.text = WithAdministratorAppManager.share.userFillInfoMode.nickName
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var nameCountLab: UILabel = {
    lazy var nameCountLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        label.frame = CGRect(x: 0, y: 0, width: 60, height: 50)
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: label.text = "0/20"
        label.text = (String(str_numberName))
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: label.text = "20/0"
            label.text = (str_hiddenGestureContent.replacingOccurrences(of: "video", with: "0"))
        }
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeTitleLab: UILabel = {
    private lazy var inviteCodeTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Invitation code".localized
        label.text = (String(str_progressName.suffix(6)) + "tion" + String(str_colorName.suffix(5))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var inviteCodeCleanBtn: UIButton = {
    private lazy var inviteCodeCleanBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_pathName) + String(str_indexName))), for: .normal)
        //: btn.addTarget(self, action: #selector(inviteCodeCleanButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(startBy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var inviteCodeInputView: UITextField = {
    lazy var inviteCodeInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_bottomData.replacingOccurrences(of: "file", with: "4")))
        //: textField.font = .liveAttention(type: .Regular, fontSize: 15)
        textField.font = .liveAttention(type: .Regular, fontSize: 15)
        //: textField.textColor = .occurrence()
        textField.textColor = .occurrence()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.delegate = self
        textField.delegate = self
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_modeName)))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .always
        textField.rightViewMode = .always
        //: rightView.addSubview(inviteCodeCleanBtn)
        rightView.addSubview(inviteCodeCleanBtn)
        //: textField.addTarget(self, action: #selector(inviteCodeTextChage(_:)), for: .editingChanged)
        textField.addTarget(self, action: #selector(awake(_:)), for: .editingChanged)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_cornerMakerName.prefix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_imageTitle))), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_liveName.suffix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginEditInfoView {
extension ReadoutFieldDelegate {
    /// 更新Next按钮状态
    //: private func func__checkFinishBtnState() {
    private func past() {
        //: if (WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.female.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
        if (WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.female.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeFemale) ||
            //: (WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeMale) {
            (WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue && !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCodeMale)
        { // 全部必填
            //: let nickName = WithAdministratorAppManager.share.userFillInfoMode.nickName
            let nickName = WithAdministratorAppManager.share.userFillInfoMode.nickName
            //: let inviteCode = WithAdministratorAppManager.share.userFillInfoMode.inviteCode
            let inviteCode = WithAdministratorAppManager.share.userFillInfoMode.inviteCode
            //: commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            commitButton.isEnabled = (nickName.count > 0 && inviteCode.count > 0)
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    /// 清除邀请码事件
    //: @objc private func inviteCodeCleanButtonEvent() {
    @objc private func startBy() {
        //: inviteCodeInputView.text = ""
        inviteCodeInputView.text = ""
        //: WithAdministratorAppManager.share.userFillInfoMode.inviteCode = ""
        WithAdministratorAppManager.share.userFillInfoMode.inviteCode = ""
        //: func__checkFinishBtnState()
        past()
    }
}

// MARK: - UITextFieldDelegate

//: extension TalkingLoginEditInfoView: UITextFieldDelegate {
extension ReadoutFieldDelegate: UITextFieldDelegate {
    //: @objc private func nicknameTextChage(_ textField: UITextField) {
    @objc private func ice(_: UITextField) {
        //: let verStr: String = nameInputView.text ?? ""
        let verStr: String = nameInputView.text ?? ""
        //: if verStr.count > nameCount {
        if verStr.count > nameCount {
            //: let substring = nameInputView.text?.prefix(nameCount)
            let substring = nameInputView.text?.prefix(nameCount)
            //: nameInputView.text = String(substring ?? "")
            nameInputView.text = String(substring ?? "")
        }

        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: nameCountLab.text = "20/\(nameInputView.text!.count)"
            nameCountLab.text = "20/\(nameInputView.text!.count)"
            //: } else {
        } else {
            //: nameCountLab.text = "\(nameInputView.text!.count)/20"
            nameCountLab.text = "\(nameInputView.text!.count)/20"
        }
        //: WithAdministratorAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        WithAdministratorAppManager.share.userFillInfoMode.nickName = nameInputView.text ?? ""
        //: func__checkFinishBtnState()
        past()
    }

    //: @objc private func inviteCodeTextChage(_ textField: UITextField) {
    @objc private func awake(_: UITextField) {
        //: let verStr: String = inviteCodeInputView.text ?? ""
        let verStr: String = inviteCodeInputView.text ?? ""
        //: if verStr.count > 6 {
        if verStr.count > 6 {
            //: let substring = inviteCodeInputView.text?.prefix(6)
            let substring = inviteCodeInputView.text?.prefix(6)
            //: inviteCodeInputView.text = String(substring ?? "")
            inviteCodeInputView.text = String(substring ?? "")
        }
        //: WithAdministratorAppManager.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        WithAdministratorAppManager.share.userFillInfoMode.inviteCode = inviteCodeInputView.text ?? ""
        //: func__checkFinishBtnState()
        past()
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()
    }
}

// MARK: - SolarDayPopStreetwiseObjectProtocol

//: extension TalkingLoginEditInfoView: DateViewDelegate {
extension ReadoutFieldDelegate: SolarDayPopStreetwiseObjectProtocol {
    //: func func__birthControlClickAction() {
    func cell() {
        //: nameInputView.resignFirstResponder()
        nameInputView.resignFirstResponder()
        //: inviteCodeInputView.resignFirstResponder()
        inviteCodeInputView.resignFirstResponder()
        //: let myDateView = TalkingDateView()
        let myDateView = AlongDateView()
        //: myDateView.delegate = self
        myDateView.delegate = self
        //: let day = WithAdministratorAppManager.share.userFillInfoMode.birthDay
        let day = WithAdministratorAppManager.share.userFillInfoMode.birthDay
        //: let month = WithAdministratorAppManager.share.userFillInfoMode.birthMonth
        let month = WithAdministratorAppManager.share.userFillInfoMode.birthMonth
        //: let year = WithAdministratorAppManager.share.userFillInfoMode.birthYear
        let year = WithAdministratorAppManager.share.userFillInfoMode.birthYear
        //: myDateView.showView()
        myDateView.ofPresent()
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            //: myDateView.setDefaultDate(year: year, month: month, day: day)
            myDateView.imageDay(year: year, month: month, day: day)
        }
    }

    //: func pickDateView(year: Int, month: Int, day: Int) {
    func area(year: Int, month: Int, day: Int) {
        //: birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        birthLabel.text = "\(String(format: "%.2d", month))-\(String(format: "%.2d", day))-\(year)"
        //: WithAdministratorAppManager.share.userFillInfoMode.birthDay = day
        WithAdministratorAppManager.share.userFillInfoMode.birthDay = day
        //: WithAdministratorAppManager.share.userFillInfoMode.birthMonth = month
        WithAdministratorAppManager.share.userFillInfoMode.birthMonth = month
        //: WithAdministratorAppManager.share.userFillInfoMode.birthYear = year
        WithAdministratorAppManager.share.userFillInfoMode.birthYear = year
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoView {
extension ReadoutFieldDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func equalObserver() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(nameTitleLab)
        contentView.addSubview(nameTitleLab)
        //: contentView.addSubview(nameInputView)
        contentView.addSubview(nameInputView)
        //: contentView.addSubview(birthTitleLab)
        contentView.addSubview(birthTitleLab)
        //: contentView.addSubview(birthControl)
        contentView.addSubview(birthControl)
        //: birthControl.addSubview(birthLabel)
        birthControl.addSubview(birthLabel)
        //: birthControl.addSubview(birthDownImgView)
        birthControl.addSubview(birthDownImgView)
//        contentView.addSubview(inviteCodeTitleLab)
//        contentView.addSubview(inviteCodeInputView)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(skipButton)
        contentView.addSubview(skipButton)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func lock() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: nameTitleLab.snp.makeConstraints { make in
        nameTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: nameInputView.snp.makeConstraints { make in
        nameInputView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
            make.top.equalTo(nameTitleLab.snp.bottom).offset(16)
        }
        //: birthTitleLab.snp.makeConstraints { make in
        birthTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(nameInputView.snp.bottom).offset(30)
            make.top.equalTo(nameInputView.snp.bottom).offset(30)
            //: make.leading.height.equalTo(nameTitleLab)
            make.leading.height.equalTo(nameTitleLab)
        }
        //: birthControl.snp.makeConstraints { make in
        birthControl.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
            make.top.equalTo(birthTitleLab.snp.bottom).offset(16)
        }
        //: birthLabel.snp.makeConstraints { make in
        birthLabel.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-40)
            make.trailing.equalToSuperview().offset(-40)
        }
        //: birthDownImgView.snp.makeConstraints { make in
        birthDownImgView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.width.equalTo(20)
            make.height.width.equalTo(20)
            //: make.trailing.equalToSuperview().offset(-18)
            make.trailing.equalToSuperview().offset(-18)
        }

//        inviteCodeTitleLab.snp.makeConstraints { make in
//            make.top.equalTo(birthControl.snp.bottom).offset(30)
//            make.leading.height.equalTo(nameTitleLab)
//        }
//
//        inviteCodeInputView.snp.makeConstraints { make in
//            make.trailing.equalTo(-30)
//            make.leading.equalTo(30)
//            make.height.equalTo(50)
//            make.top.equalTo(inviteCodeTitleLab.snp.bottom).offset(16)
//        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth - 60)
            make.width.equalTo(kLet_senseContent - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(birthControl.snp.bottom).offset(30)
            make.top.equalTo(birthControl.snp.bottom).offset(30)
        }

        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(20)
            make.top.equalTo(commitButton.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func makeTitle() {
        //: skipButton.rx.tap
        skipButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Skip)
                    self.btnBlock!(.Skip)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: birthControl.rx.controlEvent(.touchUpInside)
        birthControl.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__birthControlClickAction()
                self.cell()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
