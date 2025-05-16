
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let str_maxTitle:[Character] = ["b","g","_","m","e","s","s","a","g","e","_"]
fileprivate let str_appContent:[Character] = ["t","o","p"]

/*: "777777" :*/
fileprivate let str_voiceValue:[Character] = ["7","7","7","7","7","7"]

/*: "I Like" :*/
fileprivate let str_videoSourceValue:[Character] = ["I"]
fileprivate let str_titleValue:String = " Likereturn left return array system"

/*: "#FF2348" :*/
fileprivate let str_pathTitle:[Character] = ["#"]
fileprivate let str_toToolData:String = "FF23with"

/*: "Current network unavailable" :*/
fileprivate let str_situationText:String = "Curremodel self title corner true"
fileprivate let str_airTitle:String = "etwosucceed"
fileprivate let str_editTitle:String = "vbyil"

/*: "icon_yidu_pre" :*/
fileprivate let str_modelData:String = "image tableicon_y"
fileprivate let str_errorText:[Character] = ["p","r","e"]

/*: "99+" :*/
fileprivate let str_writeData:String = "containercontainer+"

/*: "transform.rotation" :*/
fileprivate let str_kitValue:String = "trnearn"
fileprivate let str_showKeepName:String = "atioequal"

/*: "transform.scale" :*/
fileprivate let str_listValue:[Character] = ["t","r","a","n","s"]
fileprivate let str_frameValue:String = "form.info mode frame"

/*: "zoom&shake" :*/
fileprivate let str_hiddenPathCurrentTitle:String = "collectiono"
fileprivate let str_attentionName:[Character] = ["o","m","&","s","h","a","k","e"]

/*: "yyyy-MM-dd" :*/
fileprivate let str_statusKitMakeName:String = "instanceinstanceinstanceinstance"
fileprivate let str_currentName:String = "self interaction equal self-MM-dd"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_colorValue:[UInt8] = [0xc6,0xf1,0xf1,0xf4,0xfc,0xa5,0xaa,0xc5,0xa5,0xf9,0xf4,0xa5,0xf8,0xea,0xf3,0xe9,0xa5,0xfe,0xf4,0xfa,0xa5,0xf3,0xf4,0xf9,0xee,0xeb,0xee,0xe8,0xe6,0xf9,0xee,0xf4,0xf3,0xf8,0xc4]

