
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let str_makeData:[Character] = ["P","e","r","s","o","n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: _ :*/
fileprivate let str_requestData:String = "add"

/*: "male" :*/
fileprivate let str_equalData:[UInt8] = [0xaa,0xa6,0xab,0xa2]

private func greetBorder(black num: UInt8) -> UInt8 {
    return num ^ 199
}

/*: "female" :*/
fileprivate let str_centerValueName:String = "playeremale"

/*: "sex" :*/
fileprivate let str_topAppName:String = "ssize"

/*: "nickname" :*/
fileprivate let str_tabText:String = "nviewkname"

/*: "birthday" :*/
fileprivate let str_centerToData:String = "BIRTHDA"
fileprivate let str_normalData:String = "Y"

/*: "%.2d" :*/
fileprivate let str_callName:[Character] = ["%",".","2","d"]

/*: - :*/
fileprivate let str_nameData:String = "size"

/*: "User :*/
fileprivate let str_actionTitle:[Character] = ["U","s","e","r"]

/*: "invite_code" :*/
fileprivate let str_voiceLiveValue:[UInt8] = [0x26,0x21,0x39,0x26,0x3b,0x2a,0x10,0x2c,0x20,0x2b,0x2a]

private func signModeButton(cell num: UInt8) -> UInt8 {
    return num ^ 79
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class TextThen: NameViewController {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        equalOpen(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: WithAdministratorAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            WithAdministratorAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: WithAdministratorAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            WithAdministratorAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(str_makeData)).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        enableline()
        //: setupSubViewsConstraint()
        constraintDetail()
        //: bindInteraction()
        end()
        //: addTapGestureRecognizer()
        ascendingColon()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: ReadoutFieldDelegate = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = ReadoutFieldDelegate()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension TextThen {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func frontPopback() {
        //: super.naviPopback()
        super.frontPopback()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(kLet_intimateText)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_equalData.map{greetBorder(black: $0)}, encoding: .utf8)! : (str_centerValueName.replacingOccurrences(of: "player", with: "f")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kLet_voiceText.quantityingTime(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func make() {
        //: if WithAdministratorAppManager.share.userFillInfoMode.nickName.count <= 0 {
        if WithAdministratorAppManager.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            randomNickname()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = WithAdministratorAppManager.share.userFillInfoMode.sex
        params[(str_topAppName.replacingOccurrences(of: "size", with: "ex"))] = WithAdministratorAppManager.share.userFillInfoMode.sex
        //: params["nickname"] = WithAdministratorAppManager.share.userFillInfoMode.nickName
        params[(str_tabText.replacingOccurrences(of: "view", with: "ic"))] = WithAdministratorAppManager.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", WithAdministratorAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", WithAdministratorAppManager.share.userFillInfoMode.birthDay))-\(WithAdministratorAppManager.share.userFillInfoMode.birthYear)"
        params[(str_centerToData.lowercased() + str_normalData.lowercased())] = "\(String(format: "%.2d", WithAdministratorAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", WithAdministratorAppManager.share.userFillInfoMode.birthDay))-\(WithAdministratorAppManager.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = IconStateRecognizerDelegate()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        actionController()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func canTime() {
        //: getRandomNickname()
        randomNickname()
        //: WithAdministratorAppManager.share.userFillInfoMode.setBirth()
        WithAdministratorAppManager.share.userFillInfoMode.pile()
        //: WithAdministratorAppManager.share.userFillInfoMode.inviteCode = ""
        WithAdministratorAppManager.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        make()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func randomNickname() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: WithAdministratorAppManager.share.userFillInfoMode.nickName = "User\(randCode)"
        WithAdministratorAppManager.share.userFillInfoMode.nickName = (String(str_actionTitle)) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension TextThen {
    // 添加视图
    //: private func setupSubviews() {
    private func enableline() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func constraintDetail() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func end() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: OnInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_bottomName)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_equalData.map{greetBorder(black: $0)}, encoding: .utf8)! : (str_centerValueName.replacingOccurrences(of: "player", with: "f")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_voiceText.quantityingTime(eventID: eventID)

                // 校验验证码
                //: if WithAdministratorAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                if WithAdministratorAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": WithAdministratorAppManager.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: str_voiceLiveValue.map{signModeButton(cell: $0)}, encoding: .utf8)!: WithAdministratorAppManager.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    CellReactiveCompatible.image(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.make()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.make()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kLet_statusTitle)_\(WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_equalData.map{greetBorder(black: $0)}, encoding: .utf8)! : (str_centerValueName.replacingOccurrences(of: "player", with: "f")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kLet_voiceText.quantityingTime(eventID: eventID)
                //: self.func__skipBtnAction()
                self.canTime()
            }
        }
    }
}
