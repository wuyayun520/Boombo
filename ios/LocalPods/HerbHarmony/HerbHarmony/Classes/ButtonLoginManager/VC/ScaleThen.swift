
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_normalValue:[UInt8] = [0x2,0x7,0x2,0xd,0xc1,0xfc,0x8,0xfd,0xfe,0xb,0xd3,0xc2,0xb9,0x1,0xfa,0xc,0xb9,0x7,0x8,0xd,0xb9,0xfb,0xfe,0xfe,0x7,0xb9,0x2,0x6,0x9,0x5,0xfe,0x6,0xfe,0x7,0xd,0xfe,0xfd]

fileprivate func imageQuantity(system num: UInt8) -> UInt8 {
    let value = Int(num) - 153
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let str_bindData:[Character] = ["a","p","p","l","e"," ","授","\u{6743}"]
fileprivate let str_speakerMomentRawTitle:String = "失败，请稍后\u{518d}试"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class ScaleThen: NameViewController {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_normalValue.map{imageQuantity(system: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.demonstrate()
        //: self.setupSubViewsConstraint()
        self.stop()
        //: self.bindInteraction()
        self.upwardly()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: BirdSEyeViewReactiveCompatible = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = BirdSEyeViewReactiveCompatible()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension ScaleThen {
    //: func req_thirdLogin(_ type: LoginType) {
    func voiceThirdLogin(_ type: MakeViewConvertible) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            ButtonLoginManager.shared.cancelShow { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(str_bindData) + str_speakerMomentRawTitle))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                StandardProgressHUD.indexRoom()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                CellReactiveCompatible.play(type: .AppleLogin, params: dict) { _, _, _ in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = MisinformationRecognizerDelegate(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = MisinformationRecognizerDelegate(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension ScaleThen {
    //: func loginAction(type: LoginType) {
    func makeBack(type: MakeViewConvertible) {
        //: LoginPrivacyPolicyView().showView {
        SnapView().toHandler {
            //: self.req_thirdLogin(type)
            self.voiceThirdLogin(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension ScaleThen {
    // 添加视图
    //: private func setupSubviews() {
    private func demonstrate() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: MakeViewConvertible) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.makeBack(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func stop() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func upwardly() {}
}
