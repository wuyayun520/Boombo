
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let str_feedbackTitle:[Character] = ["E","m","a","i","l"," ","A","d","d","r","e","s"]
fileprivate let str_inputData:[Character] = ["s"]

/*: "Phone number" :*/
fileprivate let str_indexValue:String = "Phonat string by"

/*: "Enter the email code sent to" :*/
fileprivate let str_logContent:String = "Enteheight succeed player"
fileprivate let str_viewToolTitle:[Character] = ["e"," ","e","m","a","i","l"," ","c","o","d","e"," ","s","e","n","t"," ","t","o"]

/*: "Enter the phone code sent to" :*/
fileprivate let str_medalName:String = "data equal black move equalEnte"
fileprivate let str_pathText:String = "case type phon"
fileprivate let str_sizeLabGuardData:String = "de sreturn device"

/*: "(+ :*/
fileprivate let str_coinPlainData:String = "(+"

/*: ) :*/
fileprivate let str_appLeadingTitle:[Character] = [")"]

/*: "8075F5" :*/
fileprivate let str_cellData:[Character] = ["8","0","7","5","F","5"]

/*: "F4F4F4" :*/
fileprivate let str_backgroundValue:String = "f4f4f4"

/*: "Resend verification email" :*/
fileprivate let str_topPathName:[Character] = ["R","e","s","e","n","d"," ","v","e","r","i","f","i","c"]
fileprivate let str_wrapData:String = "atirequest"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let str_toMakeValue:[UInt8] = [0x3a,0x7,0x1e,0x1d,0x54,0x4e,0x27,0x8,0x4e,0x17,0x1,0x1b,0x4e,0xd,0xf,0x0,0x49,0x1a,0x4e,0x1c,0xb,0xd,0xb,0x7,0x18,0xb,0x4e,0x1a,0x6,0xb,0x4e,0x18,0xb,0x1c,0x7,0x8,0x7,0xd,0xf,0x1a,0x7,0x1,0x0,0x4e,0xd,0x1,0xa,0xb,0x42,0x4e,0x1e,0x2,0xb,0xf,0x1d,0xb,0x4e,0xd,0x6,0xb,0xd,0x5,0x4e,0x19,0x6,0xb,0x1a,0x6,0xb,0x1c,0x4e,0x1a,0x6,0xb,0x4e,0x3,0xb,0x1d,0x1d,0xf,0x9,0xb,0x4e,0x7,0x1d,0x4e,0x7,0x0,0x4e,0x1d,0x1e,0xf,0x3,0x4e,0x1,0x1c,0x4e,0x0,0x1,0x1a]

/*: "Bind Email succeed" :*/
fileprivate let str_exampleData:String = "height center height varBind E"
fileprivate let str_fieldValue:String = "mail more on cover"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let str_indicatorName:[Character] = ["B","i","n","d"," ","M","o","b","i","l","e"," ","P","h","o","n","e"," "]
fileprivate let str_hiddenInputData:[Character] = ["s","u","c","c","e","e","d"]

/*: "Resend verification email (%@s)" :*/
fileprivate let str_clickHeadValue:[UInt8] = [0x88,0xbf,0xa9,0xbf,0xb4,0xbe,0xfa,0xac,0xbf,0xa8,0xb3,0xbc,0xb3,0xb9,0xbb,0xae,0xb3,0xb5,0xb4,0xfa,0xbf,0xb7,0xbb,0xb3,0xb6,0xfa,0xf2,0xff,0x9a,0xa9,0xf3]

private func colorPlayer(target num: UInt8) -> UInt8 {
    return num ^ 218
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class MRecognizerDelegate: NameViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: UserBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.name()
        //: self.setupSubViewsConstraint()
        self.setup()
        //: self.bindInteraction()
        self.place()
        //: func_starCodeTime()
        recordEnterTime()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        textView()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 17)
        label.font = .liveAttention(type: .Medium, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(str_feedbackTitle) + String(str_inputData)).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(str_indexValue.prefix(4)) + "e number").localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 16)
        label.font = .liveAttention(type: .Regular, fontSize: 16)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(str_logContent.prefix(4)) + "r th" + String(str_viewToolTitle)).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(str_medalName.suffix(4)) + "r the" + String(str_pathText.suffix(5)) + "e co" + String(str_sizeLabGuardData.prefix(4)) + "ent to").localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 16)
        label.font = .liveAttention(type: .Medium, fontSize: 16)
        //: label.textColor = .alright()
        label.textColor = .alright()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: BindInputView = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = BindInputView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(str_cellData)))!, normalColor: UIColor(hex: (str_backgroundValue.uppercased()))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
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
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(str_topPathName) + str_wrapData.replacingOccurrences(of: "request", with: "o") + "n email").localized, for: .normal)
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

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 12)
        label.font = .liveAttention(type: .Medium, fontSize: 12)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: str_toMakeValue.map{$0^110}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.liveAttention(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.liveAttention(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension MRecognizerDelegate {
    //: func func__bindEmailAction() {
    func modern() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        StandardProgressHUD.aEnablee(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            CellReactiveCompatible.commensurate(emailCode: codeStr) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: WithAdministratorAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    WithAdministratorAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.successMsg(showMsg: (String(str_exampleData.suffix(6)) + String(str_fieldValue.prefix(5)) + "succeed").localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.report()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.imageStart()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            CellReactiveCompatible.objectCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.imageStart()
                    //: return
                    return
                }
                //: WithAdministratorAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                WithAdministratorAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.successMsg(showMsg: (String(str_indicatorName) + String(str_hiddenInputData)).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: InfoUniversalVc.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? InfoUniversalVc)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func pullUp() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        StandardProgressHUD.aEnablee(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            CellReactiveCompatible.frame(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.recordEnterTime()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.report()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.imageStart()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            CellReactiveCompatible.giftCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.report()
                    //: self.func_starCodeTime()
                    self.recordEnterTime()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.imageStart()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func recordEnterTime() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: str_clickHeadValue.map{colorPlayer(target: $0)}, encoding: .utf8)!.localizedArguments(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.textView()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(str_topPathName) + str_wrapData.replacingOccurrences(of: "request", with: "o") + "n email").localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func textView() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension MRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func name() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setup() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func place() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.pullUp()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.modern()
            }
            //: return
        }
    }
}
