
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_showData:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

private func giftObjectSound(to num: UInt8) -> UInt8 {
    return num ^ 228
}

/*: "Personal information" :*/
fileprivate let str_sizeValue:String = "Persodevice label the"
fileprivate let str_contentName:String = "value"
fileprivate let str_imageData:String = "rmatiplacen"

/*: "MiniSubqueryConvertible" :*/
fileprivate let str_statusTitle:String = "height status information let selfGender"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let str_modeData:[UInt8] = [0x21,0x0,0xd,0xb,0x4e,0x9,0xb,0x0,0xa,0xb,0x1c,0x4e,0x7,0x1d,0x4e,0x1d,0xb,0x1a,0x42,0x4e,0x7,0x1a,0x4e,0x2d,0xf,0x0,0x0,0x1,0x1a,0x4e,0xc,0xb,0x4e,0xd,0x6,0xf,0x0,0x9,0xb,0xa,0x40]

private func dataConverter(view num: UInt8) -> UInt8 {
    return num ^ 110
}

/*: "#2ABBFF" :*/
fileprivate let str_allMicTitle:[Character] = ["#","2","A","B","B","F","F"]

/*: "btn_male_nv_nor" :*/
fileprivate let str_insertData:[Character] = ["b","t","n","_","m","a","l","e","_"]
fileprivate let str_makeText:String = "nv_norlog or var self"

/*: "btn_male_nv_sel" :*/
fileprivate let str_appViewName:[Character] = ["b","t","n","_","m","a","l","e","_","n","v","_","s"]
fileprivate let str_coinName:String = "alwaysl"

/*: "Male" :*/
fileprivate let str_lockValue:String = "Malerequest text model super"

/*: "#FF5372" :*/
fileprivate let str_originValue:[Character] = ["#","F","F","5","3","7","2"]

/*: "btn_female_nv_nor" :*/
fileprivate let str_layerVoiceText:String = "btn_control video"
fileprivate let str_imageContent:String = "no frame load force viewle_n"
fileprivate let str_userContentData:String = "size let equal shadowv_nor"

/*: "btn_female_nv_sel" :*/
fileprivate let str_insideName:[Character] = ["b","t","n","_","f","e","m","a","l","e","_","n"]
fileprivate let str_equalText:String = "v_selif size social let effect"

/*: "Female" :*/
fileprivate let str_topAssetContent:[Character] = ["F","e","m","a","l","e"]

/*: "Next" :*/
fileprivate let str_rootName:[Character] = ["N","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EngageGenderVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class EngageGenderVc: NameViewController {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_showData.map{giftObjectSound(to: $0)}, encoding: .utf8)!)
    }

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
        self.title = (String(str_sizeValue.prefix(5)) + "nal in" + str_contentName.replacingOccurrences(of: "value", with: "fo") + str_imageData.replacingOccurrences(of: "place", with: "o")).localized
        //: WithAdministratorAppManager.share.userFillInfoMode.sex = "1"
        WithAdministratorAppManager.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.observe()
        //: self.setupSubViewsConstraint()
        self.userPath()
        //: self.bindInteraction()
        self.bind()
        //: func__checkNextBtnState()
        at()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(str_statusTitle.suffix(6))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .colorPush()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: str_modeData.map{dataConverter(view: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: RoomThen = {
        //: let btn = TalkingButton(type: .custom)
        let btn = RoomThen(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.backgroundBlock(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.backgroundBlock(color: UIColor(hex: (String(str_allMicTitle)))!, forState: .selected)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_insertData) + String(str_makeText.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_appViewName) + str_coinName.replacingOccurrences(of: "always", with: "e"))), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(str_lockValue.prefix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(str_lockValue.prefix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.unprecedented(fontSize: 17)
        btn.titleLabel?.font = UIFont.unprecedented(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: RoomThen = {
        //: let btn = TalkingButton(type: .custom)
        let btn = RoomThen(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.backgroundBlock(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.backgroundBlock(color: UIColor(hex: (String(str_originValue)))!, forState: .selected)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_layerVoiceText.prefix(4)) + "fema" + String(str_imageContent.suffix(4)) + String(str_userContentData.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_insideName) + String(str_equalText.prefix(5)))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((String(str_topAssetContent)).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((String(str_topAssetContent)).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.unprecedented(fontSize: 17)
        btn.titleLabel?.font = UIFont.unprecedented(fontSize: 17)
        //: return btn
        return btn
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
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_rootName)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension EngageGenderVc {
    //: private func func__checkNextBtnState() {
    private func at() {
        //: if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
        if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if WithAdministratorAppManager.share.userFillInfoMode.sex == "2"{
        } else if WithAdministratorAppManager.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func remove() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if WithAdministratorAppManager.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !DoingAddrTool.isUsedProxy() && !DoingAddrTool.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                CustomThen.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = WithAdministratorAppManager.share.userFillInfoMode.sex
        let sex = WithAdministratorAppManager.share.userFillInfoMode.sex
        //: WithAdministratorAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        WithAdministratorAppManager.share.userFillInfoMode = DataInfoModel()
        //: WithAdministratorAppManager.share.userFillInfoMode.sex = sex
        WithAdministratorAppManager.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = TextThen()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension EngageGenderVc {
    // 添加视图
    //: private func setupSubviews() {
    private func observe() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func userPath() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_senseContent - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(kLet_senseContent - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func bind() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.remove()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: WithAdministratorAppManager.share.userFillInfoMode.sex = "2"
                WithAdministratorAppManager.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.at()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: WithAdministratorAppManager.share.userFillInfoMode.sex = "1"
                WithAdministratorAppManager.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.at()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
