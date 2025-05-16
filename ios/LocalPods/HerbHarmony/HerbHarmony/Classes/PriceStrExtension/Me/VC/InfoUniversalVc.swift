
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation." :*/
fileprivate let str_layerRegularModelData:[UInt8] = [0x2e,0x6e,0x6f,0x69,0x74,0x61,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x6c,0x75,0x66,0x73,0x73,0x65,0x63,0x63,0x75,0x73,0x20,0x61,0x20,0x72,0x65,0x74,0x66,0x61,0x20,0x65,0x64,0x61,0x6d,0x20,0x65,0x62,0x20,0x6c,0x6c,0x69,0x77,0x20,0x74,0x61,0x68,0x63,0x20,0x77,0x65,0x6e,0x20,0x41,0x20,0x2e,0x75,0x6f,0x79,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x73,0x75,0x20,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x6c,0x6c,0x69,0x77,0x20,0x40,0x25,0x20,0x6e,0x65,0x68,0x74,0x20,0x6e,0x65,0x70,0x4f]

/*: "Open then Applyname will recommend users to you. Use your identity to greet each other." :*/
fileprivate let str_videoTitle:[UInt8] = [0xc0,0xff,0xea,0xe1,0xaf,0xfb,0xe7,0xea,0xe1,0xaf,0xce,0xff,0xff,0xe3,0xf6,0xe1,0xee,0xe2,0xea,0xaf,0xf8,0xe6,0xe3,0xe3,0xaf,0xfd,0xea,0xec,0xe0,0xe2,0xe2,0xea,0xe1,0xeb,0xaf,0xfa,0xfc,0xea,0xfd,0xfc,0xaf,0xfb,0xe0,0xaf,0xf6,0xe0,0xfa,0xa1,0xaf,0xda,0xfc,0xea,0xaf,0xf6,0xe0,0xfa,0xfd,0xaf,0xe6,0xeb,0xea,0xe1,0xfb,0xe6,0xfb,0xf6,0xaf,0xfb,0xe0,0xaf,0xe8,0xfd,0xea,0xea,0xfb,0xaf,0xea,0xee,0xec,0xe7,0xaf,0xe0,0xfb,0xe7,0xea,0xfd,0xa1]

/*: "Your avatar and nickname will not be displayed in the ranking." :*/
fileprivate let str_viewData:[UInt8] = [0x8d,0xa3,0xa9,0xa6,0x54,0x95,0xaa,0x95,0xa8,0x95,0xa6,0x54,0x95,0xa2,0x98,0x54,0xa2,0x9d,0x97,0x9f,0xa2,0x95,0xa1,0x99,0x54,0xab,0x9d,0xa0,0xa0,0x54,0xa2,0xa3,0xa8,0x54,0x96,0x99,0x54,0x98,0x9d,0xa7,0xa4,0xa0,0x95,0xad,0x99,0x98,0x54,0x9d,0xa2,0x54,0xa8,0x9c,0x99,0x54,0xa6,0x95,0xa2,0x9f,0x9d,0xa2,0x9b,0x62]

