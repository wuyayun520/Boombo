
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_containerName:[UInt8] = [0xa4,0xa3,0xa4,0xb9,0xe5,0xae,0xa2,0xa9,0xa8,0xbf,0xf7,0xe4,0xed,0xa5,0xac,0xbe,0xed,0xa3,0xa2,0xb9,0xed,0xaf,0xa8,0xa8,0xa3,0xed,0xa4,0xa0,0xbd,0xa1,0xa8,0xa0,0xa8,0xa3,0xb9,0xa8,0xa9]

private func actionDeviceTab(page num: UInt8) -> UInt8 {
    return num ^ 205
}

/*: "Enter phone number" :*/
fileprivate let str_sizeText:String = "Enter content var model item"
fileprivate let str_videoServiceData:String = "equal let make call context number"

/*: "Enter Email Address" :*/
fileprivate let str_mediumValue:String = "show false senseEnter "
fileprivate let str_systemName:String = "Email cookie block"
fileprivate let str_contentValue:String = "player section center cellAddress"

/*: "F4F4F4" :*/
fileprivate let str_statusTitle:String = "memorymemorymemory"

/*: "America(+1)" :*/
fileprivate let str_threeInfoName:[Character] = ["A","m","e","r","i"]
fileprivate let str_requestPlainData:String = "ca(+1)device hidden make collection"

/*: "area_code_down_icon" :*/
fileprivate let str_toValue:String = "make info playerarea_cod"
fileprivate let str_imageValue:String = "e_user file false view"
fileprivate let str_picTitle:[Character] = ["d","o","w","n","_","i","c","o","n"]

/*: "BBBBBB" :*/
fileprivate let str_phoneStartName:[Character] = ["B","B","B","B","B","B"]

/*: "btn_field_delete_icon" :*/
fileprivate let str_leadingActualData:String = "numbern"
fileprivate let str_angleData:[Character] = ["_","f","i","e","l","d","_","d","e","l","e","t","e","_","i","c","o","n"]

/*: "Password" :*/
fileprivate let str_acceptValue:[Character] = ["P","a"]
fileprivate let str_makeContent:[Character] = ["s","s","w","o","r","d"]

/*: "CCCCCC" :*/
fileprivate let str_toData:String = "renderrenderrenderrenderrender"
fileprivate let str_managerValue:[Character] = ["C"]

/*: "or" :*/
fileprivate let str_fromTitle:[Character] = ["o","r"]

/*: "F5F5F5" :*/
fileprivate let str_headText:[Character] = ["F","5","F","5","F","5"]

/*: "Next" :*/
fileprivate let str_matchQuoteData:String = "image logNext"

/*: "Login by password" :*/
fileprivate let str_leadingAttachData:[Character] = ["L","o","g","i","n"," ","b","y"," ","p","a","s"]
fileprivate let str_customIndexText:String = "swactiond"

/*: "Login by OTP" :*/
fileprivate let str_deviceData:String = "Login color text"
fileprivate let str_titleExtraName:[Character] = ["b","y"," ","O","T","P"]

/*: "#8C7AFF" :*/
fileprivate let str_headValue:[Character] = ["#","8","C","7","A","F","F"]

/*: "Login" :*/
fileprivate let str_liveName:String = "edge add bag equalLogin"

