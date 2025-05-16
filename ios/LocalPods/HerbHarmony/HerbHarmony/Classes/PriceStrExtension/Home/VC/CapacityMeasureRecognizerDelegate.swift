
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_actualValue:String = "import rawbg_sh"
fileprivate let str_makeData:String = "misfillngu"
fileprivate let str_nearNameData:String = "size size white text heightang_de"

/*: "#777777" :*/
fileprivate let str_replyValue:[Character] = ["#"]
fileprivate let str_infoData:String = "777777"

/*: "#333333" :*/
fileprivate let str_managerText:String = "#333333"

/*: "Party" :*/
fileprivate let str_onData:String = "leading contentParty"

/*: "Popular" :*/
fileprivate let str_countTitle:String = "Popularstyle list player label"

/*: "Nearby" :*/
fileprivate let str_imageData:String = "Nearbyto self"

/*: "New" :*/
fileprivate let str_needBottomData:String = "background addNew"

/*: "btn_popular_search_nor" :*/
fileprivate let str_afterText:String = "height background name attention viewbtn_po"
fileprivate let str_viewValue:String = "_searcicon kit let var"
fileprivate let str_stopName:[Character] = ["h","_","n","o","r"]

/*: "icon_live_nor" :*/
fileprivate let str_progressCellName:String = "var name button handle staticon_"
fileprivate let str_meCenterDismissData:[Character] = ["l","i","v","e","_","n","o","r"]

/*: "btn_popular_ranking_nor" :*/
fileprivate let str_onlineData:[Character] = ["b","t","n","_","p","o","p","u","l"]
fileprivate let str_levelValue:[Character] = ["a","r","_","r","a","n","k","i","n","g","_","n","o","r"]

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let str_infoName:[UInt8] = [0xce,0xe2,0xe3,0xea,0xff,0xec,0xf9,0xf8,0xe1,0xec,0xf9,0xe4,0xe2,0xe3,0xad,0xe2,0xe3,0xad,0xf4,0xe2,0xf8,0xff,0xad,0xee,0xe5,0xec,0xe3,0xee,0xe8,0xad,0xf9,0xe2,0xad,0xe7,0xe2,0xe4,0xe3,0xad,0xf9,0xe5,0xe8,0xad,0xde,0xf9,0xec,0xff,0xad,0xdd,0xe1,0xec,0xe3,0xad,0xac]