fileprivate func equalHidden(up num: UInt8) -> UInt8 {
    let value = Int(num) - 52
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Open then %@ will recommend users to you. Use your identity to greet each other." :*/
fileprivate let str_countUserAddValue:[UInt8] = [0x2e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x20,0x79,0x74,0x69,0x74,0x6e,0x65,0x64,0x69,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x73,0x55,0x20,0x2e,0x75,0x6f,0x79,0x20,0x6f,0x74,0x20,0x73,0x72,0x65,0x73,0x75,0x20,0x64,0x6e,0x65,0x6d,0x6d,0x6f,0x63,0x65,0x72,0x20,0x6c,0x6c,0x69,0x77,0x20,0x40,0x25,0x20,0x6e,0x65,0x68,0x74,0x20,0x6e,0x65,0x70,0x4f]

/*: "ButtonView" :*/
fileprivate let str_nameValue:String = "Talkintab break"
fileprivate let str_centerValue:String = "gCellcase color image make frame"

/*: "#FF2348" :*/
fileprivate let str_progressContent:String = "label"
fileprivate let str_expectedName:[Character] = ["F","F","2","3","4","8"]

/*: "CustomViewCell" :*/
fileprivate let str_cellData:String = "Talkingshare container action time"
fileprivate let str_videoTopValue:[Character] = ["S","e","t","t","i","n","g","N","o","t","i","f","C","e","l","l"]

/*: "To set up a password, you need to verify the account, choose your verification method" :*/
fileprivate let str_infoText:[UInt8] = [0xa5,0xc0,0x71,0xc4,0xb6,0xc5,0x71,0xc6,0xc1,0x71,0xb2,0x71,0xc1,0xb2,0xc4,0xc4,0xc8,0xc0,0xc3,0xb5,0x7d,0x71,0xca,0xc0,0xc6,0x71,0xbf,0xb6,0xb6,0xb5,0x71,0xc5,0xc0,0x71,0xc7,0xb6,0xc3,0xba,0xb7,0xca,0x71,0xc5,0xb9,0xb6,0x71,0xb2,0xb4,0xb4,0xc0,0xc6,0xbf,0xc5,0x7d,0x71,0xb4,0xb9,0xc0,0xc0,0xc4,0xb6,0x71,0xca,0xc0,0xc6,0xc3,0x71,0xc7,0xb6,0xc3,0xba,0xb7,0xba,0xb4,0xb2,0xc5,0xba,0xc0,0xbf,0x71,0xbe,0xb6,0xc5,0xb9,0xc0,0xb5]

fileprivate func snapName(with num: UInt8) -> UInt8 {
    let value = Int(num) - 81
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Verified by Phone" :*/
fileprivate let str_indexData:[Character] = ["V","e","r","i","f","i","e","d"," "]
fileprivate let str_colorText:[Character] = ["b","y"," ","P","h","o","n","e"]

/*: "Verified by Email" :*/
fileprivate let str_cutValue:String = "center subjectVerifi"
fileprivate let str_removeData:[Character] = ["e","d"," "]
fileprivate let str_loadValue:[Character] = ["b","y"," ","E","m","a","i","l"]

/*: "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? " :*/
fileprivate let str_rawValue:[UInt8] = [0x13,0x25,0x3f,0x6d,0x38,0x2f,0x6a,0x2d,0x25,0x23,0x24,0x2d,0x6a,0x3e,0x25,0x6a,0x2e,0x2f,0x26,0x2f,0x3e,0x2f,0x6a,0x33,0x25,0x3f,0x38,0x6a,0x3a,0x38,0x25,0x2c,0x23,0x26,0x2f,0x66,0x27,0x2f,0x39,0x39,0x2b,0x2d,0x2f,0x39,0x66,0x6a,0x3a,0x22,0x25,0x3e,0x25,0x39,0x6a,0x2b,0x24,0x2e,0x6a,0x27,0x2b,0x3e,0x29,0x22,0x2f,0x2e,0x6a,0x2c,0x38,0x23,0x2f,0x24,0x2e,0x39,0x6a,0x1a,0xf,0x18,0x7,0xb,0x4,0xf,0x4,0x1e,0x6,0x13,0x6a,0x2b,0x24,0x2e,0x6a,0x33,0x25,0x3f,0x38,0x6a,0x2b,0x29,0x29,0x25,0x3f,0x24,0x3e,0x6a,0x3d,0x23,0x26,0x26,0x6a,0x28,0x2f,0x6a,0x1f,0x4,0x18,0xf,0x9,0x5,0x1c,0xf,0x18,0xb,0x8,0x6,0xf,0x64,0x9,0x25,0x24,0x3e,0x23,0x24,0x3f,0x2f,0x6a,0x3e,0x25,0x6a,0x2e,0x2f,0x26,0x2f,0x3e,0x2f,0x6a,0x33,0x25,0x3f,0x38,0x6a,0x2b,0x29,0x29,0x25,0x3f,0x24,0x3e,0x75,0x6a]

private func streamYou(photo num: UInt8) -> UInt8 {
    return num ^ 74
}

/*: "UNRECOVERABLE" :*/
fileprivate let str_quantityName:[Character] = ["U","N","R","E","C","O"]
fileprivate let str_layerName:String = "event"
fileprivate let str_labName:[Character] = ["E","R","A","B","L","E"]

/*: "Delete Account" :*/
fileprivate let str_popValue:[Character] = ["D","e","l","e","t","e"," ","A"]
fileprivate let str_errorTitle:[Character] = ["c","c","o","u","n","t"]

/*: "Cancel" :*/
fileprivate let str_itemText:String = "Cancelvalue model define"

/*: "Delete" :*/
fileprivate let str_topUserReturnData:String = "view toDelete"

/*: " ( :*/
fileprivate let str_modelValue:[Character] = [" ","("]

/*: s)" :*/
fileprivate let str_inputData:String = "s)room count model"

/*: "Logout succeeded!" :*/
fileprivate let str_scaleValue:[Character] = ["L","o","g","o","u","t"]
fileprivate let str_gestureToData:String = "self in title color let su"
fileprivate let str_makeData:[Character] = ["c","c","e","e","d","e","d","!"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoUniversalVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/26.
//

//: import UIKit
import UIKit

//: enum SettingsUniversal: String {
enum AttachSchemaConvertible: String {
    //: case Contact_information          = "Contact information"
    case Contact_information = "Contact information"
    //: case Notifications                = "Notifications"
    case Notifications
    //: case Social_Preferences           = "Social Preferences"
    case Social_Preferences = "Social Preferences"
}

//: enum SettingsUniversalType: String {
enum LeadingNameConvertible: String {
    //: case Phone_Number          = "Phone Number"
    case Phone_Number = "Phone Number"
    //: case Email_Address         = "Email Address"
    case Email_Address = "Email Address"
    //: case Turnon_Notif          = "Turn on Notification"
    case Turnon_Notif = "Turn on Notification"
    //: case Same_gendered         = "Same-gendered messaging"
    case Same_gendered = "Same-gendered messaging"
    //: case Cupid                 = "Cupid messaging"
    case Cupid = "Cupid messaging"
    //: case Ranking               = "Ranking anonymous"
    case Ranking = "Ranking anonymous"
    //: case Automatic             = "Automatic message"
    case Automatic = "Automatic message"
    //: case SetPassword           = "Set New Password"
    case SetPassword = "Set New Password"
    //: case DeleteA               = "Delete Account"
    case DeleteA = "Delete Account"
}

//: class TalkingSettingsUniversalVC: TalkingBaseViewController {
class InfoUniversalVc: NameViewController {
    //: fileprivate lazy var bag = DisposeBag()
    fileprivate lazy var bag = DisposeBag()
    //: var settingModel = TalkingSettingModel()
    var settingModel = SignSettingModel()

    //: var  type = SettingsUniversal.Contact_information
    var type = AttachSchemaConvertible.Contact_information

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelTitle.reversed(), encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
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
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: designView()
        giftBy()
        //: getSettingData()
        commandData()
    }

    // MARK: - Lazy load

    //: private lazy var DataSource: [SettingsUniversalType] = {
    private lazy var DataSource: [LeadingNameConvertible] = {
        //: var array = [SettingsUniversalType]()
        var array = [LeadingNameConvertible]()
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_callValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: private lazy var DetailSource: [String] = {
    private lazy var DetailSource: [String] = {
        //: var array = ["", "Open then %@ will recommend users to you. A new chat will be made after a successful recommendation.".localizedArguments(AppName), "Open then Applyname will recommend users to you. Use your identity to greet each other.".localized, "Your avatar and nickname will not be displayed in the ranking.".localized]
        var array = ["", String(bytes: str_layerRegularModelData.reversed(), encoding: .utf8)!.localizedArguments(kLet_routeData), String(bytes: str_videoTitle.map{$0^143}, encoding: .utf8)!.localized, String(bytes: str_viewData.map{equalHidden(up: $0)}, encoding: .utf8)!.localized]
        //: if WithAdministratorAppManager.share.loginUserMode.sex == "2" {
        if WithAdministratorAppManager.share.loginUserMode.sex == "2" {
            //: array[1] = "Open then %@ will recommend users to you. Use your identity to greet each other.".localizedArguments(AppName)
            array[1] = String(bytes: str_countUserAddValue.reversed(), encoding: .utf8)!.localizedArguments(kLet_routeData)
        }
        //: return array
        return array
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingSettingsUniversalVC {
extension InfoUniversalVc {
    //: func getSettingData() {
    func commandData() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetSetting(params: dict) { succeed, result, errorModel in
        QuantityeractionThen.withTitle(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<SignSettingModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func setUnicersalView(type: SettingsUniversal) {
    func textMenu(type: AttachSchemaConvertible) {
        //: self.type = type
        self.type = type
        //: self.title = type.rawValue.localized
        self.title = type.rawValue.localized
        //: switch type {
        switch type {
        //: case .Contact_information:
        case .Contact_information:
            //: DataSource.append(.Phone_Number)
            DataSource.append(.Phone_Number)
            //: DataSource.append(.Email_Address)
            DataSource.append(.Email_Address)
            //: if WithAdministratorAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 || WithAdministratorAppManager.share.loginUserMode.email.count > 0 {
            if WithAdministratorAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 || WithAdministratorAppManager.share.loginUserMode.email.count > 0 {
                //: DataSource.append(.SetPassword)
                DataSource.append(.SetPassword)
            }
            //: DataSource.append(.DeleteA)
            DataSource.append(.DeleteA)
        //: break
        //: case .Notifications:
        case .Notifications:
            //: DataSource.append(.Turnon_Notif)
            DataSource.append(.Turnon_Notif)
        //: break
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: DataSource.append(.Same_gendered)
            DataSource.append(.Same_gendered)
            //: DataSource.append(.Cupid)
            DataSource.append(.Cupid)
            //: DataSource.append(.Ranking)
            DataSource.append(.Ranking)
            //: DataSource.append(.Automatic)
            DataSource.append(.Automatic)
            //: break
        }
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    /// 获取修改【手机号】密码验证码
    //: private func req_sendModifyPwdSms() {
    private func playerAdd() {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingLoginRequestTool.req_sendModifyPwdSms { succeed, result, errorModel in
        CellReactiveCompatible.crush { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard succeed else { return }
            guard succeed else { return }
            //: LeadingEqualReactiveCompatible.share.func__pushToSetNewPasswordVC(type: .PhoneLogin, content: WithAdministratorAppManager.share.loginUserMode.mobile ?? "", isNewPwd: false)
            LeadingEqualReactiveCompatible.share.red(type: .PhoneLogin, content: WithAdministratorAppManager.share.loginUserMode.mobile ?? "", isNewPwd: false)
        }
    }

    /// 获取修改【邮箱】密码验证码
    //: private func req_sendModifyPwdEmail() {
    private func topEmail() {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingLoginRequestTool.req_sendModifyPwdEmail { succeed, result, errorModel in
        CellReactiveCompatible.bugOut { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard succeed else { return }
            guard succeed else { return }
            //: LeadingEqualReactiveCompatible.share.func__pushToSetNewPasswordVC(type: .EmailLogin, content: WithAdministratorAppManager.share.loginUserMode.email, isNewPwd: false)
            LeadingEqualReactiveCompatible.share.red(type: .EmailLogin, content: WithAdministratorAppManager.share.loginUserMode.email, isNewPwd: false)
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingSettingsUniversalVC: UITableViewDelegate, UITableViewDataSource {
extension InfoUniversalVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return DataSource.count
        return DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: switch type {
        switch type {
        //: case .Contact_information, .Notifications:
        case .Contact_information, .Notifications:
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        //: case .Social_Preferences:
        case .Social_Preferences:
            //: if DataSource[indexPath.row] == .Same_gendered {
            if DataSource[indexPath.row] == .Same_gendered {
                //: return actualHeight(h: 50)
                return actualHeight(h: 50)
                //: }else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: if WithAdministratorAppManager.share.loginUserMode.sex == "2" {
                if WithAdministratorAppManager.share.loginUserMode.sex == "2" {
                    //: return actualHeight(h: 89)
                    return actualHeight(h: 89)
                    //: } else {
                } else {
                    //: return actualHeight(h: 109)
                    return actualHeight(h: 109)
                }
                //: }  else if (DataSource[indexPath.row] == .Ranking ||  DataSource[indexPath.row] == .Automatic) {
            } else if DataSource[indexPath.row] == .Ranking || DataSource[indexPath.row] == .Automatic {
                //: return actualHeight(h: 92)
                return actualHeight(h: 92)
            }
            //: return actualHeight(h: 50)
            return actualHeight(h: 50)
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: switch self.type {
        switch self.type {
        //: case .Contact_information:
        case .Contact_information:
            //: let identifier = "TalkingSettingCell"
            let identifier = (String(str_nameValue.prefix(6)) + "gSettin" + String(str_centerValue.prefix(5)))
            //: let cell: TalkingSettingCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingCell
            let cell: ButtonView = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ButtonView

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.studLast(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)

            //: if DataSource[indexPath.row] == SettingsUniversalType.Phone_Number {
            if DataSource[indexPath.row] == LeadingNameConvertible.Phone_Number {
                //: if WithAdministratorAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 {
                if WithAdministratorAppManager.share.loginUserMode.mobile?.count ?? 0 > 0 {
                    //: cell.setCellDetails(detail: WithAdministratorAppManager.share.loginUserMode.mobile ?? "")
                    cell.resign(detail: WithAdministratorAppManager.share.loginUserMode.mobile ?? "")
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: cell.titleBLB.textColor = .occurrence()
                cell.titleBLB.textColor = .occurrence()
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.Email_Address {
            } else if DataSource[indexPath.row] == LeadingNameConvertible.Email_Address {
                //: if WithAdministratorAppManager.share.loginUserMode.email.count > 0 {
                if WithAdministratorAppManager.share.loginUserMode.email.count > 0 {
                    //: cell.setCellDetails(detail: WithAdministratorAppManager.share.loginUserMode.email )
                    cell.resign(detail: WithAdministratorAppManager.share.loginUserMode.email)
                    //: } else {
                } else {
                    //: cell.editImag.isHidden = false
                    cell.editImag.isHidden = false
                }
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.SetPassword {
            } else if DataSource[indexPath.row] == LeadingNameConvertible.SetPassword {
                //: cell.editImag.isHidden = false
                cell.editImag.isHidden = false
                //: } else if DataSource[indexPath.row] == SettingsUniversalType.DeleteA {
            } else if DataSource[indexPath.row] == LeadingNameConvertible.DeleteA {
                //: cell.editImag.isHidden = true
                cell.editImag.isHidden = true
                //: cell.titleBLB.textColor = UIColor.init(hex: "#FF2348")
                cell.titleBLB.textColor = UIColor(hex: (str_progressContent.replacingOccurrences(of: "label", with: "#") + String(str_expectedName)))
            }

            //: return cell
            return cell

        //: case .Notifications, .Social_Preferences:
        case .Notifications, .Social_Preferences:
            //: let identifier = "TalkingSettingNotifCell"
            let identifier = (String(str_cellData.prefix(7)) + String(str_videoTopValue))
            //: let cell: TalkingSettingNotifCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingSettingNotifCell
            let cell: CustomViewCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CustomViewCell

            //: cell.setCellMessage(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count-1 )
            cell.watchOver(titile: DataSource[indexPath.row].rawValue, row: indexPath.row, isLast: indexPath.row == DataSource.count - 1)
            //: if self.type == .Social_Preferences {
            if self.type == .Social_Preferences {
                //: cell.setCellDetails(detail: DetailSource[indexPath.row])
                cell.pushDetail(detail: DetailSource[indexPath.row])
            }
            //: if DataSource[indexPath.row] == .Turnon_Notif {
            if DataSource[indexPath.row] == .Turnon_Notif {
                //: UNUserNotificationCenter.current().getNotificationSettings { settings in
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: let result = settings.authorizationStatus == .authorized
                        let result = settings.authorizationStatus == .authorized
                        //: cell.setCellNotif(isShow: result ? 1 : -1)
                        cell.up(isShow: result ? 1 : -1)
                    }
                }
                //: } else if DataSource[indexPath.row] == .Cupid {
            } else if DataSource[indexPath.row] == .Cupid {
                //: cell.setCellNotif(isShow: self.settingModel.isCupid ?? 1)
                cell.up(isShow: self.settingModel.isCupid ?? 1)
                //: } else if DataSource[indexPath.row] == .Ranking {
            } else if DataSource[indexPath.row] == .Ranking {
                //: cell.setCellNotif(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                cell.up(isShow: self.settingModel.isLeaderboardAnonymous ?? -1)
                //: } else if DataSource[indexPath.row] == .Same_gendered {
            } else if DataSource[indexPath.row] == .Same_gendered {
                //: cell.setCellNotif(isShow: self.settingModel.isSameGendered ?? -1)
                cell.up(isShow: self.settingModel.isSameGendered ?? -1)
                //: } else if DataSource[indexPath.row] == .Automatic {
            } else if DataSource[indexPath.row] == .Automatic {
                //: cell.setCellNotif(isShow: self.settingModel.autoGreetAuth ?? -1)
                cell.up(isShow: self.settingModel.autoGreetAuth ?? -1)
            }
            //: return cell
            return cell
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if self.type == .Contact_information {
        if self.type == .Contact_information {
            //: if DataSource[indexPath.row].rawValue == SettingsUniversalType.Phone_Number.rawValue {
            if DataSource[indexPath.row].rawValue == LeadingNameConvertible.Phone_Number.rawValue {
                //: let mobile = WithAdministratorAppManager.share.loginUserMode.mobile ?? ""
                let mobile = WithAdministratorAppManager.share.loginUserMode.mobile ?? ""
                //: if mobile.isEmptyString {
                if mobile.isEmptyString {
                    //: let vc = TalkingBindPhoneVC()
                    let vc = ContainerEffectRecognizerDelegate()
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.Email_Address.rawValue {
            } else if DataSource[indexPath.row].rawValue == LeadingNameConvertible.Email_Address.rawValue {
                //: if WithAdministratorAppManager.share.loginUserMode.email.count <= 0 {
                if WithAdministratorAppManager.share.loginUserMode.email.count <= 0 {
                    //: let vc = TalkingLoginBindEmailVC()
                    let vc = NumbereractionReactiveCompatible()
                    //: vc.isBack = true
                    vc.isBack = true
                    //: navigationController?.pushViewController(vc, animated: true)
                    navigationController?.pushViewController(vc, animated: true)
                }
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.DeleteA.rawValue {
            } else if DataSource[indexPath.row].rawValue == LeadingNameConvertible.DeleteA.rawValue {
                //: writeOff()
                cornerOff()
                //: } else if DataSource[indexPath.row].rawValue == SettingsUniversalType.SetPassword.rawValue {
            } else if DataSource[indexPath.row].rawValue == LeadingNameConvertible.SetPassword.rawValue {
                //: let mobile = WithAdministratorAppManager.share.loginUserMode.mobile ?? ""
                let mobile = WithAdministratorAppManager.share.loginUserMode.mobile ?? ""
                //: let email = WithAdministratorAppManager.share.loginUserMode.email
                let email = WithAdministratorAppManager.share.loginUserMode.email
                //: if !mobile.isEmpty, !email.isEmpty {
                if !mobile.isEmpty, !email.isEmpty { // 手机号和邮箱都存在
                    //: let vc = TalkingMunuPopView(frame: self.view.frame)
                    let vc = SuspensionBridgeDataSource(frame: self.view.frame)
                    //: vc.title = "To set up a password, you need to verify the account, choose your verification method".localized
                    vc.title = String(bytes: str_infoText.map{snapName(with: $0)}, encoding: .utf8)!.localized
                    //: vc.titleFont = UIFont.unprecedented(fontSize: 12)
                    vc.titleFont = UIFont.unprecedented(fontSize: 12)
                    //: vc.titleColor = UIColor.inexpensiveness()
                    vc.titleColor = UIColor.inexpensiveness()
                    //: vc.cellTitleFont = UIFont.behindUpRoom(fontSize: 16)
                    vc.cellTitleFont = UIFont.behindUpRoom(fontSize: 16)
                    //: vc.hasCancel = false
                    vc.hasCancel = false
                    //: vc.initwithList(cellTitleList: ["Verified by Phone".localized, "Verified by Email".localized])
                    vc.titleEvent(cellTitleList: [(String(str_indexData) + String(str_colorText)).localized, (String(str_cutValue.suffix(6)) + String(str_removeData) + String(str_loadValue)).localized])
                    //: vc.munuBlock = { [weak self] index, str in
                    vc.munuBlock = { [weak self] index, _ in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if index == 0 {
                        if index == 0 {
                            //: self.req_sendModifyPwdSms()
                            self.playerAdd()
                            //: } else if index == 1 {
                        } else if index == 1 {
                            //: self.req_sendModifyPwdEmail()
                            self.topEmail()
                        }
                    }

                    //: } else if !mobile.isEmpty {
                } else if !mobile.isEmpty {
                    //: req_sendModifyPwdSms()
                    playerAdd()

                    //: } else if !email.isEmpty {
                } else if !email.isEmpty {
                    //: req_sendModifyPwdEmail()
                    topEmail()
                }
            }
        }
    }
}

//: extension TalkingSettingsUniversalVC {
extension InfoUniversalVc {
    /// 注销
    //: private func writeOff() {
    private func cornerOff() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard LaissezPasserThen.equalSize() == false else { return }
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else { // 音视频通话中
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: return
            return
        }

        //: var seconds = 15
        var seconds = 15
        //: let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        let timer: DispatchSourceTimer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.main)
        //: timer.schedule(deadline: .now(), repeating: 1.0)
        timer.schedule(deadline: .now(), repeating: 1.0)

        //: let str = "You're going to delete your profile,messages, photos and matched friends PERMANENTLY and your account will be UNRECOVERABLE.Continue to delete your account? ".localized
        let str = String(bytes: str_rawValue.map{streamYou(photo: $0)}, encoding: .utf8)!.localized

        //: let range =  str.exMatchStrRange("UNRECOVERABLE")
        let range = str.exMatchStrRange((String(str_quantityName) + str_layerName.replacingOccurrences(of: "event", with: "V") + String(str_labName)))

        //: let string = NSMutableAttributedString.init(string: str )
        let string = NSMutableAttributedString(string: str)
        //: if range.count > 0 {
        if range.count > 0 {
            //: string.addAttribute(.foregroundColor, value: UIColor.msgTipsColor(), range: range.first!)
            string.addAttribute(.foregroundColor, value: UIColor.userError(), range: range.first!)
        }
        //: TalkingAlertShow.attribAlert(title: "Delete Account".localized, attributedMessage: string, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
        VoiceAlertShow.migration(title: (String(str_popValue) + String(str_errorTitle)).localized, attributedMessage: string, leftBtnTitle: (String(str_itemText.prefix(6))).localized, rightBtnTitle: (String(str_topUserReturnData.suffix(6))).localized) {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: timer.cancel()
            timer.cancel()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()

            //: self.LockAccount()
            self.fasten()
        }

        //: timer.setEventHandler {
        timer.setEventHandler {
            //: seconds -= 1
            seconds -= 1
            //: if seconds <= 0 {
            if seconds <= 0 {
                //: timer.cancel()
                timer.cancel()
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized, isTouch: true)
                VoiceAlertShow.dismissTouch(title: (String(str_topUserReturnData.suffix(6))).localized, isTouch: true)
                //: } else {
            } else {
                //: TalkingAlertShow.changeRightBtn(title: "Delete".localized + " (\(seconds)s)", isTouch: false)
                VoiceAlertShow.dismissTouch(title: (String(str_topUserReturnData.suffix(6))).localized + " (\(seconds)s)", isTouch: false)
            }
        }
        //: timer.resume()
        timer.resume()
    }

    //: private func LockAccount() {
    private func fasten() {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_LockAccount(params: [:]) { succeed, result, errorModel in
        QuantityeractionThen.lockPlayerQuestion(params: [:]) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: self.logoutTool()
                self.magnitudeeractionData()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Logout succeeded!".localized)
                self.successMsg(showMsg: (String(str_scaleValue) + String(str_gestureToData.suffix(3)) + String(str_makeData)).localized)
            }
        }
    }

    //: private func logoutTool() {
    private func magnitudeeractionData() {
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
}

// MARK: - UI

//: extension TalkingSettingsUniversalVC {
extension InfoUniversalVc {
    //: private func designView() {
    private func giftBy() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingSettingCell.self, forCellReuseIdentifier: "TalkingSettingCell")
        MainTable.register(ButtonView.self, forCellReuseIdentifier: (String(str_nameValue.prefix(6)) + "gSettin" + String(str_centerValue.prefix(5))))
        //: MainTable.register(TalkingSettingNotifCell.self, forCellReuseIdentifier: "TalkingSettingNotifCell")
        MainTable.register(CustomViewCell.self, forCellReuseIdentifier: (String(str_cellData.prefix(7)) + String(str_videoTopValue)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
