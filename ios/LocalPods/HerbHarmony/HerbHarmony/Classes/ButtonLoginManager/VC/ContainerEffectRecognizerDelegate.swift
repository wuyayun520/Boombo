
//: Declare String Begin

/*: "btn_back_white" :*/
fileprivate let str_coinValue:String = "blackn"
fileprivate let str_callData:String = "_backorigin successfully true class title"

/*: (+ :*/
fileprivate let str_resultTitle:String = "background+"

/*: )" :*/
fileprivate let str_colorValue:String = ")"

/*: "area_icon_ :*/
fileprivate let str_appLocationValue:String = "afirstea"
fileprivate let str_atName:[Character] = ["n","_"]

/*: @2x" :*/
fileprivate let str_modelValue:String = "level view let render model@2x"

/*: "get img error" :*/
fileprivate let str_viewValue:[Character] = ["g","e","t"," ","i","m","g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerEffectRecognizerDelegate.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class ContainerEffectRecognizerDelegate: NameViewController {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = CustomLocationTool.share.dismissTotalry()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.nameIn()
        //: self.setupSubViewsConstraint()
        self.dataConverter()
        //: self.bindInteraction()
        self.counteractionMoment()
        //: self.loginView.setPhoneView()
        self.loginView.isPhoneView()
    }

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: InvestReactiveCompatible = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = InvestReactiveCompatible(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: kLet_messageContent, width: 44, height: 44))
        //: btn.setImage(UIImage.nearCounterval(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_coinValue.replacingOccurrences(of: "black", with: "bt") + String(str_callData.prefix(5)) + "_white")), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(live), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension ContainerEffectRecognizerDelegate {
    //: @objc func backBtnClick() {
    @objc func live() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func totaleraction() {
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
            self.model()
        }
    }

    //: func func__updateAreaView() {
    func model() {
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
            imageName = (str_appLocationValue.replacingOccurrences(of: "first", with: "r") + "_ico" + String(str_atName)) + "\(imageName)@2x"
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
                printLog(message: (String(str_viewValue)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.nearSquare(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func tip(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        CellReactiveCompatible.giftCompletion(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = MRecognizerDelegate()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension ContainerEffectRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func nameIn() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        model()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dataConverter() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func counteractionMoment() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.tip(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.totaleraction()
        }
    }
}
