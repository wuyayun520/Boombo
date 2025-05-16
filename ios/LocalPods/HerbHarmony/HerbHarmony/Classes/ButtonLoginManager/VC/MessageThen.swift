
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_regularContent:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i"]
fileprivate let str_contentData:[Character] = ["o","n"]

/*: "authPic" :*/
fileprivate let str_playData:[Character] = ["a","u"]
fileprivate let str_instanceValue:String = "thPicreturn lab"

/*: "Face verification" :*/
fileprivate let str_infoTitle:String = "Faceempty service let"
fileprivate let str_layerDeviceValue:String = "ifiwhite"

/*: "icon_zc_userconver" :*/
fileprivate let str_modelLocationValue:String = "icon_zcequal manager"
fileprivate let str_playName:String = "_ustotal total device range height"
fileprivate let str_sourceData:String = "ercoindexer"

/*: "Verify now" :*/
fileprivate let str_modelNeedValue:String = "a height error elseVerify"

/*: "#4A89F3" :*/
fileprivate let str_lengthTitle:String = "#4"
fileprivate let str_equalName:[Character] = ["A","8","9","F","3"]

/*: "Finish" :*/
fileprivate let str_modelValue:String = "image private button dataFinish"

/*: "#8C7AFF" :*/
fileprivate let str_selectedTitle:[Character] = ["#","8","C","7","A"]
fileprivate let str_indexContent:String = "view"

/*: "Skip" :*/
fileprivate let str_layerTitle:String = "component true upSkip"

/*: "icon_successfylly" :*/
fileprivate let str_backgroundName:String = "icon_swill write name to"
fileprivate let str_failName:String = "FYLLY"

/*: "Submitted successfully" :*/
fileprivate let str_makeValue:String = "Submview birthday model in"
fileprivate let str_yearValue:String = "d scall name"
fileprivate let str_withText:String = "uccecolor"

/*: "#2ED180" :*/
fileprivate let str_listViewTitle:String = "view type#2ED180"

/*: _ :*/
fileprivate let str_valueImageName:[Character] = ["_"]

/*: "male" :*/
fileprivate let str_addData:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let str_backName:String = "femzonel"
fileprivate let str_readValue:String = "to"

/*: "RegisterSuccess" :*/
fileprivate let str_errValue:String = "background managerRegis"
fileprivate let str_toolData:String = "CCES"
fileprivate let str_listName:[Character] = ["s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class MessageThen: NameViewController {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        equalOpen(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(str_regularContent) + String(str_contentData)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.menuSizeSubviews()
        //: self.setupSubViewsConstraint()
        self.percipient()

        //: if !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCode {
        if !WithAdministratorAppManager.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if WithAdministratorAppManager.share.userFillInfoMode.authImage != nil {
        if WithAdministratorAppManager.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = WithAdministratorAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(String(str_playData) + String(str_instanceValue.prefix(5)))] = WithAdministratorAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.actionSource()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = UIFont.liveAttention(type: .Semibold, fontSize: 17)
        lb.font = UIFont.liveAttention(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(str_infoTitle.prefix(4)) + " ver" + str_layerDeviceValue.replacingOccurrences(of: "white", with: "c") + "ation").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.nearCounterval(name: "icon_zc_userconver")
        imagv.image = UIImage.nearCounterval(name: (String(str_modelLocationValue.prefix(7)) + String(str_playName.prefix(3)) + str_sourceData.replacingOccurrences(of: "index", with: "nv")))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(conver), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(str_modelNeedValue.suffix(6)) + " now").localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (str_lengthTitle.capitalized + String(str_equalName)))!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_modelValue.suffix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allow(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_selectedTitle) + str_indexContent.replacingOccurrences(of: "view", with: "FF"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(str_layerTitle.suffix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(will), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .liveAttention(type: .Regular, fontSize: 12)
//        label.textColor = .inexpensiveness()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension MessageThen {
    //: func setConverView() {
    func actionSource() {
        //: self.converImag.image = UIImage.nearCounterval(name: "icon_successfylly")
        self.converImag.image = UIImage.nearCounterval(name: (String(str_backgroundName.prefix(6)) + "uccess" + str_failName.lowercased()))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(str_makeValue.prefix(4)) + "itte" + String(str_yearValue.prefix(3)) + str_withText.replacingOccurrences(of: "color", with: "s") + "sfully").localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(str_listViewTitle.suffix(7))))!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension MessageThen {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func frontPopback() {
        //: super.naviPopback()
        super.frontPopback()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_timeKeyValue)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_addData.reversed(), encoding: .utf8)! : (str_backName.replacingOccurrences(of: "zone", with: "a") + str_readValue.replacingOccurrences(of: "to", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func conver() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_deviceSinceName)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_addData.reversed(), encoding: .utf8)! : (str_backName.replacingOccurrences(of: "zone", with: "a") + str_readValue.replacingOccurrences(of: "to", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = IconViewController()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: WithAdministratorAppManager.share.userFillInfoMode.authImage = image
            WithAdministratorAppManager.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(String(str_playData) + String(str_instanceValue.prefix(5)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.actionSource()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func will() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_recordSuccessValue)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_addData.reversed(), encoding: .utf8)! : (str_backName.replacingOccurrences(of: "zone", with: "a") + str_readValue.replacingOccurrences(of: "to", with: "e")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (String(str_playData) + String(str_instanceValue.prefix(5))))
        //: finishBtnClick(isSkip: true)
        allow(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func allow(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(kLet_statusText)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_addData.reversed(), encoding: .utf8)! : (str_backName.replacingOccurrences(of: "zone", with: "a") + str_readValue.replacingOccurrences(of: "to", with: "e")))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            kLet_voiceText.quantityingTime(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        CellReactiveCompatible.fail(params: params) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: kLet_tableScreenName, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ViewIndexReactiveCompatible.share.atPassePartoutAd(key: (String(str_errValue.suffix(5)) + "terSu" + str_toolData.lowercased() + String(str_listName)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                CombinationReactiveCompatible.share.dataConverterParameters(name: (String(str_errValue.suffix(5)) + "terSu" + str_toolData.lowercased() + String(str_listName)))

                //: if WithAdministratorAppManager.share.loginUserMode.remindBindEmail == true {
                if WithAdministratorAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: LeadingEqualReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        LeadingEqualReactiveCompatible.share.showPersonLatEmailDataConverterEventJamLock(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension MessageThen {
    //: func setupSubviews() {
    func menuSizeSubviews() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func percipient() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
