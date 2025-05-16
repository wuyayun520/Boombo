
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_back_white" :*/
fileprivate let str_capValue:String = "let click var showbtn_back_"
fileprivate let str_activityTitle:[Character] = ["w","h","i","t","e"]

/*: (+ :*/
fileprivate let str_cellName:String = "(+"

/*: )" :*/
fileprivate let str_logName:[Character] = [")"]

/*: "area_icon_ :*/
fileprivate let str_contentValue:[Character] = ["a","r","e","a","_","i","c","o","n","_"]

/*: @2x" :*/
fileprivate let str_blockErrorName:String = "@2xrange to kind let"

/*: "get img error" :*/
fileprivate let str_cameraModelText:String = "get img equal add"
fileprivate let str_equalValue:[Character] = ["e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MisinformationRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class MisinformationRecognizerDelegate: NameViewController {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = CustomLocationTool.share.dismissTotalry()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: VolumeLeadingVarietyLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: VolumeLeadingVarietyLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeTitle.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.status()
        //: self.setupSubViewsConstraint()
        self.isoclinal()
        //: self.bindInteraction()
        self.checkDown()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: InvestReactiveCompatible = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = InvestReactiveCompatible(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: kLet_messageContent, width: 44, height: 44))
        //: btn.setImage(UIImage.nearCounterval(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_capValue.suffix(9)) + String(str_activityTitle))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(backTitleSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension MisinformationRecognizerDelegate {
    //: @objc func backBtnClick() {
    @objc func backTitleSnap() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func from() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            CellReactiveCompatible.color(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.publicTransport()
                }
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
                    //: self.func__pushToPhoneCodeVC()
                    self.publicTransport()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func conversation() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            CellReactiveCompatible.table(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            CellReactiveCompatible.to(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func toHandle() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = QuantitativeRelationThen()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.outsidePhoto()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func publicTransport() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = TalkingViewController(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func outsidePhoto() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(str_contentValue)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = DigitiserReactiveCompatible.default.formatPush(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.currentPop()
                //: printLog(message: "get img error")
                printLog(message: (String(str_cameraModelText.prefix(8)) + String(str_equalValue)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.nearSquare(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension MisinformationRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func status() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        outsidePhoto()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func isoclinal() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func checkDown() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.conversation()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.from()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.toHandle()
        }

        //: addTapGestureRecognizer()
        ascendingColon()
    }
}
