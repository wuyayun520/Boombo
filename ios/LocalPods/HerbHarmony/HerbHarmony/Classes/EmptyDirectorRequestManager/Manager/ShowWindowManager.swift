
//: Declare String Begin

/*: "content" :*/
fileprivate let str_equalTitle:String = "contindext"

/*: "jumpKey" :*/
fileprivate let str_callValue:[Character] = ["j","u","m","p","K","e"]
fileprivate let str_statusBottomValue:[Character] = ["y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let str_popData:String = "uplayeroad"
fileprivate let str_shadowTitle:String = "aderPiplayer to"
fileprivate let str_rankValue:String = "first"

/*: "truePersonAuth" :*/
fileprivate let str_viewFileName:String = "with bag if coin tabletrueP"
fileprivate let str_makeData:[Character] = ["e"]
fileprivate let str_giftDataValue:String = "to make model atrsonAuth"

/*: "yyyy-MM-dd" :*/
fileprivate let str_toolCenterTitle:[Character] = ["y","y"]
fileprivate let str_effectData:String = "yy-MM-ddimage style direction"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowWindowManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum EstateOfTheRealmCaseIterable: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class ShowWindowManager: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [EstateOfTheRealmCaseIterable]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<EstateOfTheRealmCaseIterable> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = ShowWindowManager()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        modelButton()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension ShowWindowManager {
    //: func setObserver() {
    func modelButton() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.naziPartyColor()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(reactWinView), name: kLet_errorName, object: nil)
    }

    //: func setHomePopUpWindow() {
    func momentImage() {
        // 默认模式, 男性, 未订阅
        //: if WithAdministratorAppManager.share.loginUserMode.jumpType == 0,
        if WithAdministratorAppManager.share.loginUserMode.jumpType == 0,
           //: WithAdministratorAppManager.share.appUserConfigMode.payWinType == 2,
           WithAdministratorAppManager.share.appUserConfigMode.payWinType == 2,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue,
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue,
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue,
           //: WithAdministratorAppManager.share.loginUserMode.loungePlus == false {
           WithAdministratorAppManager.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.Web_Subscribe)
        }

        //: if  WithAdministratorAppManager.share.loginUserMode.showSignInPage && WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.showSignInPage, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.sign_in)
        }

        //: if WithAdministratorAppManager.share.loginUserMode.isNaUser == false,
        if WithAdministratorAppManager.share.loginUserMode.isNaUser == false,
           //: WithAdministratorAppManager.share.appUserConfigMode.videoCover.count > 0,
           WithAdministratorAppManager.share.appUserConfigMode.videoCover.count > 0,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue,
           //: WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.video_Cover)
        }

        //: if WithAdministratorAppManager.share.appUserConfigMode.showNewGuidance, WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.appUserConfigMode.showNewGuidance, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.New_Guidance)
        }

        //: if WithAdministratorAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0 && WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: refuseViewData["content"] = WithAdministratorAppManager.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(str_equalTitle.replacingOccurrences(of: "index", with: "en"))] = WithAdministratorAppManager.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(str_callValue) + String(str_statusBottomValue))] = (str_popData.replacingOccurrences(of: "player", with: "pl") + "UserHe" + String(str_shadowTitle.prefix(6)) + str_rankValue.replacingOccurrences(of: "first", with: "c"))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.Attestation_Refuse)
        }

        //: if WithAdministratorAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0 && WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: refuseViewData["content"] = WithAdministratorAppManager.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(str_equalTitle.replacingOccurrences(of: "index", with: "en"))] = WithAdministratorAppManager.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(str_callValue) + String(str_statusBottomValue))] = (String(str_viewFileName.suffix(5)) + String(str_makeData) + String(str_giftDataValue.suffix(8)))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func temp() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(EstateOfTheRealmCaseIterable.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func cameraFor() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(EstateOfTheRealmCaseIterable.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func mObjectDetail() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(EstateOfTheRealmCaseIterable.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func sizeData(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(str_equalTitle.replacingOccurrences(of: "index", with: "en"))] = dic[(str_equalTitle.replacingOccurrences(of: "index", with: "en"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(str_callValue) + String(str_statusBottomValue))] = dic[(String(str_callValue) + String(str_statusBottomValue))] as? String
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(EstateOfTheRealmCaseIterable.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func reactWinView() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(EstateOfTheRealmCaseIterable.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func naziPartyColor() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.startAdd(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func startAdd(type: EstateOfTheRealmCaseIterable) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .SiginPopup)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = HdtvReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.show()
            view.stopShow()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = PopStartUpView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.show()
            view.everyUp()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = RoomUpView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.show()
            view.build()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = UpView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.show()
            view.windowInShow()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = kLet_dismissData.object(forKey: kLet_liveShowText)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.preemptWithoutVisualAspect(date: Date(), dateFormat: (String(str_toolCenterTitle) + String(str_effectData.prefix(8))))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                kLet_dismissData.set(today, forKey: kLet_liveShowText)
                //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
                LeadingEqualReactiveCompatible.share.nowKeyLog()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ToView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.setViewData(dit: refuseViewData)
            view.toEachDoinge(dit: refuseViewData)
            //: view.show()
            view.addFor()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = VolumeUpView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: view.show()
            view.messageModel()
        }
    }
}
