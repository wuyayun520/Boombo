
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_listStarData:[UInt8] = [0xd7,0xd0,0xd7,0xca,0x96,0xdd,0xd1,0xda,0xdb,0xcc,0x84,0x97,0x9e,0xd6,0xdf,0xcd,0x9e,0xd0,0xd1,0xca,0x9e,0xdc,0xdb,0xdb,0xd0,0x9e,0xd7,0xd3,0xce,0xd2,0xdb,0xd3,0xdb,0xd0,0xca,0xdb,0xda]

private func modelTitle(view num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "icon_window_verification" :*/
fileprivate let str_progressName:String = "icophone"
fileprivate let str_cookieValue:String = "make in moon letw_ver"
fileprivate let str_femaleData:[Character] = ["i","f","i"]
fileprivate let str_blockCallGuardData:String = "cahiddenion"

/*: "Go to certify" :*/
fileprivate let str_modelName:String = "line time direction match layerGo"
fileprivate let str_jumpTempValue:String = " to kit add any image let"

/*: "btn_me_program_photo_delete" :*/
fileprivate let str_insertCallData:String = "btn_me_to value medium data"
fileprivate let str_pinValue:[Character] = ["p","r","o","g","r","a"]
fileprivate let str_levelHeadText:[Character] = ["m","_","p","h","o","t","o","_","d","e","l","e","t","e"]

/*: "Authentication is under reviewing" :*/
fileprivate let str_acceptName:[UInt8] = [0xbf,0x8b,0x8a,0x96,0x9b,0x90,0x8a,0x97,0x9d,0x9f,0x8a,0x97,0x91,0x90,0xde,0x97,0x8d,0xde,0x8b,0x90,0x9a,0x9b,0x8c,0xde,0x8c,0x9b,0x88,0x97,0x9b,0x89,0x97,0x90,0x99]

private func languageIndex(near num: UInt8) -> UInt8 {
    return num ^ 254
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class UpView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.labView()
        //: self.setupSubViewsConstraint()
        self.queryed()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_listStarData.map{modelTitle(view: $0)}, encoding: .utf8)!)
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
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: WithAdministratorAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.nearCounterval(name: "icon_window_verification"))
        imag.commentGesture(urlStr: WithAdministratorAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.nearCounterval(name: (str_progressName.replacingOccurrences(of: "phone", with: "n") + "_windo" + String(str_cookieValue.suffix(5)) + String(str_femaleData) + str_blockCallGuardData.replacingOccurrences(of: "hidden", with: "t"))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
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
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(str_modelName.suffix(2)) + String(str_jumpTempValue.prefix(4)) + "certify").localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(underMinute), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_insertCallData.prefix(7)) + String(str_pinValue) + String(str_levelHeadText))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(outputOf), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension UpView {
    //: @objc private func finishBtnClick() {
    @objc private func underMinute() {
        //: dismiss()
        photoDismiss()
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
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.atShow(showMsg: String(bytes: str_acceptName.map{languageIndex(near: $0)}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func outputOf() {
        //: dismiss()
        photoDismiss()
    }

    //: func show() {
    func windowInShow() {
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
    @objc func photoDismiss() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension UpView {
    // 添加视图
    //: private func setupSubviews() {
    private func labView() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func queryed() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(kLet_environmentClickValue / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
