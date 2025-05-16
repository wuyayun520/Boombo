
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_centerPathValue:[UInt8] = [0x8d,0x8a,0x8d,0x90,0xcc,0x87,0x8b,0x80,0x81,0x96,0xde,0xcd,0xc4,0x8c,0x85,0x97,0xc4,0x8a,0x8b,0x90,0xc4,0x86,0x81,0x81,0x8a,0xc4,0x8d,0x89,0x94,0x88,0x81,0x89,0x81,0x8a,0x90,0x81,0x80]

/*: "#333333" :*/
fileprivate let str_photoTitle:[Character] = ["#","3","3","3","3","3","3"]

/*: "My photos" :*/
fileprivate let str_colorSectionValue:[Character] = ["M","y"," ","p","h","o","t","o","s"]

/*: "#999999" :*/
fileprivate let str_mainUpText:String = "#useruseruser"

/*: "Click to change or delete photo." :*/
fileprivate let str_errorData:[UInt8] = [0xa8,0x87,0x82,0x88,0x80,0xcb,0x9f,0x84,0xcb,0x88,0x83,0x8a,0x85,0x8c,0x8e,0xcb,0x84,0x99,0xcb,0x8f,0x8e,0x87,0x8e,0x9f,0x8e,0xcb,0x9b,0x83,0x84,0x9f,0x84,0xc5]

/*: "btn_me_edit_photo_add_nor" :*/
fileprivate let str_lockName:String = "for infobtn_"
fileprivate let str_borderName:String = "user in select varme_e"
fileprivate let str_startTitle:String = "info more page view addoto_"

/*: "btn_me_edit_photo_add_pre" :*/
fileprivate let str_bodyValue:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_","p","h","o","t","o","_","a","d","d","_","p","r","e"]