/*: "Send verification" :*/
fileprivate let str_giftValue:[Character] = ["S","e","n","d"," ","v","e","r","i"]
fileprivate let str_viewData:[Character] = ["f","i","c","a","t","i","o","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InvestReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: class TalkingLoginView: UIView, UITextFieldDelegate {
class InvestReactiveCompatible: UIView, UITextFieldDelegate {
    //: typealias CommitBtnBlock = (_ phone: String, _ pwd: String?) -> Void
    typealias CommitBtnBlock = (_ phone: String, _ pwd: String?) -> Void
    //: typealias AreaCodeBtnBlock = () -> Void
    typealias AreaCodeBtnBlock = () -> Void
    //: var commitBlock: CommitBtnBlock?
    var commitBlock: CommitBtnBlock?
    //: var areaCodeBlock: AreaCodeBtnBlock?
    var areaCodeBlock: AreaCodeBtnBlock?
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: private let pwdLimitCount = 16
    private let pwdLimitCount = 16 // 密码长度限制
    //: private var loginType: TalkingLoginVCType?
    private var loginType: VolumeLeadingVarietyLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: VolumeLeadingVarietyLoginType) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.loginType = type
        self.loginType = type
        //: setupSubviews()
        range()
        //: setupSubViewsConstraint()
        sectionOf()
        //: bindInteraction()
        phaseOfTheMoon()
        //: checkCommitButtonState()
        commit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_containerName.map{actionDeviceTab(page: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        label.text = self.loginType == .LoginPhone ? "Enter phone number".localized : "Enter Email Address".localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var areaCodeControl: UIControl = {
    private lazy var areaCodeControl: UIControl = {
        //: let control = UIControl()
        let control = UIControl()
        //: control.backgroundColor = UIColor(hex: "F4F4F4")
        control.backgroundColor = UIColor(hex: (str_statusTitle.replacingOccurrences(of: "memory", with: "F4")))
        //: control.layer.cornerRadius = 25
        control.layer.cornerRadius = 25
        //: control.clipsToBounds = true
        control.clipsToBounds = true
        //: return control
        return control
        //: }()
    }()

    //: lazy var areaImageView: UIImageView = {
    lazy var areaImageView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.text = "America(+1)"
        label.text = (String(str_threeInfoName) + String(str_requestPlainData.prefix(6)))
        //: return label
        return label
        //: }()
    }()

    //: private lazy var areaDownImgView: UIImageView = {
    private lazy var areaDownImgView: UIImageView = {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.image = UIImage.nearCounterval(name: "area_code_down_icon")
        imageView.image = UIImage.nearCounterval(name: (String(str_toValue.suffix(8)) + String(str_imageValue.prefix(2)) + String(str_picTitle)))
        //: return imageView
        return imageView
        //: }()
    }()

    //: private lazy var phoneInputView: UITextField = {
    private lazy var phoneInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_statusTitle.replacingOccurrences(of: "memory", with: "F4")))
        //: textField.font = .liveAttention(type: .Medium, fontSize: 17)
        textField.font = .liveAttention(type: .Medium, fontSize: 17)
        //: textField.textColor = .occurrence()
        textField.textColor = .occurrence()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_phoneStartName)))!])
        //: textField.keyboardType = (self.loginType == .LoginPhone ? .asciiCapableNumberPad : .default)
        textField.keyboardType = (self.loginType == .LoginPhone ? .asciiCapableNumberPad : .default)
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
        //: rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .whileEditing
        textField.rightViewMode = .whileEditing
        //: rightView.addSubview(phoneDeleteBtn)
        rightView.addSubview(phoneDeleteBtn)
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var phoneDeleteBtn: UIButton = {
    private lazy var phoneDeleteBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_leadingActualData.replacingOccurrences(of: "number", with: "bt") + String(str_angleData))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var pwdTitleLab: UILabel = {
    private lazy var pwdTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Password".localized
        lab.text = (String(str_acceptValue) + String(str_makeContent)).localized
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 17)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 17)
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var pwdInputView: UITextField = {
    private lazy var pwdInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (str_statusTitle.replacingOccurrences(of: "memory", with: "F4")))
        //: textField.font = .liveAttention(type: .Regular, fontSize: 17)
        textField.font = .liveAttention(type: .Regular, fontSize: 17)
        //: textField.textColor = .occurrence()
        textField.textColor = .occurrence()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(str_phoneStartName)))!])
        //: textField.keyboardType = .asciiCapable
        textField.keyboardType = .asciiCapable
        //: textField.autocorrectionType = .no
        textField.autocorrectionType = .no
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.isHidden = true
        textField.isHidden = true
        //: textField.isSecureTextEntry = true
        textField.isSecureTextEntry = true
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        leftView.frame = CGRect(x: 0, y: 0, width: 20, height: 50)
        //: textField.leftView = leftView
        textField.leftView = leftView
        //: textField.leftViewMode = .always
        textField.leftViewMode = .always
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: textField.textAlignment = .right
            textField.textAlignment = .right
        }
        //: let rightView = UIView()
        let rightView = UIView()
        //: rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        rightView.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: textField.rightView = rightView
        textField.rightView = rightView
        //: textField.rightViewMode = .whileEditing
        textField.rightViewMode = .whileEditing
        //: rightView.addSubview(pwdDeleteBtn)
        rightView.addSubview(pwdDeleteBtn)
        //: return textField
        return textField
        //: }()
    }()

    //: lazy var pwdDeleteBtn: UIButton = {
    lazy var pwdDeleteBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        btn.frame = CGRect(x: 0, y: 0, width: 56, height: 50)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_field_delete_icon"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_leadingActualData.replacingOccurrences(of: "number", with: "bt") + String(str_angleData))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var otherLabel: UILabel = {
    lazy var otherLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font =  .liveAttention(type: .Medium, fontSize: 17)
        label.font = .liveAttention(type: .Medium, fontSize: 17)
        //: label.textColor =  UIColor(hex: "CCCCCC")
        label.textColor = UIColor(hex: (str_toData.replacingOccurrences(of: "render", with: "C") + String(str_managerValue)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "or".localized
        label.text = "or".localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var otherLeftLine: UIView = {
    lazy var otherLeftLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "F5F5F5")
        view.backgroundColor = UIColor(hex: (String(str_headText)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var otherRightLine: UIView = {
    lazy var otherRightLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "F5F5F5")
        view.backgroundColor = UIColor(hex: (String(str_headText)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_matchQuoteData.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var loginStyleBtn: UIButton = {
    private lazy var loginStyleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(UIColor.alright(), for: .normal)
        btn.setTitleColor(UIColor.alright(), for: .normal)
        //: btn.setTitleColor(UIColor.alright(), for: .selected)
        btn.setTitleColor(UIColor.alright(), for: .selected)
        //: btn.setTitle("Login by password".localized, for: .normal)
        btn.setTitle((String(str_leadingAttachData) + str_customIndexText.replacingOccurrences(of: "action", with: "or")).localized, for: .normal)
        //: btn.setTitle("Login by OTP".localized, for: .selected)
        btn.setTitle((String(str_deviceData.prefix(6)) + String(str_titleExtraName)).localized, for: .selected)
        //: btn.addTarget(self, action: #selector(loginStyleButtonClick(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(marginOfSafetySender(sender:)), for: .touchUpInside)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor(hex: "#8C7AFF")?.withAlphaComponent(0.6).cgColor
        btn.layer.borderColor = UIColor(hex: (String(str_headValue)))?.withAlphaComponent(0.6).cgColor
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLoginView {
extension InvestReactiveCompatible {
    /// 更新提交按钮状态
    //: func checkCommitButtonState() {
    func commit() {
        //: var isEnabled = false
        var isEnabled = false
        //: if loginStyleBtn.isSelected == true {
        if loginStyleBtn.isSelected == true { // pwd
            //: isEnabled = phoneInputView.text!.count > 0 && pwdInputView.text!.count >= 6
            isEnabled = phoneInputView.text!.count > 0 && pwdInputView.text!.count >= 6
            //: } else {
        } else { // OTP
            //: isEnabled = phoneInputView.text!.count > 0
            isEnabled = phoneInputView.text!.count > 0
        }
        //: commitButton.isEnabled = isEnabled
        commitButton.isEnabled = isEnabled
    }

    /// 区域选择按钮点击事件
    //: func areaCodeControlAction() {
    func info() {
        //: areaCodeBlock?()
        areaCodeBlock?()
    }

    /// 提交按钮点击事件
    //: @objc private func commintBtnAction() {
    @objc private func commintLikeAction() {
        //: if loginStyleBtn.isSelected == true {
        if loginStyleBtn.isSelected == true { // pwd
            //: commitBlock?(phoneInputView.text!, pwdInputView.text)
            commitBlock?(phoneInputView.text!, pwdInputView.text)
            //: } else {
        } else { // OTP
            //: commitBlock?(phoneInputView.text!, nil)
            commitBlock?(phoneInputView.text!, nil)
        }
    }

    /// 登录方式切换按钮事件
    //: @objc private func loginStyleButtonClick(sender: UIButton) {
    @objc private func marginOfSafetySender(sender: UIButton) {
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: pwdInputView.text = ""
        pwdInputView.text = ""
        //: pwdInputView.isHidden = !sender.isSelected
        pwdInputView.isHidden = !sender.isSelected
        //: pwdTitleLab.isHidden = !sender.isSelected
        pwdTitleLab.isHidden = !sender.isSelected
        //: if sender.isSelected == true {
        if sender.isSelected == true { // pwd
            //: commitButton.setTitle("Login".localized, for: .normal)
            commitButton.setTitle((String(str_liveName.suffix(5))).localized, for: .normal)
            //: } else {
        } else { // OTP
            //: commitButton.setTitle("Next".localized, for: .normal)
            commitButton.setTitle((String(str_matchQuoteData.suffix(4))).localized, for: .normal)
        }
        //: if loginType == .LoginEmail {
        if loginType == .LoginEmail {
            //: phoneInputView.snp.updateConstraints({ make in
            phoneInputView.snp.updateConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset((pwdInputView.isHidden ? 44 : 16))
                make.top.equalTo(titleLabel.snp.bottom).offset(pwdInputView.isHidden ? 44 : 16)
                //: })
            }
        }

        //: commitButton.snp.remakeConstraints { make in
        commitButton.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(ScreenWidth - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: if pwdInputView.isHidden {
            if pwdInputView.isHidden {
                //: make.top.equalTo(phoneInputView.snp.bottom).offset(40)
                make.top.equalTo(phoneInputView.snp.bottom).offset(40)
                //: } else {
            } else {
                //: make.top.equalTo(pwdInputView.snp.bottom).offset(30)
                make.top.equalTo(pwdInputView.snp.bottom).offset(30)
            }
        }
        //: checkCommitButtonState()
        commit()
    }

    /// 绑定手机页面设置
    //: func setPhoneView() {
    func isPhoneView() {
        //: otherLabel.isHidden = true
        otherLabel.isHidden = true
        //: otherLeftLine.isHidden = true
        otherLeftLine.isHidden = true
        //: otherRightLine.isHidden = true
        otherRightLine.isHidden = true
        //: loginStyleBtn.isHidden = true
        loginStyleBtn.isHidden = true
        //: commitButton.setTitle("Send verification".localized, for: .normal)
        commitButton.setTitle((String(str_giftValue) + String(str_viewData)).localized, for: .normal)
    }
}

// MARK: - Layout

//: extension TalkingLoginView {
extension InvestReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func range() {
        //: addSubview(titleLabel)
        addSubview(titleLabel)

        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: addSubview(areaCodeControl)
            addSubview(areaCodeControl)
            //: areaCodeControl.addSubview(areaImageView)
            areaCodeControl.addSubview(areaImageView)
            //: areaCodeControl.addSubview(areaCodeLabel)
            areaCodeControl.addSubview(areaCodeLabel)
            //: areaCodeControl.addSubview(areaDownImgView)
            areaCodeControl.addSubview(areaDownImgView)
        }
        //: addSubview(pwdTitleLab)
        addSubview(pwdTitleLab)
        //: addSubview(phoneInputView)
        addSubview(phoneInputView)
        //: addSubview(pwdInputView)
        addSubview(pwdInputView)
        //: addSubview(commitButton)
        addSubview(commitButton)
        //: addSubview(otherLabel)
        addSubview(otherLabel)
        //: addSubview(otherLeftLine)
        addSubview(otherLeftLine)
        //: addSubview(otherRightLine)
        addSubview(otherRightLine)

        //: addSubview(loginStyleBtn)
        addSubview(loginStyleBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sectionOf() {
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: areaCodeControl.snp.makeConstraints { make in
            areaCodeControl.snp.makeConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset(16)
                make.top.equalTo(titleLabel.snp.bottom).offset(16)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: areaImageView.snp.makeConstraints { make in
            areaImageView.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.height.width.equalTo(22)
                make.height.width.equalTo(22)
                //: make.leading.equalTo(20)
                make.leading.equalTo(20)
            }
            //: areaCodeLabel.snp.makeConstraints { make in
            areaCodeLabel.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.leading.equalTo(areaImageView.snp.trailing).offset(8)
                make.leading.equalTo(areaImageView.snp.trailing).offset(8)
                //: make.trailing.equalToSuperview().offset(-40)
                make.trailing.equalToSuperview().offset(-40)
            }
            //: areaDownImgView.snp.makeConstraints { make in
            areaDownImgView.snp.makeConstraints { make in
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.height.width.equalTo(20)
                make.height.width.equalTo(20)
                //: make.trailing.equalToSuperview().offset(-18)
                make.trailing.equalToSuperview().offset(-18)
            }
            //: phoneInputView.snp.makeConstraints { make in
            phoneInputView.snp.makeConstraints { make in
                //: make.top.equalTo(areaCodeControl.snp.bottom).offset(16)
                make.top.equalTo(areaCodeControl.snp.bottom).offset(16)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: }else{
        } else {
            //: phoneInputView.snp.makeConstraints { make in
            phoneInputView.snp.makeConstraints { make in
                //: make.top.equalTo(titleLabel.snp.bottom).offset(44)
                make.top.equalTo(titleLabel.snp.bottom).offset(44)
                //: make.leading.equalTo(30)
                make.leading.equalTo(30)
                //: make.trailing.equalTo(-30)
                make.trailing.equalTo(-30)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
        }

        //: pwdTitleLab.snp.makeConstraints { make in
        pwdTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(phoneInputView.snp.bottom).offset(30)
            make.top.equalTo(phoneInputView.snp.bottom).offset(30)
            //: make.leading.equalTo(phoneInputView)
            make.leading.equalTo(phoneInputView)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: pwdInputView.snp.makeConstraints { make in
        pwdInputView.snp.makeConstraints { make in
            //: make.top.equalTo(pwdTitleLab.snp.bottom).offset(16)
            make.top.equalTo(pwdTitleLab.snp.bottom).offset(16)
            //: make.leading.trailing.height.equalTo(phoneInputView)
            make.leading.trailing.height.equalTo(phoneInputView)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(ScreenWidth - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(phoneInputView.snp.bottom).offset(40)
            make.top.equalTo(phoneInputView.snp.bottom).offset(40)
        }

        //: otherLabel.snp.makeConstraints { make in
        otherLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(commitButton.snp.bottom).offset(30)
            make.top.equalTo(commitButton.snp.bottom).offset(30)
        }
        //: otherLeftLine.snp.makeConstraints { make in
        otherLeftLine.snp.makeConstraints { make in
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
            make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
        }

        //: otherRightLine.snp.makeConstraints { make in
        otherRightLine.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.leading.equalTo(otherLabel.snp.trailing).offset(16)
            make.leading.equalTo(otherLabel.snp.trailing).offset(16)
        }

        //: loginStyleBtn.snp.makeConstraints { make in
        loginStyleBtn.snp.makeConstraints { make in
            //: make.top.equalTo(otherLabel.snp.bottom).offset(30)
            make.top.equalTo(otherLabel.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(ScreenWidth - 60)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func phaseOfTheMoon() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.commintBtnAction()
                self.commintLikeAction()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: areaCodeControl.rx.controlEvent(.touchUpInside)
            areaCodeControl.rx.controlEvent(.touchUpInside)
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.areaCodeControlAction()
                    self.info()
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)
        }

        //: phoneDeleteBtn.rx.tap
        phoneDeleteBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.phoneInputView.text = ""
                self.phoneInputView.text = ""
                //: self.checkCommitButtonState()
                self.commit()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: phoneInputView.rx.text.orEmpty.asObservable()
        phoneInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.commit()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: pwdDeleteBtn.rx.tap
        pwdDeleteBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = ""
                self.pwdInputView.text = ""
                //: self.checkCommitButtonState()
                self.commit()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: pwdInputView.rx.text.orEmpty.asObservable()
        pwdInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                //: self.checkCommitButtonState()
                self.commit()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
