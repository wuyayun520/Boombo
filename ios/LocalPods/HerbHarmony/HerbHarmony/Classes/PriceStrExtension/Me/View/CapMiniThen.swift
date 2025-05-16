
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataContent:[UInt8] = [0x64,0x69,0x64,0x6f,0x23,0x5e,0x6a,0x5f,0x60,0x6d,0x35,0x24,0x1b,0x63,0x5c,0x6e,0x1b,0x69,0x6a,0x6f,0x1b,0x5d,0x60,0x60,0x69,0x1b,0x64,0x68,0x6b,0x67,0x60,0x68,0x60,0x69,0x6f,0x60,0x5f]

fileprivate func worldView(block num: UInt8) -> UInt8 {
    let value = Int(num) - 251
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let str_modelValue:String = "bg_msize view"
fileprivate let str_labelTitle:String = "ge_topto head label"

/*: "img_me_edit_photo_default" :*/
fileprivate let str_listData:String = "accept my sure interactionimg_m"
fileprivate let str_timeAddCurrentValue:String = "it_phofficial head left"
fileprivate let str_modelText:[Character] = ["f","a","u","l","t"]

/*: "icon_lounge" :*/
fileprivate let str_frameValue:String = "size dismiss fatalicon_"

/*: "#777777" :*/
fileprivate let str_makeTitle:String = "#777777"

/*: "#FF506D" :*/
fileprivate let str_nameTitle:String = "#FF506text post cell"
fileprivate let str_equalKeepData:String = "share"

/*: "Reviewing" :*/
fileprivate let str_managerTitle:String = "gender true fail ofRevi"

/*: "headPic" :*/
fileprivate let str_contentData:String = "headPicroom make key render"

/*: "Modify the success" :*/
fileprivate let str_infoName:[Character] = ["M","o","d","i","f","y"," ","t","h","e"]
fileprivate let str_blockToText:String = " spoint var in"
fileprivate let str_titleData:String = "uccehidehide"

/*: "UID:" :*/
fileprivate let str_infoData:[Character] = ["U","I","D",":"]

/*: "UID Copied" :*/
fileprivate let str_styleSecondData:String = "UID effect load"
fileprivate let str_errorName:[Character] = ["C","o","p","i","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CapMiniThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class CapMiniThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        colorScreen()
        //: setupSubViewsConstraint()
        chemicalElement()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataContent.map{worldView(block: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.nearCounterval(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.nearCounterval(name: (String(str_modelValue.prefix(4)) + "essa" + String(str_labelTitle.prefix(6)))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_listData.suffix(5)) + "e_ed" + String(str_timeAddCurrentValue.prefix(5)) + "oto_de" + String(str_modelText))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 89/2
        btn.layer.cornerRadius = 89 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fastenerLab), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_lounge")
        img.image = UIImage.nearCounterval(name: (String(str_frameValue.suffix(5)) + "lounge"))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: RoomThen = {
        //: let btn = TalkingButton.init()
        let btn = RoomThen()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
//        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_makeTitle.capitalized)), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
//        btn.setImage(UIImage.nearCounterval(name: "btn_me_copy"), for: .normal)
//        btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

//    private lazy var editImag: UIImageView = {
//        let imag = UIImageView.init(image: UIImage.nearCounterval(name: "btn_me_new_edit"))
//        return imag
//    }()
//    private lazy var editPushBtn: UIButton = {
//        let btn = UIButton.init()
//        btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
//        return btn
//    }()
    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 12)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_nameTitle.prefix(6)) + str_equalKeepData.replacingOccurrences(of: "share", with: "D")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_managerTitle.suffix(4)) + "ewing").localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension CapMiniThen {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func seededPlayer(img: UIImage) {
        //: let resultData: NSData = img.lengthPicAccountingData()! as NSData
        let resultData: NSData = img.lengthPicAccountingData()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_contentData.prefix(7))): resultData]
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        QuantityeractionThen.fixing(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.atShow(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }

            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.successMsg(showMsg: (String(str_infoName) + String(str_blockToText.prefix(2)) + str_titleData.replacingOccurrences(of: "hide", with: "s")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: WithAdministratorAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            WithAdministratorAppManager.share.loginUserMode.headPic = data[(String(str_contentData.prefix(7)))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: WithAdministratorAppManager.share.loginUserMode.headPicStatus = 0
            WithAdministratorAppManager.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: WithAdministratorAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.howeverFinish(urlStr: WithAdministratorAppManager.share.loginUserMode.headPic ?? (String(str_listData.suffix(5)) + "e_ed" + String(str_timeAddCurrentValue.prefix(5)) + "oto_de" + String(str_modelText)))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension CapMiniThen {
    /// 更新数据
    //: func setViewData() {
    func trademark() {
        //: iconImag.setUrlImage(urlStr: WithAdministratorAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.howeverFinish(urlStr: WithAdministratorAppManager.share.loginUserMode.headPic ?? (String(str_listData.suffix(5)) + "e_ed" + String(str_timeAddCurrentValue.prefix(5)) + "oto_de" + String(str_modelText)))
        //: nameLB.textColor = WithAdministratorAppManager.share.loginUserMode.loungePlus ? .userVipColor():.occurrence()
        nameLB.textColor = WithAdministratorAppManager.share.loginUserMode.loungePlus ? .insert() : .occurrence()
        //: nameLB.text = WithAdministratorAppManager.share.loginUserMode.nickname
        nameLB.text = WithAdministratorAppManager.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + WithAdministratorAppManager.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(str_infoData)) + WithAdministratorAppManager.share.loginUserMode.userID, for: .normal)
        //: statusLB.isHidden = (WithAdministratorAppManager.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (WithAdministratorAppManager.share.loginUserMode.headPicStatus != MainWithConstantTarget.isOnGoing.rawValue)
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func noOmit() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = WithAdministratorAppManager.share.loginUserMode.userID
        paste.string = WithAdministratorAppManager.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.successMsg(showMsg: (String(str_styleSecondData.prefix(4)) + String(str_errorName)).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func fastenerLab() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        LaissezPasserThen.conceptAlbum(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = EqualToolThen.magnification(allowImgCrop: true, needCircleCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.actionController()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.seededPlayer(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func fileError() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if WithAdministratorAppManager.share.loginUserMode.headPicStatus == MainWithConstantTarget.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if WithAdministratorAppManager.share.loginUserMode.headPicStatus == MainWithConstantTarget.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        beforeAppear()
    }

    //: private func isTPAuthTool() {
    private func beforeAppear() {
        //: if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isSuccessed.rawValue {
            //: return
            return
                //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.unknown.rawValue {
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
            //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = CommensurateViewController()
            //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LeadingEqualReactiveCompatible.share.getEqualVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func roundClick() {
        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: WithAdministratorAppManager.share.loginUid)
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: WithAdministratorAppManager.share.loginUid)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension CapMiniThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorScreen() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(iconImag)
        bgImgView.addSubview(iconImag)
        //: bgImgView.addSubview(nameLB)
        bgImgView.addSubview(nameLB)
        //: bgImgView.addSubview(loungeImgV)
        bgImgView.addSubview(loungeImgV)
        //: bgImgView.addSubview(idBtn)
        bgImgView.addSubview(idBtn)
//        bgImgView.addSubview(editImag)
//        bgImgView.addSubview(editPushBtn)
        //: bgImgView.addSubview(statusLB)
        bgImgView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func chemicalElement() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+228)
            make.height.equalTo(kLet_messageContent + 228)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+50)
            make.top.equalTo(kLet_messageContent + 50)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(89)
            make.width.height.equalTo(89)
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(10)
            make.top.equalTo(iconImag.snp.bottom).offset(10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_senseContent / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }

//        editImag.snp.makeConstraints { make in
//            make.centerY.equalTo(iconImag)
//            make.trailing.equalToSuperview().offset(-16)
//            make.width.equalTo(6)
//            make.height.equalTo(11)
//        }
//        editPushBtn.snp.makeConstraints { make in
//            make.centerY.equalTo(editImag)
//            make.trailing.equalToSuperview().offset(-10)
//            make.width.height.equalTo(60)
//        }
    }
}
