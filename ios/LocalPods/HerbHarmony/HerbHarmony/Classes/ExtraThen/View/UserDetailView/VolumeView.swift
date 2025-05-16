
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_centerMatchName:[UInt8] = [0x6a,0x6f,0x6a,0x75,0x29,0x64,0x70,0x65,0x66,0x73,0x3b,0x2a,0x21,0x69,0x62,0x74,0x21,0x6f,0x70,0x75,0x21,0x63,0x66,0x66,0x6f,0x21,0x6a,0x6e,0x71,0x6d,0x66,0x6e,0x66,0x6f,0x75,0x66,0x65]

fileprivate func eleventhHourLoad(pic num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_others_shadow_up" :*/
fileprivate let str_targetData:String = "bg_otmanager collection open"
fileprivate let str_maleData:String = "call explain aspect aspectadow_up"

/*: "nav_back_black_nor" :*/
fileprivate let str_makeValue:String = "refuse by color example effectnav_"
fileprivate let str_pathData:String = "black_nplayer model"
fileprivate let str_seatText:String = "moder"

/*: "btn_detail_more" :*/
fileprivate let str_frameName:String = "var model call equal textbtn_de"
fileprivate let str_managerTitle:[Character] = ["t","a"]
fileprivate let str_viewRegularTitle:String = "self reply if view guardil_more"

/*: "Shielding Success" :*/
fileprivate let str_labelMakeTitle:[Character] = ["S","h","i","e","l","d","i"]
fileprivate let str_centerInputAsData:String = "pic letng Su"

/*: "Unmasking Succeeded" :*/
fileprivate let str_toTitleData:String = "will info centerUnmas"
fileprivate let str_modelTitle:[Character] = ["k","i"]
fileprivate let str_valueCurrentVideoData:String = "m removeng Su"

/*: "Report" :*/
fileprivate let str_cellData:[Character] = ["R","e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let str_bagData:String = "Remvoeinteraction model index dismiss"

/*: "Block" :*/
fileprivate let str_sharedName:String = "Blocktext let in"

/*: "Cancel" :*/
fileprivate let str_callTimeTitle:String = "Cancelmake collection equal name hidden"

/*: "OK" :*/
fileprivate let str_centerData:String = "voiceK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VolumeView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class VolumeView: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = MModelType() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        survival()
        //: setupSubViewsConstraint()
        valueView()
        //: bindInteraction()
        adhereTotaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_centerMatchName.map{eleventhHourLoad(pic: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "bg_others_shadow_up")
        imgV.image = UIImage.nearCounterval(name: (String(str_targetData.prefix(5)) + "hers_sh" + String(str_maleData.suffix(7))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_makeValue.suffix(4)) + "back_" + String(str_pathData.prefix(7)) + str_seatText.replacingOccurrences(of: "mode", with: "o"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(requestError), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_frameName.suffix(6)) + String(str_managerTitle) + String(str_viewRegularTitle.suffix(7)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension VolumeView {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func exWrite() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        UnambiguousThen.custom(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                //: ProgressHUD.toast(toastStr)
                StandardProgressHUD.slot(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension VolumeView {
    //: @objc private func clickBackButtonAction() {
    @objc private func requestError() {
        //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        LeadingEqualReactiveCompatible.share.getEqualVc()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func match() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = SuspensionBridgeDataSource(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(str_cellData)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(str_bagData.prefix(6)) + " Block").localized : (String(str_sharedName.prefix(5))).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.titleEvent(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.exercise()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.belowFrom()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func exercise() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = SectionThen(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.format(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func belowFrom() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            exWrite()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        VoiceAlertShow.enablelineMedium(title: nil, message: kLet_pathText, leftBtnTitle: (String(str_callTimeTitle.prefix(6))).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: self.req_pullBlackRequest()
            self.exWrite()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension VolumeView {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func eventView(_ userModel: MModelType) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == WithAdministratorAppManager.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == WithAdministratorAppManager.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func survival() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func valueView() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_indexText)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_indexText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: kLet_indexText))
        }
    }

    //: private func bindInteraction() {
    private func adhereTotaleraction() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.match()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