/*: "btn_me_edit_photo_delete" :*/
fileprivate let str_inputMoveTitle:String = "btn_meerror self"
fileprivate let str_insideData:String = "_photblock to center"
fileprivate let str_sectionGalleryTitle:[Character] = ["o","_","d"]
fileprivate let str_upDismissText:String = "elecomponent"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InduePhotoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: public protocol EditPhotoDelegate: NSObject {
public protocol ShowThen: NSObject {
    /// 图片add
    //: func addPhoto(_ icon: [UIImage])
    func toVignette(_ icon: [UIImage])
    /// 图片本地delete
    //: func deletePhoto(_ icon: UIImage)
    func followCollection(_ icon: UIImage)
    /// 图片后台delete
    //: func deletePhotoWithUid(_ iconUid: String)
    func sumernalRepresentation(_ iconUid: String)
}

//: class TalkingEditPhotoCell: UITableViewCell {
class InduePhotoCell: UITableViewCell {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var count = 0
    var count = 0
    //: open weak var delegate: EditPhotoDelegate?
    open weak var delegate: ShowThen?
    //: var allPhoto = Array<Any>()
    var allPhoto = [Any]()
    //: var backBottomOffer = -41
    var backBottomOffer = -41

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: self.addSubview(messageLB)
        self.addSubview(messageLB)
//        showMessageView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_centerPathValue.map{$0^228}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
            make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(backView.snp.bottom).offset(6)
            make.top.equalTo(backView.snp.bottom).offset(6)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius  = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (String(str_photoTitle)))
        //: lb.text = "My photos".localized
        lb.text = (String(str_colorSectionValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 12)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 12)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (str_mainUpText.replacingOccurrences(of: "user", with: "99")))
        //: lb.text = "Click to change or delete photo.".localized
        lb.text = String(bytes: str_errorData.map{$0^235}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditPhotoCell {
extension InduePhotoCell {
    //: func showMessageView () {
    func wireRow() {
        //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
        let sizewh = Int((ScreenWidth - 30 - 12 * 2 - 9 * 2) / 3)

        //: let xa = 12
        let xa = 12 // x 初始值
        //: let ya = 46
        let ya = 46 // y 初始值
        //: let xz = 9
        let xz = 9 // 横向间隔
        //: let yz = 9
        let yz = 9 // 纵向间隔

        //: for  i in 0..<9 {
        for i in 0 ..< 9 {
            //: let X = xa+(xz + sizewh)*(i%3)
            let X = xa + (xz + sizewh) * (i % 3)
            //: let Y = ya+(yz + sizewh)*(i/3)
            let Y = ya + (yz + sizewh) * (i / 3)
            //: let frame = CGRect.init(x: X, y: Y, width: sizewh, height: sizewh)
            let frame = CGRect(x: X, y: Y, width: sizewh, height: sizewh)

            //: let colorBtn = UIButton.init(frame: frame)
            let colorBtn = UIButton(frame: frame)
            //: colorBtn.setBackgroundImage(.nearCounterval(name: "btn_me_edit_photo_add_nor"), for: .normal)
            colorBtn.setBackgroundImage(.nearCounterval(name: (String(str_lockName.suffix(4)) + String(str_borderName.suffix(4)) + "dit_ph" + String(str_startTitle.suffix(4)) + "add_nor")), for: .normal)
            //: colorBtn.setBackgroundImage(.nearCounterval(name: "btn_me_edit_photo_add_pre"), for: .highlighted)
            colorBtn.setBackgroundImage(.nearCounterval(name: (String(str_bodyValue))), for: .highlighted)
            //: colorBtn.imageView?.contentMode = .scaleAspectFill
            colorBtn.imageView?.contentMode = .scaleAspectFill
            //: colorBtn.layer.cornerRadius = 4
            colorBtn.layer.cornerRadius = 4
            //: colorBtn.clipsToBounds = true
            colorBtn.clipsToBounds = true
            //: backView.addSubview(colorBtn)
            backView.addSubview(colorBtn)
            //: allPhoto.append(colorBtn)
            allPhoto.append(colorBtn)
            //: colorBtn.rx.tap.subscribe(onNext: { [weak self] in
            colorBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.seleteBtnClick(sender: colorBtn)
                self.doingUserAttribute(sender: colorBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

            //: let deleteBtn = UIButton.init(frame: CGRect.init(x: colorBtn.frame.size.width-24, y: 0, width: 24, height: 24))
            let deleteBtn = UIButton(frame: CGRect(x: colorBtn.frame.size.width - 24, y: 0, width: 24, height: 24))
            //: deleteBtn.isHidden = true
            deleteBtn.isHidden = true
            //: deleteBtn.setBackgroundImage(.nearCounterval(name: "btn_me_edit_photo_delete"), for: .normal)
            deleteBtn.setBackgroundImage(.nearCounterval(name: (String(str_inputMoveTitle.prefix(6)) + "_edit" + String(str_insideData.prefix(5)) + String(str_sectionGalleryTitle) + str_upDismissText.replacingOccurrences(of: "component", with: "te"))), for: .normal)
            //: colorBtn.addSubview(deleteBtn)
            colorBtn.addSubview(deleteBtn)
            //: deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.deleteBtnClick(sender: deleteBtn)
                self.finish(sender: deleteBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
        }
    }

    //: @objc func seleteBtnClick(sender: UIButton) {
    @objc func doingUserAttribute(sender: UIButton) {
        //: if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
        if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
           //: WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ShowWindowManager.shared.mObjectDetail()
            //: return
            return
        }
        //: var isReturn = false
        var isReturn = false
        //: _ = sender.subviews.map { view in
        _ = sender.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: if view.isHidden == false {
                if view.isHidden == false {
                    //: isReturn = true
                    isReturn = true
                }
            }
        }
        //: if isReturn {
        if isReturn {
            //: return
            return
        }

        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        LaissezPasserThen.conceptAlbum(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc =  TalkingImagePickTool.initImagePickerVc(maxCount: 9-self.count, allowPhoto: true, allowVideo: false)
                let vc = EqualToolThen.magnification(maxCount: 9 - self.count, allowPhoto: true, allowVideo: false)
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
                            //: if self.count<self.allPhoto.count {
                            if self.count < self.allPhoto.count {
                                //: for j in 0..<photos!.count {
                                for j in 0 ..< photos!.count {
                                    //: let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    //: Btn .setImage(photos?[j], for: .normal)
                                    Btn.setImage(photos?[j], for: .normal)
                                    //: Btn .setImage(photos?[j], for: .highlighted)
                                    Btn.setImage(photos?[j], for: .highlighted)
                                    //: _ = Btn.subviews.map { view in
                                    _ = Btn.subviews.map { view in
                                        //: if (view is UIButton) {
                                        if view is UIButton {
                                            //: view.isHidden = false
                                            view.isHidden = false
                                        }
                                    }
                                    //: self.count+=1
                                    self.count += 1
                                }
                            }
                            //: self.delegate?.addPhoto(photos!)
                            self.delegate?.toVignette(photos!)
                        }
                        //: return
                }
            }
        }
    }

    //: @objc func deleteBtnClick(sender: UIButton) {
    @objc func finish(sender: UIButton) {
        //: if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
        if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
           //: WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ShowWindowManager.shared.mObjectDetail()
            //: return
            return
        }
        //: let superBtn: UIButton = sender.superview as! UIButton
        let superBtn: UIButton = sender.superview as! UIButton

        //: self.delegate?.deletePhoto(superBtn.imageView?.image ?? UIImage.init())
        self.delegate?.followCollection(superBtn.imageView?.image ?? UIImage())

        //: self.delegate?.deletePhotoWithUid(String(superBtn.tag))
        self.delegate?.sumernalRepresentation(String(superBtn.tag))

        //: superBtn.setImage(UIImage.init(), for: .normal)
        superBtn.setImage(UIImage(), for: .normal)
        //: superBtn.setImage(UIImage.init(), for: .highlighted)
        superBtn.setImage(UIImage(), for: .highlighted)
        //: sender.isHidden = true
        sender.isHidden = true
    }

    //: func setPhoto(selete: Array<TalkingUserInfoGalleryModel>) {
    func request(selete: [PossibilityHandyJSON]) {
        //: _ = backView.subviews.map { view in
        _ = backView.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: view.removeFromSuperview()
                view.removeFromSuperview()
            }
        }
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        wireRow()

        //: count = selete.count
        count = selete.count
        //: for i in 0..<selete.count {
        for i in 0 ..< selete.count {
            //: if i<allPhoto.count {
            if i < allPhoto.count {
                //: let Btn: UIButton = allPhoto[i] as! UIButton
                let Btn: UIButton = allPhoto[i] as! UIButton
                //: Btn.tag = Int(selete[i].uid) ?? 0
                Btn.tag = Int(selete[i].uid) ?? 0
                //: if selete[i].isLocal {
                if selete[i].isLocal {
                    //: Btn.setImage(selete[i].imagePic, for: .normal)
                    Btn.setImage(selete[i].imagePic, for: .normal)
                    //: } else {
                } else {
                    //: Btn.setUrlImage(urlStr: selete[i].url)
                    Btn.howeverFinish(urlStr: selete[i].url)
                }
                //: _ = Btn.subviews.map { view in
                _ = Btn.subviews.map { view in
                    //: if (view is UIButton) {
                    if view is UIButton {
                        //: view.isHidden = false
                        view.isHidden = false
                    }
                }
            }
        }
    }

    //: func setTips(str: String) {
    func lumbarVertebra(str: String) {
        //: titleBLB.text = str
        titleBLB.text = str
        //: messageLB.isHidden = true
        messageLB.isHidden = true
    }

    //: func resetPhoto() {
    func after() {
        //: count = 0
        count = 0
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        wireRow()
    }
}
