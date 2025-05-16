
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0x74,0x73,0x74,0x69,0x35,0x7e,0x72,0x79,0x78,0x6f,0x27,0x34,0x3d,0x75,0x7c,0x6e,0x3d,0x73,0x72,0x69,0x3d,0x7f,0x78,0x78,0x73,0x3d,0x74,0x70,0x6d,0x71,0x78,0x70,0x78,0x73,0x69,0x78,0x79]

private func lengthSenseFull(instance num: UInt8) -> UInt8 {
    return num ^ 29
}

/*: "#EEEEEE" :*/
fileprivate let str_frameNameValue:String = "equivalent if#EEEE"
fileprivate let str_partyValue:String = "gift"

/*: "tabBar" :*/
fileprivate let str_withViewName:[Character] = ["t","a","b","B","a","r"]

/*: "user" :*/
fileprivate let str_localNoData:[Character] = ["u","s","e","r"]

/*: "icon" :*/
fileprivate let str_keyName:String = "errorcon"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithControllerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class WithControllerDelegate: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: CellViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = EmptyHasDelegate()
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: CellViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            commonYear()
            //: ProgressHUD.show()
            StandardProgressHUD.indexRoom()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            CustomThen.adRequest { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: EdificeV2Listener.shared.func__addDelegate(self)
                EdificeV2Listener.shared.frameDelegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.closeAction()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.recordEnter(itemTypes: tarItemTypes as! [SubmitNumeric])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.underComment(itemTypes: tarItemTypes)
                //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue && WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue && WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.sizeInfo(type: 0)
                    //: self.lastEventTime = Date().timeIntervalSince1970
                    self.lastEventTime = Date().timeIntervalSince1970
                }
                //: self.func__configViewDidLoad()
                self.refuse()

                //: if succeed && WithAdministratorAppManager.share.loginUserMode.remindBindEmail == true {
                if succeed && WithAdministratorAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: LeadingEqualReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        LeadingEqualReactiveCompatible.share.showPersonLatEmailDataConverterEventJamLock(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            underComment(itemTypes: self.closeAction())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{lengthSenseFull(instance: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(configTo),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_systemValue,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(language),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_replaceName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(imageLive),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: kLet_timeValue,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(language),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: kLet_clickKeyTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(deviceObject),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: kLet_replaceData,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: kLet_environmentClickValue - kLet_callValue), size: CGSize(width: kLet_senseContent, height: kLet_callValue))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func commonYear() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: kLet_environmentClickValue - kLet_callValue), size: CGSize(width: kLet_senseContent, height: kLet_callValue))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.apply(color: .white, size: CGSize(width: kLet_senseContent, height: kLet_callValue))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.apply(color: UIColor(hex: (String(str_frameNameValue.suffix(5)) + str_partyValue.replacingOccurrences(of: "gift", with: "EE")))!, size: CGSize(width: kLet_senseContent, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.chorusColor()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(str_withViewName)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func closeAction() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == CellViewType.Login {
            //: return [TabBarItemType.Login]
            return [SubmitNumeric.Login]
            //: } else {
        } else {
//            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
//                return [SubmitNumeric.Social,
//                        SubmitNumeric.Moment,
//                        SubmitNumeric.Message,
//                        SubmitNumeric.Account]
//            } else {
//                if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue { // 女性
//                    return [SubmitNumeric.Social,
//                            SubmitNumeric.Moment,
//                            SubmitNumeric.Live,
//                            SubmitNumeric.Message,
//                            SubmitNumeric.Account]
//                } else { // 男性
//                    return [SubmitNumeric.Social,
//                            SubmitNumeric.Moment,
//                            SubmitNumeric.Randow,
//                            SubmitNumeric.Message,
//                            SubmitNumeric.Account]
//                }
//            }
            //: return [TabBarItemType.Social,
            return [SubmitNumeric.Social,
                    //: TabBarItemType.Moment,
                    SubmitNumeric.Moment,
                    //: TabBarItemType.Message,
                    SubmitNumeric.Message,
                    //: TabBarItemType.Account]
                    SubmitNumeric.Account]
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func underComment(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = viewType(itemType: itemType as! SubmitNumeric)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = DataViewController(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! SubmitNumeric)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func viewType(itemType: SubmitNumeric) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
//            ret = CapacityMeasureRecognizerDelegate()
            //: ret = TalkingClubVC()
            ret = TargetThen()
        //: case .Moment:
        case .Moment:
//            ret = ShouldBridgeRecognizerDelegate()
            //: ret = TalkingLikeVC()
            ret = PersonViewController()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = StateNameReactiveCompatible()

        //: case .Account:
        case .Account:
            //: ret = TalkingMaleMeController()
            ret = MaleRecognizerDelegate()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = ScaleThen()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = MediaCloseViewController()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! DataViewController
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.moreData(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension WithControllerDelegate {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func deviceObject() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        navigation()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        sizeInfo(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = actionController(), vc is CapacityMeasureRecognizerDelegate {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! CapacityMeasureRecognizerDelegate).counterwoman()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func adjoin() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard StackMThen.estimated().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid {
            if String(StackMThen.estimated().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                StackMThen.estimated().cellTarget()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                atShow(showMsg: kLet_environmentBottomUseData)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard SectionPushListener.cover().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            atShow(showMsg: kLet_userStatusValue)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = FullThen()
        //: tabView.show()
        tabView.ofShow()
    }

    //: func func__configViewDidLoad() {
    func refuse() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        TalkingTouchManageressThen.share.tweak()
        //: AppManagerRequest.func__reportDeviceID()
        CustomThen.no()
        //: func__getLoginUserConfig(true)
        configTo(true)
    }

    //: func selectTabbar(type: Int) {
    func sizeInfo(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func language() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.betweenToImage()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func imageLive() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard LaissezPasserThen.equalSize() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = kLet_dismissData.bool(forKey: kLet_matchUseData)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            SectionPushListener.cover().talkHandler()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        kLet_dismissData.set(true, forKey: kLet_matchUseData)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = SafetyMarginViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func alongClick(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.equalHidde(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func plumage() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        DataSocketDelegate.shared.prescription()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func alert(type: SubmitNumeric = .Social) -> Bool {
        //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else { return false }
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue else { return false }
        //: guard WithAdministratorAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard WithAdministratorAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard WithAdministratorAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard WithAdministratorAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !StackMThen.estimated().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !SectionPushListener.cover().isLive,
              //: !TalkingSocketManager.shared.isTalking,
              !DataSocketDelegate.shared.isTalking,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !DataSocketDelegate.shared.isCalling else { return false }
        //: let arr = WithAdministratorAppManager.share.appUserConfigMode.popLiveTabArr
        let arr = WithAdministratorAppManager.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ShowWindowManager.shared.temp()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension WithControllerDelegate {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func configTo(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        CustomThen.counternalRepresentationData { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.plumage()
                //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.midDown()
                    //: self.needShowLiveAlertView()
                    self.alert()
                    //: self.func__selectClubTabbar()
                    self.speakeasyView()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.showTo()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func speakeasyView() {
//        if WithAdministratorAppManager.share.loginUserMode.jumpType == 1 {
//            return
//        }
//        switchRandowTabBarImage(isHidde: true)
//        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue, WithAdministratorAppManager.share.appUserConfigMode.homeTab == "home" {
//            let type = 2
//            selectTabbar(type: type)
//            switchRandowTabBarImage(isHidde: false)
//        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func showTo() {
//        guard WithAdministratorAppManager.share.loginUserMode.updateInfo == true else {
//            return
//        }
//        let manager = ShowWindowManager.shared
//        manager.setHomePopUpWindow()

        //: if WithAdministratorAppManager.share.loginUserMode.jumpType == 2, WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.jumpType == 2, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            MoveReactiveCompatible.shared.becomeFinish()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension WithControllerDelegate {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = SubmitNumeric(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                adjoin()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            alongClick(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if alert(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        colorSelete()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == SubmitNumeric.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? StateNameReactiveCompatible
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.toEachOneAll()
            }
            //: } else if tabBarView.currentTabType == TabBarItemType.Moment.rawValue {
        } else if tabBarView.currentTabType == SubmitNumeric.Moment.rawValue {
            //: let vc = viewController.children.first as? TalkingLikeVC
            let vc = viewController.children.first as? PersonViewController
            //: vc?.reloadAllVCData()
            vc?.nameLocalColor()
            //: } else if tabBarView.currentTabType == TabBarItemType.Social.rawValue {
        } else if tabBarView.currentTabType == SubmitNumeric.Social.rawValue {
            //: let vc = viewController.children.first as? TalkingClubVC
            let vc = viewController.children.first as? TargetThen
            //: let currenTime  = Int(Date().timeIntervalSince1970)
            let currenTime = Int(Date().timeIntervalSince1970)
            //: if currenTime - Int(lastEventTime) > 10*60 {
            if currenTime - Int(lastEventTime) > 10 * 60 {
                //: lastEventTime = Date().timeIntervalSince1970
                lastEventTime = Date().timeIntervalSince1970
                //: vc?.removeAllData()
                vc?.videoEnable()
                //: vc?.beginRequestData()
                vc?.setOutSizeRawData()
            }

            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: StateNameReactiveCompatible.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! StateNameReactiveCompatible).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func colorSelete() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case SubmitNumeric.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            kLet_voiceText.quantityingTime(eventID: kLet_name)
        //: case TabBarItemType.Randow.rawValue: break
        case SubmitNumeric.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case SubmitNumeric.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            kLet_voiceText.quantityingTime(eventID: kLet_underName)
        //: case TabBarItemType.Message.rawValue:
        case SubmitNumeric.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            kLet_voiceText.quantityingTime(eventID: kLet_sizeTitle)
        //: case TabBarItemType.Account.rawValue:
        case SubmitNumeric.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            kLet_voiceText.quantityingTime(eventID: kLet_displayName)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - ToObjectProtocol

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension WithControllerDelegate: ToObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func errorNumber(count _: Int) {
        //: refreshUnreadIMMessageCount()
        assemblageClick()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func messageDismiss(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(String(str_localNoData))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(str_keyName.replacingOccurrences(of: "error", with: "i"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.headIcon(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func assemblageClick() {
        //: if EdificeV2Listener.shared.isConnection {
        if EdificeV2Listener.shared.isConnection {
            //: let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
            let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.clutter(unread: unreadMsgCount, barType: .Message)
        }
    }
}
