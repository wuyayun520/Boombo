
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_errName:[UInt8] = [0x8c,0x91,0x8c,0x97,0x4b,0x86,0x92,0x87,0x88,0x95,0x5d,0x4c,0x43,0x8b,0x84,0x96,0x43,0x91,0x92,0x97,0x43,0x85,0x88,0x88,0x91,0x43,0x8c,0x90,0x93,0x8f,0x88,0x90,0x88,0x91,0x97,0x88,0x87]

fileprivate func viewReply(present num: UInt8) -> UInt8 {
    let value = Int(num) + 221
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_livetc_warn" :*/
fileprivate let str_textValue:String = "live user returnicon_li"
fileprivate let str_equalData:String = "VET"
fileprivate let str_resourceText:[Character] = ["c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let str_colorTitle:[Character] = ["S","y","s","t","e","m"," ","n"]
fileprivate let str_makeValue:[Character] = ["o","t","i","f","i","c"]
fileprivate let str_coverValue:String = "ATION"

/*: "Upload Now" :*/
fileprivate let str_roomData:String = "Upextension text close date"
fileprivate let str_errorData:String = "load Nowdatabase array gift"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_colorText:String = "direct size equalbtn_m"
fileprivate let str_inputValue:[Character] = ["e","_","p","r","o","g","r"]
fileprivate let str_headValue:String = "priority list if trueam_pho"
fileprivate let str_colorWindowData:String = "leview"

/*: "content" :*/
fileprivate let str_infoData:String = "contstatust"

/*: "jumpKey" :*/
fileprivate let str_donModelName:String = "at kindjumpKey"

/*: "uploadUserHeaderPic" :*/
fileprivate let str_tabContent:[Character] = ["u","p","l","o","a","d","U","s","e","r"]
fileprivate let str_pageTitle:String = "info search inHeaderPic"

/*: "truePersonAuth" :*/
fileprivate let str_cellTitle:[Character] = ["t","r","u","e","P","e","r"]
fileprivate let str_callContent:String = "S"
fileprivate let str_nearMessageName:String = "onAuthindex text"

/*: "headPic" :*/
fileprivate let str_emptyAtTitle:String = "to type content liveheadPic"

/*: "Modify the success" :*/
fileprivate let str_succeedName:[Character] = ["M","o","d","i","f","y"," ","t","h","e"," ","s","u"]
fileprivate let str_tempName:String = "ccappss"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class ToView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupMemberOf()
        //: self.setupSubViewsConstraint()
        self.beyondTitle()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_errName.map{viewReply(present: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearCounterval(name: "icon_livetc_warn")
        imag.image = UIImage.nearCounterval(name: (String(str_textValue.suffix(7)) + str_equalData.lowercased() + String(str_resourceText)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(str_colorTitle) + String(str_makeValue) + str_coverValue.lowercased()).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(str_roomData.prefix(2)) + String(str_errorData.prefix(8))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(carryOutSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_colorText.suffix(5)) + String(str_inputValue) + String(str_headValue.suffix(6)) + "to_de" + str_colorWindowData.replacingOccurrences(of: "view", with: "te"))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toPush), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension ToView {
    //: func setViewData(dit: [String: String]) {
    func toEachDoinge(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(str_infoData.replacingOccurrences(of: "status", with: "en"))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(str_donModelName.suffix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func carryOutSize() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (String(str_tabContent) + String(str_pageTitle.suffix(9))) {
            //: updatePhotoButtonClick()
            quit()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(str_cellTitle) + str_callContent.lowercased() + String(str_nearMessageName.prefix(6))) {
            //: WithAdministratorAppManager.share.loginUserMode.isTPAuth = "3"
            WithAdministratorAppManager.share.loginUserMode.isTPAuth = "3"
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
            //: dismiss()
            titleShared()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func toPush() {
        //: dismiss()
        titleShared()
    }

    //: func show() {
    func addFor() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func titleShared() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func quit() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        LaissezPasserThen.conceptAlbum(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = EqualToolThen.magnification(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
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
                            self.stickDoing(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.titleShared()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.titleShared()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func stickDoing(img: UIImage) {
        //: let resultData: NSData = img.lengthPicAccountingData()! as NSData
        let resultData: NSData = img.lengthPicAccountingData()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(str_emptyAtTitle.suffix(7))): resultData]
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        QuantityeractionThen.fixing(params: dict) { [weak self] succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.titleShared()
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
            self.successMsg(showMsg: (String(str_succeedName) + str_tempName.replacingOccurrences(of: "app", with: "e")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: WithAdministratorAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            WithAdministratorAppManager.share.loginUserMode.headPic = data[(String(str_emptyAtTitle.suffix(7)))] as? String
            //: WithAdministratorAppManager.share.loginUserMode.headPicStatus = 0
            WithAdministratorAppManager.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension ToView {
    // 添加视图
    //: private func setupSubviews() {
    private func setupMemberOf() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func beyondTitle() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
