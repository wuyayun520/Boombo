
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_colorValue:[Character] = ["n","a","v","_","b","a","c","k","_"]
fileprivate let str_fileContent:[Character] = ["b","l","a","c","k","_","n","o","r"]

/*: "Email Address" :*/
fileprivate let str_withText:String = "Emraw model"
fileprivate let str_clubOfTitle:String = "else error roomail Ad"

/*: "F4F6FA" :*/
fileprivate let str_valueData:String = "corner4corner6corner"
fileprivate let str_appValue:String = "equal"

/*: "Add an email address" :*/
fileprivate let str_toValue:String = "Add anequal let case make label"
fileprivate let str_layerData:[Character] = [" ","a","d","d","r","e","s","s"]

/*: "BBBBBB" :*/
fileprivate let str_managerTitle:String = "equalequalequalequalequalequal"

/*: "Only you will see your email on your profile." :*/
fileprivate let str_appData:[UInt8] = [0xb,0x2a,0x28,0x3d,0x64,0x3d,0x2b,0x31,0x64,0x33,0x2d,0x28,0x28,0x64,0x37,0x21,0x21,0x64,0x3d,0x2b,0x31,0x36,0x64,0x21,0x29,0x25,0x2d,0x28,0x64,0x2b,0x2a,0x64,0x3d,0x2b,0x31,0x36,0x64,0x34,0x36,0x2b,0x22,0x2d,0x28,0x21,0x6a]

/*: "Send verification email" :*/
fileprivate let str_indexErrorName:String = "class name screen makeSend ve"
fileprivate let str_videoViewValue:[Character] = ["r","i","f","i"]
fileprivate let str_tableValue:[Character] = ["c","a","t","i","o","n"," ","e","m","a","i","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NumbereractionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindEmailVC: TalkingBaseViewController {
class NumbereractionReactiveCompatible: NameViewController {
    // 是否展示返回按钮
    //: var isBack = true
    var isBack = true
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: false)
            equalOpen(isOpen: false)
        }
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: true)
            equalOpen(isOpen: true)
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.successSubviews()
        //: self.setupSubViewsConstraint()
        self.upward()
        //: self.bindInteraction()
        self.progress()
        //: addTapGestureRecognizer()
        ascendingColon()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_colorValue) + String(str_fileContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pastWriteFile), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17.0)
        label.font = .liveAttention(type: .Semibold, fontSize: 17.0)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Email Address".localized
        label.text = (String(str_withText.prefix(2)) + String(str_clubOfTitle.suffix(6)) + "dress").localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var emailInputView: UITextField = {
    private lazy var emailInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F6FA")
        textField.backgroundColor = UIColor(hex: (str_valueData.replacingOccurrences(of: "corner", with: "F") + str_appValue.replacingOccurrences(of: "equal", with: "A")))
        //: textField.font = .liveAttention(type: .Medium, fontSize: 17)
        textField.font = .liveAttention(type: .Medium, fontSize: 17)
        //: textField.textColor = .occurrence()
        textField.textColor = .occurrence()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "Add an email address".localized, attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: (String(str_toValue.prefix(6)) + " email" + String(str_layerData)).localized, attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (str_managerTitle.replacingOccurrences(of: "equal", with: "B")))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.clearButtonMode = .whileEditing
        textField.clearButtonMode = .whileEditing
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var emailTipLabel: UILabel = {
    private lazy var emailTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15.0)
        label.font = .liveAttention(type: .Regular, fontSize: 15.0)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Only you will see your email on your profile.".localized
        label.text = String(bytes: str_appData.map{$0^68}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        //: btn.setTitle("Send verification email".localized, for: .normal)
        btn.setTitle((String(str_indexErrorName.suffix(7)) + String(str_videoViewValue) + String(str_tableValue)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue || DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
            //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
            btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindEmailVC {
extension NumbereractionReactiveCompatible {
    //: @objc func backBtnClick() {
    @objc func pastWriteFile() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func checkCommitButtonState() {
    func panopticalTitle() {
        //: if emailInputView.text!.isEmptyString {
        if emailInputView.text!.isEmptyString {
            //: commitButton.isEnabled = false
            commitButton.isEnabled = false
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    //: func func__getEmailCodeAction() {
    func emailName() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        StandardProgressHUD.aEnablee(superView: view)
        //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: emailInputView.text!, isBind: true) { succeed, result, errorModel in
        CellReactiveCompatible.frame(emailStr: emailInputView.text!, isBind: true) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: self.func__pushToPhoneCodeVC()
                self.visualisation()
            }
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func visualisation() {
        //: let vc = TalkingLoginBindInputCodeVC()
        let vc = MRecognizerDelegate()
        //: vc.phoneOrEmailStr = emailInputView.text!
        vc.phoneOrEmailStr = emailInputView.text!
        //: vc.viewType = .BindEmail
        vc.viewType = .BindEmail
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginBindEmailVC {
extension NumbereractionReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func successSubviews() {
        //: backBtn.isHidden = !isBack
        backBtn.isHidden = !isBack
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(emailInputView)
        view.addSubview(emailInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(emailTipLabel)
        view.addSubview(emailTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func upward() {
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(6)
            make.leading.equalTo(6)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
            //: make.size.equalTo(44)
            make.size.equalTo(44)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn.snp.bottom).offset(44)
            make.top.equalTo(backBtn.snp.bottom).offset(44)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: emailInputView.snp.makeConstraints { make in
        emailInputView.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(emailInputView.snp.bottom).offset(40)
            make.top.equalTo(emailInputView.snp.bottom).offset(40)
        }
        //: emailTipLabel.snp.makeConstraints { make in
        emailTipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(commitButton.snp.bottom).offset(24)
            make.top.equalTo(commitButton.snp.bottom).offset(24)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func progress() {
        //: emailInputView.rx.text.orEmpty.asObservable()
        emailInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.panopticalTitle()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__getEmailCodeAction()
                self.emailName()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