fileprivate func cookieCheck(will num: UInt8) -> UInt8 {
    let value = Int(num) + 123
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_partyName:String = "path make view size tableCancel"

/*: "Settings" :*/
fileprivate let str_leadingData:[Character] = ["S","e","t","t","i","n","g","s"]

/*: "badNumber" :*/
fileprivate let str_liveData:String = "interactionad"
fileprivate let str_videoName:String = "view forNumber"

/*: "Who like me" :*/
fileprivate let str_dateData:[Character] = ["W","h","o"," ","l","i","k","e"," ","m","e"]

/*: "Messages" :*/
fileprivate let str_rankName:String = "equal kit model view atMess"

/*: "isConnection" :*/
fileprivate let str_iconName:String = "isCohidden video pool more return"
fileprivate let str_momentName:[Character] = ["n","n","e","c","t","i","o","n"]

/*: "networkStatus" :*/
fileprivate let str_termsValue:[Character] = ["n","e","t","w","o","r","k","S","t","a","t","u","s"]

/*: "unreadMessageNum" :*/
fileprivate let str_selectionName:[Character] = ["u","n","r","e","a","d","M","e","s"]
fileprivate let str_infoData:[Character] = ["s","a","g","e","N","u","m"]

/*: "Do you want to mark all messages as read?" :*/
fileprivate let str_countCellTitle:[UInt8] = [0x3f,0x64,0x61,0x65,0x72,0x20,0x73,0x61,0x20,0x73,0x65,0x67,0x61,0x73,0x73,0x65,0x6d,0x20,0x6c,0x6c,0x61,0x20,0x6b,0x72,0x61,0x6d,0x20,0x6f,0x74,0x20,0x74,0x6e,0x61,0x77,0x20,0x75,0x6f,0x79,0x20,0x6f,0x44]

/*: "OK" :*/
fileprivate let str_directionValue:String = "ok"

/*: "消息列表一键已读失败：code: :*/
fileprivate let str_rawName:String = "view列表一"
fileprivate let str_appTitle:String = "：code:remove make bar"

/*: , desc: :*/
fileprivate let str_modelValue:String = ", desc:image build"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateNameReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class StateNameReactiveCompatible: NameViewController {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        amimatDown()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        nameWith()
        //: bindInteraction()
        addQuantityeraction()
        //: func__turnOnSystemNotification()
        nameNotification()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+kLet_likeTitle))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: 100 + kLet_likeTitle))
        //: colorV.image = UIImage.nearCounterval(name: "bg_message_top")
        colorV.image = UIImage.nearCounterval(name: (String(str_maxTitle) + String(str_appContent)))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: ToTipView = {
        //: let V = TalkingNoticeTipView()
        let V = ToTipView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: TotalViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = TotalViewController()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .liveAttention(type: .Medium, fontSize: 16)
        vc.titleFont = .liveAttention(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .liveAttention(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .liveAttention(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(str_voiceValue)))!
        //: vc.selectedColor = UIColor.occurrence()
        vc.selectedColor = UIColor.occurrence()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: vc.isHidenBottomLine = true
        vc.isHidenBottomLine = true
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [NameViewController] = //        var arr = [self.chatListVC, SignDataSource()]
//        if WithAdministratorAppManager.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert(OnDataRecognizerDelegate(), at: arr.count-1)
//        }
//        return arr
        //: return [self.chatListVC]
        [self.chatListVC]
    //: }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: CleanManagerDelegate = {
        //: let vc = TalkingChatListViewController()
        let vc = CleanManagerDelegate()
        //: vc.iLikeBlock = { [weak self] isShow in
        vc.iLikeBlock = { [weak self] isShow in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let showText = isShow ? "I Like":""
            let showText = isShow ? (String(str_videoSourceValue) + String(str_titleValue.prefix(5))) : ""
            //: self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
            self.slideVC.selectedBtn?.setTitle(showText, for: .normal)
        }
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = //        var arr = ["Messages".localized, "Who like me".localized]
//        if WithAdministratorAppManager.share.loginUserMode.callTabSwitch == 1 {
//            arr.insert("Call".localized, at: arr.count-1)
//        }
//        return arr
        //: return ["I Like"]
        [(String(str_videoSourceValue) + String(str_titleValue.prefix(5)))]
    //: }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: kLet_likeTitle, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: kLet_likeTitle, width: kLet_senseContent, height: 30))
        //: tipView.font = UIFont.unprecedented(fontSize: 14)
        tipView.font = UIFont.unprecedented(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(str_pathTitle) + str_toToolData.replacingOccurrences(of: "with", with: "48")))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(str_situationText.prefix(5)) + "nt n" + str_airTitle.replacingOccurrences(of: "succeed", with: "rk") + " una" + str_editTitle.replacingOccurrences(of: "by", with: "a") + "able").localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: ScientificResearchScienceLabThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = ScientificResearchScienceLabThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: ScientificResearchScienceLabThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = ScientificResearchScienceLabThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.nearCounterval(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_modelData.suffix(6)) + "idu_" + String(str_errorText))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_modelData.suffix(6)) + "idu_" + String(str_errorText))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - AnglicismNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension StateNameReactiveCompatible: AnglicismNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func design(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: CleanManagerDelegate.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            amimatDown()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: SignDataSource.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            kLet_voiceText.quantityingTime(eventID: kLet_buttonName)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension StateNameReactiveCompatible {
    //: func setIsTopAll() {
    func toEachOneAll() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? CleanManagerDelegate
            //: vc?.resetToTopItemView()
            vc?.resetShared()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.telephoneMessage(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func contestantSize() {
        //: if WithAdministratorAppManager.share.networkStatus != .Unavailable && EdificeV2Listener.shared.isConnection {
        if WithAdministratorAppManager.share.networkStatus != .Unavailable, EdificeV2Listener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func funcIndex(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func amimatDown() {
        //: let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
        let unreadMsgCount = WithAdministratorAppManager.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: kLet_domainName) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.astirCard()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func astirCard() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (str_kitValue.replacingOccurrences(of: "near", with: "a") + "sform.rot" + str_showKeepName.replacingOccurrences(of: "equal", with: "n")))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (String(str_listValue) + String(str_frameValue.prefix(5)) + "scale"))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (str_hiddenPathCurrentTitle.replacingOccurrences(of: "collection", with: "z") + String(str_attentionName)))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func nameNotification() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        LaissezPasserThen.beneath { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.phoneDestroy(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.preemptWithoutVisualAspect(date: Date(), dateFormat: (str_statusKitMakeName.replacingOccurrences(of: "instance", with: "y") + String(str_currentName.suffix(6))))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = kLet_dismissData.string(forKey: kLet_indexName), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.phoneDestroy(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.phoneDestroy(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = kLet_dismissData.bool(forKey: kLet_senseValue)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        kLet_dismissData.set(true, forKey: kLet_senseValue)
                        //: TalkingAlertShow.alert(title: nil,
                        VoiceAlertShow.enablelineMedium(title: nil,
                                                          //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                          message: String(bytes: str_colorValue.map{cookieCheck(will: $0)}, encoding: .utf8)!.localizedArguments(kLet_routeData),
                                                          //: leftBtnTitle: "Cancel".localized,
                                                          leftBtnTitle: (String(str_partyName.suffix(6))).localized,
                                                          //: rightBtnTitle: "Settings".localized) {
                                                          rightBtnTitle: (String(str_leadingData)).localized)
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
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func phoneDestroy(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(kLet_messageContent)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = kLet_environmentClickValue - kLet_messageContent - kLet_callValue
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(kLet_messageContent + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = kLet_environmentClickValue - self.noticeView.bottom - kLet_callValue
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension StateNameReactiveCompatible {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func figureNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(str_liveData.replacingOccurrences(of: "interaction", with: "b") + String(str_videoName.suffix(6)))] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension StateNameReactiveCompatible {
    /// UI
    //: private func createUI() {
    private func nameWith() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_messageContent)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(str_dateData)).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(str_rankName.suffix(4)) + "ages").localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func addQuantityeraction() {
        //: EdificeV2Listener.shared.rx
        EdificeV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(str_iconName.prefix(4)) + String(str_momentName)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.contestantSize()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: WithAdministratorAppManager.share.rx.observeWeakly(Int.self, "networkStatus")
        WithAdministratorAppManager.share.rx.observeWeakly(Int.self, (String(str_termsValue)))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.contestantSize()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: WithAdministratorAppManager.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        WithAdministratorAppManager.share.rx.observeWeakly(Int.self, (String(str_selectionName) + String(str_infoData)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.funcIndex(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = ManagerAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                VoiceAlertShow.customForTotal(message: String(bytes: str_countCellTitle.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(str_partyName.suffix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: kLet_domainName)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        QueryThen.bringInstance(msg: (str_rawName.replacingOccurrences(of: "view", with: "消息") + "\u{952e}已读失败" + String(str_appTitle.prefix(6))) + "\(code)" + (String(str_modelValue.prefix(7))) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(figureNotification(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: kLet_deviceLimitData,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.preemptWithoutVisualAspect(date: Date(), dateFormat: (str_statusKitMakeName.replacingOccurrences(of: "instance", with: "y") + String(str_currentName.suffix(6))))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            kLet_dismissData.set(today, forKey: kLet_indexName)
            //: self.func__hideNotificationTipView(hide: true)
            self.phoneDestroy(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.nameNotification()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
