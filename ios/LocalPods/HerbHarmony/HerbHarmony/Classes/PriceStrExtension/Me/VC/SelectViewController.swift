
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let str_pathModelTitle:[UInt8] = [0xdc,0xd7,0xf3,0xd4,0xd0,0xdf]

private func eraseTop(center num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "bannerList" :*/
fileprivate let str_kitTitle:[Character] = ["b","a","n","n","e","r"]
fileprivate let str_sizeTitle:String = "Listcomment performance screen import"

/*: "icon_me_chatsettings" :*/
fileprivate let str_managerValue:[Character] = ["i","c","o","n","_","m","e","_","c","h","a","t","s","e","t","t","i"]
fileprivate let str_labData:String = "ngpara"

/*: "icon_me_automatic" :*/
fileprivate let str_valueEqualData:String = "home self page style iicon_"
fileprivate let str_imageText:String = "TOMA"
fileprivate let str_managerTitle:[Character] = ["t","i","c"]

/*: "icon_me_settings" :*/
fileprivate let str_profileName:String = "self selficon_me_"
fileprivate let str_labViewValue:[Character] = ["s","e","t","t","i","n","g","s"]

/*: "icon_me_tc" :*/
fileprivate let str_sizeData:String = "to type lab super fromicon_me_"
fileprivate let str_popData:[Character] = ["t","c"]

/*: "icon_me_videoSet" :*/
fileprivate let str_makeText:String = "icon_mleading self clear lab screen"
fileprivate let str_resultData:String = "oSetline message"

/*: "icon_me_bs" :*/
fileprivate let str_productData:[Character] = ["i","c","o","n","_","m","e","_","b","s"]

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_labelSizeData:[UInt8] = [0x71,0x5a,0x40,0x51,0x46,0x14,0x16,0x67,0x51,0x40,0x40,0x5d,0x5a,0x53,0x47,0x16,0x14,0x55,0x5a,0x50,0x14,0x5b,0x44,0x51,0x5a,0x14,0x16,0x77,0x55,0x59,0x51,0x46,0x55,0x16,0x14,0x44,0x51,0x46,0x59,0x5d,0x47,0x47,0x5d,0x5b,0x5a,0x14,0x40,0x5b,0x14,0x41,0x47,0x51,0x14,0x40,0x5c,0x5d,0x47,0x14,0x52,0x41,0x5a,0x57,0x40,0x5d,0x5b,0x5a,0x14,0x5a,0x5b,0x46,0x59,0x55,0x58,0x58,0x4d]

/*: "Cancel" :*/
fileprivate let str_targetData:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let str_withTitle:String = "Settinfo let in self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SelectViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class SelectViewController: NameViewController {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(TagContiguousBytes, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: reloadLocalData()
        modelCell()
        //: func__reqBanner()
        observerBanner()
        //: setupSubviews()
        videoSetupReceive()
        //: setupSubViewsConstraint()
        addDirection()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(keyCall),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_rankBarText,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(infoIn),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_greetData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        infoIn()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(CapMiniThen.self, forCellReuseIdentifier: CapMiniThen.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(IconSectionDataSource.self, forCellReuseIdentifier: IconSectionDataSource.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(CollectionViewCell.self, forCellReuseIdentifier: CollectionViewCell.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(InfoThen.self, forCellReuseIdentifier: InfoThen.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(PrincipalReactiveCompatible.self, forCellReuseIdentifier: PrincipalReactiveCompatible.className())
        //: table.addHeaderRefresh { [weak self] in
        table.reloadStart { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.pathShowSex()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [CoverModelType] = //: return Array<CoverModelType>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension SelectViewController {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func pathShowSex() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        infoIn()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func infoIn() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        CustomThen.adRequest { _, _, _ in
            //: self.reloadLocalData()
            self.modelCell()
            //: self.tableView.endRefresh()
            self.tableView.cellIndex()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if SectionPushListener.cover().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: kLet_conversationName, object: nil, userInfo: [String(bytes: str_pathModelTitle.map{eraseTop(center: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func observerBanner() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        EmptyDirectorRequestManager().popCard(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(str_kitTitle) + String(str_sizeTitle.prefix(4)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = CoverModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func modelCell() {
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(str_managerValue) + str_labData.replacingOccurrences(of: "para", with: "s"))),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(str_valueEqualData.suffix(5)) + "me_au" + str_imageText.lowercased() + String(str_managerTitle))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(str_profileName.suffix(8)) + String(str_labViewValue)))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(str_profileName.suffix(8)) + String(str_labViewValue)))]
        }
        //: if WithAdministratorAppManager.share.appUserConfigMode.showTaskCenter {
        if WithAdministratorAppManager.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(str_sizeData.suffix(8)) + String(str_popData))), at: 0)
        }
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(str_makeText.prefix(6)) + "e_vide" + String(str_resultData.prefix(4)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if kLet_tabTitle, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(str_productData))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension SelectViewController {
    //: @objc func pushEdit() {
    @objc func keyCall() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = MyEditProfilesVC()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    //: func judgeCameraAuthorization() {
    func rawDataFrom() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        LaissezPasserThen.effectOf(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DataSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.atShow(showMsg: kLet_keyTitle)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = ScaleRecognizerDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                VoiceAlertShow.enablelineMedium(title: nil, message: String(bytes: str_labelSizeData.map{$0^52}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_targetData)).localized, rightBtnTitle: (String(str_withTitle.prefix(4)) + "ings").localized) {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension SelectViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PrincipalReactiveCompatible.className(), for: indexPath) as! PrincipalReactiveCompatible
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.equalInformation(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.phone()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CapMiniThen.className(), for: indexPath) as! CapMiniThen
            //: cell.setViewData()
            cell.trademark()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: IconSectionDataSource.className(), for: indexPath) as! IconSectionDataSource
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.eventLoad(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewCell.className(), for: indexPath) as! CollectionViewCell
            //: cell.setViewData()
            cell.straddleSelect()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: InfoThen.className(), for: indexPath) as! InfoThen
            //: cell.setViewData()
            cell.belowText()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = CreatureMediaThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = ComeUpToViewController()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = TouchHandleReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .TaskCenter)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            rawDataFrom()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = EqualReactiveCompatible()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension SelectViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func videoSetupReceive() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addDirection() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
