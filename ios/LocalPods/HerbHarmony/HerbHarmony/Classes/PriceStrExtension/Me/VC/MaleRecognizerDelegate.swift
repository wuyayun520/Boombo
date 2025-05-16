
//: Declare String Begin

/*: "bannerList" :*/
fileprivate let str_basicData:String = "bgroup"
fileprivate let str_nipTitle:String = "self prepare equalnnerList"

/*: "me_wallet" :*/
fileprivate let str_blockMyData:String = "mode var falseme_wal"
fileprivate let str_toData:[Character] = ["l","e","t"]

/*: "me_edit_profile" :*/
fileprivate let str_labText:[Character] = ["m","e","_","e","d","i","t","_","p","r","o","f","i","l","e"]

/*: "icon_me_settings" :*/
fileprivate let str_pointName:String = "follow to playericon_"
fileprivate let str_rawName:[Character] = ["m","e","_","s","e","t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaleRecognizerDelegate.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/2/19.
//

//: import UIKit
import UIKit

//: class TalkingMaleMeController: TalkingBaseViewController {
class MaleRecognizerDelegate: NameViewController {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: reloadLocalData()
        appellation()
        //: func__reqBanner()
        willBanner()
        //: setupSubviews()
        through()
        //: setupSubViewsConstraint()
        makeKey()
        //: addNotifications()
        modelShow()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        sharedStatus()
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
        //: table.register(TalkingMeUpgradeCardCell.self, forCellReuseIdentifier: TalkingMeUpgradeCardCell.className())
        table.register(EffectThen.self, forCellReuseIdentifier: EffectThen.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(PrincipalReactiveCompatible.self, forCellReuseIdentifier: PrincipalReactiveCompatible.className())
        //: table.addHeaderRefresh { [weak self] in
        table.reloadStart { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.dataConverterWithinReload()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = .init()
    lazy var bannerListData: [CoverModelType] = .init()
}

// MARK: - Load Data

//: extension TalkingMaleMeController {
extension MaleRecognizerDelegate {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func dataConverterWithinReload() {
        //: self.tableView.mj_header?.beginRefreshing()
        self.tableView.mj_header?.beginRefreshing()
        //: self.func__requestUserInfo()
        self.sharedStatus()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func sharedStatus() {
        //: AppManagerRequest.func__requestUserInfo { _, _, _ in
        CustomThen.adRequest { _, _, _ in
            //: self.reloadLocalData()
            self.appellation()
            //: self.tableView.endRefresh()
            self.tableView.cellIndex()
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// banner
    //: func func__reqBanner() {
    func willBanner() {
        //: SocialRequestManager().req_adBanner(position: 2) { [weak self] _, result, _ in
        EmptyDirectorRequestManager().popCard(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(str_basicData.replacingOccurrences(of: "group", with: "a") + String(str_nipTitle.suffix(8)))] ?? []).arrayValue
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
    private func appellation() {
        //: self.section1Data = [(CenterItemType.My_Wallet.rawValue, "me_wallet"),
        self.section1Data = [(TagContiguousBytes.My_Wallet.rawValue, (String(str_blockMyData.suffix(6)) + String(str_toData))),
                             //: (CenterItemType.My_EditProfile.rawValue, "me_edit_profile"),
                             (TagContiguousBytes.My_EditProfile.rawValue, (String(str_labText))),
                             //: (CenterItemType.My_Settings.rawValue, "icon_me_settings")]
                             (TagContiguousBytes.My_Settings.rawValue, (String(str_pointName.suffix(5)) + String(str_rawName)))]
    }
}

// MARK: - Event

//: extension TalkingMaleMeController {
extension MaleRecognizerDelegate {
    /// 跳转编辑资料页
    //: @objc func pushEdit() {
    @objc func withEdit() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = MyEditProfilesVC()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMaleMeController: UITableViewDelegate, UITableViewDataSource {
extension MaleRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 3
            return 3
            //: } else if section == 1 {
        } else if section == 1 {
            //: return self.section1Data.count
            return self.section1Data.count
            //: } else {
        } else {
            //: return 0
            return 0
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: PrincipalReactiveCompatible.className(), for: indexPath) as! PrincipalReactiveCompatible
            //: let data = self.section1Data[indexPath.row]
            let data = self.section1Data[indexPath.row]
            //: let isLast = section1Data.count == (indexPath.row + 1)
            let isLast = section1Data.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.equalInformation(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
            //: return cell
            return cell
        }

        //: switch indexPath.row {
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
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeUpgradeCardCell.className(), for: indexPath) as! TalkingMeUpgradeCardCell
            let cell = tableView.dequeueReusableCell(withIdentifier: EffectThen.className(), for: indexPath) as! EffectThen
            //: cell.refreshUpgradeCard()
            cell.reload()
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

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 1 {
        if indexPath.section == 1 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: let vc = TalkingWalletViewController()
                let vc = EmptyRecognizerDelegate()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)

                //: } else if indexPath.row == 1 {
            } else if indexPath.row == 1 {
                //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: WithAdministratorAppManager.share.loginUid)
                LeadingEqualReactiveCompatible.share.bindDownFrom(uid: WithAdministratorAppManager.share.loginUid)

                //: } else if indexPath.row == 2 {
            } else if indexPath.row == 2 {
                //: let vc = TalkingSettingsVC()
                let vc = TouchHandleReactiveCompatible()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleMeController {
extension MaleRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func through() {
        //: self.view.addSubview(self.tableView)
        self.view.addSubview(self.tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func makeKey() {
        //: self.tableView.snp.makeConstraints { make in
        self.tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func modelShow() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.pushEdit),
                                               selector: #selector(self.withEdit),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: kLet_rankBarText,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.sharedStatus),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_greetData,
                                               //: object: nil)
                                               object: nil)
    }
}
