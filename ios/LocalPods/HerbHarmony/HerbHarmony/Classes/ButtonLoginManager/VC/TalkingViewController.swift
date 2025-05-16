
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeName:[UInt8] = [0xb9,0xbe,0xb9,0xa4,0xf8,0xb3,0xbf,0xb4,0xb5,0xa2,0xea,0xf9,0xf0,0xb8,0xb1,0xa3,0xf0,0xbe,0xbf,0xa4,0xf0,0xb2,0xb5,0xb5,0xbe,0xf0,0xb9,0xbd,0xa0,0xbc,0xb5,0xbd,0xb5,0xbe,0xa4,0xb5,0xb4]

/*: "Resent Code" :*/
fileprivate let str_cellData:String = "Resefile bean make block"
fileprivate let str_startName:[Character] = ["o","d","e"]

/*: "#8C7AFF" :*/
fileprivate let str_locationValue:[Character] = ["#","8","C","7","A","F","F"]

/*: " ( :*/
fileprivate let str_centerFirstDoinglineValue:[Character] = [" ","("]

/*: s)" :*/
fileprivate let str_rowTitle:[Character] = ["s",")"]

/*: "+ :*/
fileprivate let str_freeData:String = "succeed"

/*: "mobile" :*/
fileprivate let str_textButtonTitle:[UInt8] = [0x2,0x0,0xd,0x6,0x3,0xa]

private func ageCell(perform num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "vcode" :*/
fileprivate let str_observerData:[UInt8] = [0x8,0x1d,0x11,0x1a,0x1b]

private func thoughtImageAdd(model num: UInt8) -> UInt8 {
    return num ^ 126
}

/*: "areaCode" :*/
fileprivate let str_videoName:[UInt8] = [0xd0,0xc3,0xd4,0xd0,0xf2,0xde,0xd5,0xd4]

private func nameDismiss(file num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "email" :*/
fileprivate let str_viewTitle:[UInt8] = [0x74,0x7c,0x70,0x78,0x7d]

/*: "RSA加密失败" :*/
fileprivate let str_roomData:[Character] = ["R","S","A","加","密","失","败"]

/*: "(+ :*/
fileprivate let str_makeTitle:String = "text+"

/*: ) :*/
fileprivate let str_howeverName:String = "manager"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeVC: TalkingBaseViewController {
class TalkingViewController: NameViewController {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: private var codeStr: String = ""
    private var codeStr: String = ""
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var loginType: TalkingLoginVCType?
    private var loginType: VolumeLeadingVarietyLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: VolumeLeadingVarietyLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.loginType = type
        self.loginType = type
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeName.map{$0^208}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.setupSubviews()
        self.click()
        //: self.setupSubViewsConstraint()
        self.holder()
        //: self.bindInteraction()
        self.reciprocationSend()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: lazy var codeView: TalkingLoginCodeView = {
    lazy var codeView: ShirtButtonView = {
        //: let codeView = TalkingLoginCodeView()
        let codeView = ShirtButtonView()
        //: return codeView
        return codeView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginCodeVC {
extension TalkingViewController {
    //: func func_starCodeTime() {
    func positionCell() {
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
                //: self.func_setReCodeButton(timeCount: timeCount)
                self.dismissPlayer(timeCount: timeCount)
                //: })
            })
    }

    //: func func_endCodeTime() {
    func analogDigitalConverter() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_setReCodeButton(timeCount: Int) {
    func dismissPlayer(timeCount: Int) {
        //: self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(str_cellData.prefix(4)) + "nt C" + String(str_startName)).localized

        //: var attributes = [.foregroundColor: UIColor(hex: "#8C7AFF")!, .font: UIFont.liveAttention(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(str_locationValue)))!, .font: UIFont.liveAttention(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: newStr = newStr.appending(" (\(timeCount)s)")
            newStr = newStr.appending(" (\(timeCount)s)")
            //: } else {
        } else {
            //: func_endCodeTime()
            analogDigitalConverter()
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }
        //: let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeString.addAttribute(.foregroundColor, value: UIColor.occurrence(), range: theRange)
            attributeString.addAttribute(.foregroundColor, value: UIColor.occurrence(), range: theRange)
        }
        //: self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
        self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
    }

    /// 手机号登录
    //: func func__loginAction() {
    func switchline() {
        //: var reslutStr = ""
        var reslutStr = ""
        //: var reslutCodeStr = ""
        var reslutCodeStr = ""

        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: kLet_attributeTitle)
            //: let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            //: reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            //: reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: self.view.endEditing(true)
            self.view.endEditing(true)
            //: ProgressHUD.show()
            StandardProgressHUD.indexRoom()
            //: if loginType == .LoginPhone {
            if loginType == .LoginPhone {
                //: let params = ["mobile": reslutStr, "vcode": codeStr, "areaCode": reslutCodeStr]
                let params = [String(bytes: str_textButtonTitle.map{ageCell(perform: $0)}, encoding: .utf8)!: reslutStr, String(bytes: str_observerData.map{thoughtImageAdd(model: $0)}, encoding: .utf8)!: codeStr, String(bytes: str_videoName.map{nameDismiss(file: $0)}, encoding: .utf8)!: reslutCodeStr]
                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .PhoneLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                CellReactiveCompatible.play(type: .PhoneLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.imageStart()
                    }
                }
                //: }else{
            } else {
                //: let params = ["email": reslutStr, "vcode": codeStr]
                let params = [String(bytes: str_viewTitle.map{$0^17}, encoding: .utf8)!: reslutStr, String(bytes: str_observerData.map{thoughtImageAdd(model: $0)}, encoding: .utf8)!: codeStr]

                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .EmailLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                CellReactiveCompatible.play(type: .EmailLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.imageStart()
                    }
                }
            }

            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败")
            printLog(message: (String(str_roomData)))
        }
    }

    //: func func__reSendloginCodeAction() {
    func hypocorism() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            CellReactiveCompatible.color(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.report()
                    //: self.func_starCodeTime()
                    self.positionCell()
                }
                //: self.codeView.codeInputView.startEdit()
                self.codeView.codeInputView.imageStart()
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            CellReactiveCompatible.frame(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.report()
                    //: self.func_starCodeTime()
                    self.positionCell()
                }
            }
            //: self.codeView.codeInputView.startEdit()
            self.codeView.codeInputView.imageStart()
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginCodeVC {
extension TalkingViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func click() {
        //: view.addSubview(codeView)
        view.addSubview(codeView)
        //: codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
        codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func holder() {
        //: codeView.snp.makeConstraints { make in
        codeView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func reciprocationSend() {
        //: codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__loginAction()
                self.switchline()
            }
            //: return
        }
        //: codeView.commitButton.rx.controlEvent(.touchUpInside)
        codeView.commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__loginAction()
                self.switchline()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeView.reSendButton.rx.controlEvent(.touchUpInside)
        codeView.reSendButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__reSendloginCodeAction()
                self.hypocorism()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: self.func_starCodeTime()
        self.positionCell()
    }
}
