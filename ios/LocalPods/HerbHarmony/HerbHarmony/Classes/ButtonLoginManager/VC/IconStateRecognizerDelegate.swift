
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_showFaceName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Personal information" :*/
fileprivate let str_momentContent:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: _ :*/
fileprivate let str_colorData:String = "within"

/*: "male" :*/
fileprivate let str_valueData:[UInt8] = [0xfe,0xf2,0xfd,0xf6]

fileprivate func rawData(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 145
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let str_televisionData:[Character] = ["f","e","m","a","l","e"]

/*: "newHeadPic" :*/
fileprivate let str_labTitle:[Character] = ["n","e","w","H","e","a","d","P","i","c"]

/*: "invite_code" :*/
fileprivate let str_timeNumberData:[Character] = ["i","n","v","i","t","e"]
fileprivate let str_viewQuantityeractionText:[Character] = ["_","c","o","d","e"]

/*: "codeFillType" :*/
fileprivate let str_bottomData:[Character] = ["c","o","d","e","F","i","l","l","T","y","p","e"]

/*: "RegisterSuccess" :*/
fileprivate let str_addPageTitle:[Character] = ["R","e","g","i","s","t","e","r","S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconStateRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class IconStateRecognizerDelegate: NameViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_showFaceName.reversed(), encoding: .utf8)!)
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
        self.title = (String(str_momentContent)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.butylate()
        //: self.setupSubViewsConstraint()
        self.equalColorView()
        //: self.bindInteraction()
        self.vegetation()
        //: addTapGestureRecognizer()
        ascendingColon()

        //: func__checkFinishBtnState()
        buttonTime()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: FullPhotoView = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = FullPhotoView()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension IconStateRecognizerDelegate {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func frontPopback() {
        //: super.naviPopback()
        super.frontPopback()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_halfStatusName)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_valueData.map{rawData(equal: $0)}, encoding: .utf8)! : (String(str_televisionData)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func action() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_bottomPackagePartyName)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_valueData.map{rawData(equal: $0)}, encoding: .utf8)! : (String(str_televisionData)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)

        //: if WithAdministratorAppManager.share.userFillInfoMode.headImage != nil {
        if WithAdministratorAppManager.share.userFillInfoMode.headImage != nil {
            //: let image = WithAdministratorAppManager.share.userFillInfoMode.headImage!
            let image = WithAdministratorAppManager.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(str_labTitle))] = image.jpegData(compressionQuality: 1)
        }
        //: if WithAdministratorAppManager.share.userFillInfoMode.inviteCode.count > 0 {
        if WithAdministratorAppManager.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = WithAdministratorAppManager.share.userFillInfoMode.inviteCode
            params[(String(str_timeNumberData) + String(str_viewQuantityeractionText))] = WithAdministratorAppManager.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: kLet_playName)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(str_timeNumberData) + String(str_viewQuantityeractionText))] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(str_bottomData))] = 1
            }
        }

        //: if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
        if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
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
                    ViewIndexReactiveCompatible.share.atPassePartoutAd(key: (String(str_addPageTitle)))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    CombinationReactiveCompatible.share.dataConverterParameters(name: (String(str_addPageTitle)))

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
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = MessageThen()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.actionController()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func buttonTime() {
        //: let headImg = WithAdministratorAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = WithAdministratorAppManager.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension IconStateRecognizerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func tablePicOf() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        LaissezPasserThen.conceptAlbum(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = EqualToolThen.magnification(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                LeadingEqualReactiveCompatible.share.getEqualVc()?.present(vc, animated: true)
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
                            //: WithAdministratorAppManager.share.userFillInfoMode.headImage = photos![0]
                            WithAdministratorAppManager.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.buttonTime()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension IconStateRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func butylate() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func equalColorView() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func vegetation() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: OnInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                tablePicOf()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.action()
                //: break
            }

            //: return
        }
    }
}
