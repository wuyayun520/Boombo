
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_appTitle:[UInt8] = [0xce,0xc9,0xce,0xd3,0x8f,0xc4,0xc8,0xc3,0xc2,0xd5,0x9d,0x8e,0x87,0xcf,0xc6,0xd4,0x87,0xc9,0xc8,0xd3,0x87,0xc5,0xc2,0xc2,0xc9,0x87,0xce,0xca,0xd7,0xcb,0xc2,0xca,0xc2,0xc9,0xd3,0xc2,0xc3]

private func dataConverter(number num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "Settings" :*/
fileprivate let str_actionText:[Character] = ["S","e","t","t","i"]
fileprivate let str_stopName:String = "messages"

/*: "Security" :*/
fileprivate let str_whiteTitle:String = "user type dismiss record viewSecurit"
fileprivate let str_nearValue:[Character] = ["y"]

/*: "More" :*/
fileprivate let str_modelData:[Character] = ["M","o","r","e"]

/*: "Logout succeeded!" :*/
fileprivate let str_toolTitle:String = "self if end view equalLogout"
fileprivate let str_directionValue:String = "normal app falseeeded!"

/*: "ButtonView" :*/
fileprivate let str_frameData:String = "equal super sendTalking"
fileprivate let str_insertData:String = "inside content range hiddenSett"

/*: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!" :*/
fileprivate let str_pointText:[UInt8] = [0x7b,0x47,0x4e,0x4a,0x58,0x4e,0xb,0x48,0x44,0x46,0x46,0x5e,0x45,0x42,0x48,0x4a,0x5f,0x4e,0xb,0x5c,0x42,0x5f,0x43,0xb,0x44,0x45,0x47,0x42,0x45,0x4e,0xb,0x58,0x4e,0x59,0x5d,0x42,0x48,0x4e,0xb,0x4d,0x42,0x59,0x58,0x5f,0xb,0x4a,0x45,0x4f,0xb,0x5f,0x43,0x4e,0x45,0xb,0x5e,0x5b,0x47,0x44,0x4a,0x4f,0xb,0x47,0x44,0x4c,0x58,0x7,0xb,0x47,0x44,0x4c,0x58,0xb,0x4a,0x59,0x4e,0xb,0x5e,0x58,0x4e,0x4f,0xb,0x5f,0x44,0xb,0x4a,0x45,0x4a,0x47,0x52,0x51,0x4e,0xb,0x5b,0x59,0x44,0x49,0x47,0x4e,0x46,0x58,0xb,0x52,0x44,0x5e,0xb,0x4e,0x45,0x48,0x44,0x5e,0x45,0x5f,0x4e,0x59,0x4e,0x4f,0xb,0x42,0x45,0xb,0x5f,0x43,0x4e,0xb,0x5e,0x58,0x4e,0xb,0x44,0x4d,0xb,0x5f,0x43,0x4e,0xb,0x6a,0x5b,0x5b,0xa]

/*: "Cancel" :*/
fileprivate let str_makeCurrentName:String = "narrow hi data camera topCancel"

/*: "OK" :*/
fileprivate let str_sinceValue:String = "Oview"

/*: "#999999" :*/
fileprivate let str_finishValue:[Character] = ["#"]
fileprivate let str_intervalSourceTitle:String = "999999"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchHandleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: enum SettingsType: String {
enum TitleContiguousBytes: String {
    //: case Contact_information   = "Contact information"
    case Contact_information = "Contact information"
    //: case Turnon_Notif          = "Notifications"
    case Turnon_Notif = "Notifications"
    //: case Social_Preferences    = "Social Preferences"
    case Social_Preferences = "Social Preferences"
    //: case Announcement_Settings = "Announcement Settings"
    case Announcement_Settings = "Announcement Settings"
    //: case Terms                 = "Terms of Use"
    case Terms = "Terms of Use"
    //: case Privacy               = "Privacy Policy"
    case Privacy = "Privacy Policy"
    //: case Aboutus               = "About us"
    case Aboutus = "About us"
    //: case Upload_Log            = "Upload Log"
    case Upload_Log = "Upload Log"
    //: case Black_List            = "Blacklist"
    case Black_List = "Blacklist"
    //: case Feedback              = "Feedback"
    case Feedback
    //: case Logout                = "Logout"
    case Logout
}

//: class TalkingSettingsVC: TalkingBaseViewController {
class TouchHandleReactiveCompatible: NameViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_appTitle.map{dataConverter(number: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Settings".localized
        self.title = (String(str_actionText) + str_stopName.replacingOccurrences(of: "message", with: "ng")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: designView()
        userEnable()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [[SettingsType]] = {
    private lazy var DataSource: [[TitleContiguousBytes]] = {
        //: var array = [[SettingsType]]()
        var array = [[TitleContiguousBytes]]()
        //: var array1: [SettingsType] = [.Contact_information]
        var array1: [TitleContiguousBytes] = [.Contact_information]
        //: var array2: [SettingsType] = [.Turnon_Notif]
        var array2: [TitleContiguousBytes] = [.Turnon_Notif]
//        var array3: [TitleContiguousBytes] = [.Social_Preferences, .Announcement_Settings]

        //: var array4: [SettingsType] = [.Terms, .Privacy]
        var array4: [TitleContiguousBytes] = [.Terms, .Privacy]
        //: var array5: [SettingsType] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        var array5: [TitleContiguousBytes] = [.Aboutus, .Upload_Log, .Black_List, .Feedback]
        //: var array6: [SettingsType] = [.Logout]
        var array6: [TitleContiguousBytes] = [.Logout]

        //: array.append(array1)
        array.append(array1)
        //: array.append(array2)
        array.append(array2)
//        array.append(array3)
        //: array.append(array4)
        array.append(array4)
        //: array.append(array5)
        array.append(array5)
        //: array.append(array6)
        array.append(array6)
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight - TabBarViewHeight), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var headerSource: [String] = {
    private lazy var headerSource: [String] = {
        //: var array = ["", "", "Security".localized, "More".localized, ""]
        var array = ["", "", (String(str_whiteTitle.suffix(7)) + String(str_nearValue)).localized, (String(str_modelData)).localized, ""]
//        var array = ["", "", "", "Security".localized, "More".localized, ""]
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsVC {
extension TouchHandleReactiveCompatible {
    /// logout
    //: func logoutTool() {
    func roomTool() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard LaissezPasserThen.equalSize() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: return
            return
        }

        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingLoginRequestTool.req_loginOut { t in
        CellReactiveCompatible.pair { t in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if t {
            if t {
                //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_useTitle, object: nil, userInfo: nil)
            }
        }
    }

    //: func LockAccount() {
    func evidence() {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        QuantityeractionThen.lockPlayerQuestion(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.roomTool()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.successMsg(showMsg: (String(str_toolTitle.suffix(6)) + " succ" + String(str_directionValue.suffix(6))).localized)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension TouchHandleReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerSource.count
        return headerSource.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let verr: [SettingsType] = DataSource[section]
        let verr: [TitleContiguousBytes] = DataSource[section]
        //: return verr.count
        return verr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 2 || section == 3 {
        if section == 2 || section == 3 {
            //: return 41
            return 41
        }
        //: return 12
        return 12
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingSettingCell"
        let identifier = (String(str_frameData.suffix(7)) + String(str_insertData.suffix(4)) + "ingCell")
        //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
        let cell: ButtonView = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ButtonView

        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [TitleContiguousBytes] = DataSource[indexPath.section]

        //: if indexPath.section == DataSource.count - 1 {
        if indexPath.section == DataSource.count - 1 {
            //: cell.setLogout(detail: verr[indexPath.row].rawValue)
            cell.medium(detail: verr[indexPath.row].rawValue)

            //: cell.logutBtn.rx.tap.subscribe { [weak self] (event) in
            cell.logutBtn.rx.tap.subscribe { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.logoutTool()
                self.roomTool()
                //: }.disposed(by: bag)
            }.disposed(by: bag)

            //: } else {
        } else {
            //: cell.setCellMessage(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count-1 )
            cell.studLast(titile: verr[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == verr.count - 1)
        }

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let verr: [SettingsType] = DataSource[indexPath.section]
        let verr: [TitleContiguousBytes] = DataSource[indexPath.section]
        //: if verr[indexPath.row] == .Feedback {
        if verr[indexPath.row] == .Feedback {
            //: let vc = TalkingFeedbackVC.init()
            let vc = EmptyReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Black_List {
        } else if verr[indexPath.row] == .Black_List {
            //: let vc = TalkingBlacklistVC.init()
            let vc = VoiceReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Terms {
        } else if verr[indexPath.row] == .Terms {
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .TermsofUse)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .TermsofUse)
            //: } else if verr[indexPath.row] == .Privacy {
        } else if verr[indexPath.row] == .Privacy {
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .PrivacyPolicy)
            //: } else if verr[indexPath.row] == .Contact_information {
        } else if verr[indexPath.row] == .Contact_information {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = InfoUniversalVc()
            //: vc.setUnicersalView(type: .Contact_information)
            vc.textMenu(type: .Contact_information)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Turnon_Notif {
        } else if verr[indexPath.row] == .Turnon_Notif {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = InfoUniversalVc()
            //: vc.setUnicersalView(type: .Notifications)
            vc.textMenu(type: .Notifications)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Social_Preferences {
        } else if verr[indexPath.row] == .Social_Preferences {
            //: let vc = TalkingSettingsUniversalVC.init()
            let vc = InfoUniversalVc()
            //: vc.setUnicersalView(type: .Social_Preferences)
            vc.textMenu(type: .Social_Preferences)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

            //: } else if verr[indexPath.row] == .Announcement_Settings {
        } else if verr[indexPath.row] == .Announcement_Settings {
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .GiftBroadcast)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .GiftBroadcast)

            //: } else if verr[indexPath.row] == .Aboutus {
        } else if verr[indexPath.row] == .Aboutus {
            //: let vc = TalkingAboutUsVC.init()
            let vc = StackUsVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
            //: } else if verr[indexPath.row] == .Upload_Log {
        } else if verr[indexPath.row] == .Upload_Log {
            //: let config = ShowAlertConfig()
            let config = ManagerAlertConfig()
            //: config.horizontalPadding = 30
            config.horizontalPadding = 30
            //: config.textFont = UIFont.unprecedented(fontSize: 16)
            config.textFont = UIFont.unprecedented(fontSize: 16)
            //: TalkingAlertShow.alert(title: nil, message: "Please communicate with online service first and then upload logs, logs are used to analyze problems you encountered in the use of the App!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, rightBlock: {
            VoiceAlertShow.enablelineMedium(title: nil, message: String(bytes: str_pointText.map{$0^43}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_makeCurrentName.suffix(6))).localized, rightBtnTitle: "OK".localized, rightBlock: {
                //: UploadLogTool.shared.uploadLog()
                QueryThen.shared.atMake()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 40))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.air()
        //: let title = UILabel.init()
        let title = UILabel()
        //: title.textColor = UIColor.init(hex: "#999999")
        title.textColor = UIColor(hex: (String(str_finishValue) + str_intervalSourceTitle.capitalized))
        //: title.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        title.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: title.text = headerSource[section]
        title.text = headerSource[section]
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(view).offset(30)
            make.leading.equalTo(view).offset(30)
            //: make.centerY.equalTo(view)
            make.centerY.equalTo(view)
        }
        //: return view
        return view
    }
}

// MARK: - UI

//: extension TalkingSettingsVC {
extension TouchHandleReactiveCompatible {
    //: private func designView() {
    private func userEnable() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(ButtonView.self, forCellReuseIdentifier: (String(str_frameData.suffix(7)) + String(str_insertData.suffix(4)) + "ingCell"))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