private func colorValue(hidden num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "No, thanks" :*/
fileprivate let str_progressTitle:String = "send"
fileprivate let str_tooData:[Character] = ["o",","," ","t","h","a","n","k","s"]

/*: "Find out more" :*/
fileprivate let str_toCurrentValue:String = "row fillFind "
fileprivate let str_effectTitle:String = "imagere"

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let str_cellValue:String = "iconliicon"
fileprivate let str_currentLengthName:[Character] = ["r","P","r","o","j","e","c","t","p","o","p"]
fileprivate let str_userData:String = "self cell data-upsCa"

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let str_rangeName:[UInt8] = [0x65,0x72,0x6f,0x6d,0x74,0x75,0x6f,0x64,0x6e,0x69,0x46,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_errorName:[UInt8] = [0xca,0xf5,0xf5,0xf8,0x0,0xa9,0xae,0xc9,0xa9,0xfd,0xf8,0xa9,0xfc,0xee,0xf7,0xed,0xa9,0x2,0xf8,0xfe,0xa9,0xf7,0xf8,0xfd,0xf2,0xef,0xf2,0xec,0xea,0xfd,0xf2,0xf8,0xf7,0xfc,0xc8]

fileprivate func voiceOver(total num: UInt8) -> UInt8 {
    let value = Int(num) + 119
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_feeText:String = "manager"
fileprivate let str_centerData:[Character] = ["a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let str_statusContent:String = "make blockSettings"

/*: _ :*/
fileprivate let str_sizeData:String = "color"

/*: "male" :*/
fileprivate let str_locationTabData:[UInt8] = [0x81,0x8d,0x80,0x89]

private func viewDetail(make num: UInt8) -> UInt8 {
    return num ^ 236
}

/*: "female" :*/
fileprivate let str_gestureLayerData:String = "femaappe"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CapacityMeasureRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: class TalkingSocialViewController: TalkingBaseViewController {
class CapacityMeasureRecognizerDelegate: NameViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        WithViewManager.shared.textAwake()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        WithViewManager.shared.penetrate()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.lineErase()
        //: self.setupSubViewsConstraint()
        self.beyondShared()
        //: self.addNotification()
        self.ofNotification()
        //: self.func__checkStarPlanNeedShow()
        self.funcExhibitPlanSearchBinaryRequireDetail()
        //: self.func__turnOnSystemNotification()
        self.errorNotification()
        //: self.pushIsClubVideo()
        self.infoGesture()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        everyRangeView()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearCounterval(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.nearCounterval(name: (String(str_actualValue.suffix(5)) + "ouye_" + str_makeData.replacingOccurrences(of: "fill", with: "a") + String(str_nearNameData.suffix(6)) + "fault")))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: kLet_messageContent, width: kLet_senseContent, height: kLet_indexText))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (String(str_replyValue) + str_infoData.capitalized))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (str_managerText.capitalized))!
        //: segmentedDataSource.titleNormalFont = .liveAttention(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .liveAttention(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .liveAttention(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .liveAttention(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (str_managerText.capitalized))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: kLet_messageContent, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_callValue - kLet_messageContent)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(str_onData.suffix(5))).localized)
        //: array.append("Popular".localized)
        array.append((String(str_countTitle.prefix(7))).localized)
        //: array.append("Nearby".localized)
        array.append((String(str_imageData.prefix(6))).localized)
        //: array.append("New".localized)
        array.append((String(str_needBottomData.suffix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(str_onData.suffix(5))).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = ContentViewController()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = SendFlowLayout()
                //: if i == "Popular".localized {
                if i == (String(str_countTitle.prefix(7))).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(str_imageData.prefix(6))).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(str_needBottomData.suffix(3))).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_afterText.suffix(6)) + "pular" + String(str_viewValue.prefix(6)) + String(str_stopName))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sinceAddClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_progressCellName.suffix(5)) + String(str_meCenterDismissData))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(domiciliateBy), for: .touchUpInside)
        //: btn.isHidden = !(WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_onlineData) + String(str_levelValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension CapacityMeasureRecognizerDelegate {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func infoGesture() {
        //: if WithAdministratorAppManager.share.loginUserMode.jumpType == 1 && WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue && WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.jumpType == 1, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue, WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: LeadingEqualReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: false)
                LeadingEqualReactiveCompatible.share.gameShove(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func imageUp() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = ChiefViewController()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        kLet_voiceText.quantityingTime(eventID: kLet_timeData)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func below() {
        //: if WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval > 0 &&
        if WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval > 0,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue &&
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue,
           //: WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue
        {
            //: initLiveTipsTimer()
            sendLoad()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func contentView() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.actionController() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: SignReactiveCompatible.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! SignReactiveCompatible).isModal == true
            {
                //: return
                return
            }
        }

        //: if WithAdministratorAppManager.share.appUserConfigMode.enableLive &&
        if WithAdministratorAppManager.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !SectionPushListener.cover().isLive,
           //: !TalkingSocketManager.shared.isTalking &&
           !DataSocketDelegate.shared.isTalking,
           //: !TalkingSocketManager.shared.isCalling {
           !DataSocketDelegate.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            ShowWindowManager.shared.temp()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func sendLoad() {
        //: let timeInterval = TimeInterval(WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(WithAdministratorAppManager.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(contentView), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func everyRangeView() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func domiciliateBy() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_timeValue, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension CapacityMeasureRecognizerDelegate {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func funcExhibitPlanSearchBinaryRequireDetail() {
        //: guard WithAdministratorAppManager.share.showWindow == true else { return }
        guard WithAdministratorAppManager.share.showWindow == true else { return }
        //: WithAdministratorAppManager.share.showWindow = false
        WithAdministratorAppManager.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        VoiceAlertShow.enablelineMedium(title: nil,
                                          //: message: "Congratulation on your chance to join the Star Plan !",
                                          message: String(bytes: str_infoName.map{colorValue(hidden: $0)}, encoding: .utf8)!,
                                          //: leftBtnTitle: "No, thanks",
                                          leftBtnTitle: (str_progressTitle.replacingOccurrences(of: "send", with: "N") + String(str_tooData)),
                                          //: rightBtnTitle: "Find out more") {
                                          rightBtnTitle: (String(str_toCurrentValue.suffix(5)) + "out m" + str_effectTitle.replacingOccurrences(of: "image", with: "o")))
        {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            ViewIndexReactiveCompatible.share.atPassePartoutAd(key: (str_cellValue.replacingOccurrences(of: "icon", with: "c") + "kSta" + String(str_currentLengthName) + String(str_userData.suffix(6)) + "ncel"))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            // 跳转巨星计划页
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            ViewIndexReactiveCompatible.share.atPassePartoutAd(key: String(bytes: str_rangeName.reversed(), encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func errorNotification() {
        // 有随机视频，不弹出开启推送弹窗
        //: if WithAdministratorAppManager.share.loginUserMode.jumpType == 1 &&
        if WithAdministratorAppManager.share.loginUserMode.jumpType == 1,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = kLet_dismissData.bool(forKey: kLet_appStatusData)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        LaissezPasserThen.beneath { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                kLet_dismissData.set(true, forKey: kLet_appStatusData)
                //: TalkingAlertShow.alert(title: nil,
                VoiceAlertShow.enablelineMedium(title: nil,
                                                  //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                  message: String(bytes: str_errorName.map{voiceOver(total: $0)}, encoding: .utf8)!.localizedArguments(kLet_routeData),
                                                  //: leftBtnTitle: "Cancel".localized,
                                                  leftBtnTitle: (str_feeText.replacingOccurrences(of: "manager", with: "C") + String(str_centerData)).localized,
                                                  //: rightBtnTitle: "Settings".localized) {
                                                  rightBtnTitle: (String(str_statusContent.suffix(8))).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func sinceAddClick() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = SearchViewController()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        kLet_voiceText.quantityingTime(eventID: kLet_homeTitle)
    }

    /// 切换到party
    //: func switchParty() {
    func counterwoman() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension CapacityMeasureRecognizerDelegate {
    /// 添加通知
    //: private func addNotification() {
    private func ofNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        WithViewManager.shared.combineNotifications()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(below),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_keyText,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(everyRangeView),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: kLet_useTitle,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension CapacityMeasureRecognizerDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            kLet_voiceText.quantityingTime(eventID: "\(kLet_nextText)_\(WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_locationTabData.map{viewDetail(make: $0)}, encoding: .utf8)! : (str_gestureLayerData.replacingOccurrences(of: "app", with: "l")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? SendFlowLayout
            //: popularVC?.showSettingsAlertView()
            popularVC?.lineup() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            kLet_voiceText.quantityingTime(eventID: kLet_showText)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            kLet_voiceText.quantityingTime(eventID: kLet_halfValue)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didScrollSelectedItemAt _: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension CapacityMeasureRecognizerDelegate: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    //: func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    func tableHeaderViewHeight(in _: JXPagingView) -> Int {
        //: return 0
        return 0
    }

    //: func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    func tableHeaderView(in _: JXPagingView) -> UIView {
        //: return UIView()
        return UIView()
    }

    //: func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    func heightForPinSectionHeader(in _: JXPagingView) -> Int {
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    //: func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    func viewForPinSectionHeader(in _: JXPagingView) -> UIView {
        //: return categoryView
        return categoryView
    }

    //: func numberOfLists(in pagingView: JXPagingView) -> Int {
    func numberOfLists(in _: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension CapacityMeasureRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func lineErase() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func beyondShared() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_messageContent)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
