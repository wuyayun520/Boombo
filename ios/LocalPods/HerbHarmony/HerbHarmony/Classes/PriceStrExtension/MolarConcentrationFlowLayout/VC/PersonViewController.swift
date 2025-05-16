
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_modelWithAlwaysName:String = "frame manager information make atbg_sh"
fileprivate let str_whiteValue:String = "ouye_mismake error"
fileprivate let str_segmentValue:String = "aplayeru"
fileprivate let str_giftLiveVarName:String = "photoault"

/*: "Likes" :*/
fileprivate let str_blockValue:String = "add model top tap equalLikes"

/*: "Visitors" :*/
fileprivate let str_subText:[Character] = ["V","i","s","i","t","o","r","s"]

/*: "FC8BFC" :*/
fileprivate let str_modelData:String = "read8Bread"

/*: "FE4D8E" :*/
fileprivate let str_viewValue:String = "FfreeD8E"

/*: "ECECEC" :*/
fileprivate let str_itemName:String = "halfChalfChalf"
fileprivate let str_liveName:[Character] = ["C"]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let str_cancelValue:[UInt8] = [0x3f,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x75,0x6f,0x79,0x20,0x64,0x6e,0x65,0x73,0x20,0x6f,0x74,0x20,0x40,0x25,0x20,0x77,0x6f,0x6c,0x6c,0x41]

/*: "Cancel" :*/
fileprivate let str_equalModelName:[Character] = ["C"]
fileprivate let str_addLabelValue:String = "ankindl"

/*: "Settings" :*/
fileprivate let str_tableData:String = "manager user colorSetti"
fileprivate let str_buttonContent:String = "ngshare"

/*: "JXBannerCellID" :*/
fileprivate let str_rowValue:String = "time withJXBa"
fileprivate let str_userData:String = "manager a upon nameCellI"
fileprivate let str_scaleToTitle:String = "model"

/*: "#FFFFFF" :*/
fileprivate let str_clearValue:[Character] = ["#","F"]
fileprivate let str_infoData:[Character] = ["F","F","F","F","F"]

/*: "#BDB8B5" :*/
fileprivate let str_ofBubbleData:String = "comment"
fileprivate let str_toName:String = "BDB8Beffect"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PersonViewController.swift
//  HerbHarmony
//
//  Created by Charlotte on 2025/2/18.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: import JXBanner
import JXBanner

//: import JXPageControl
import JXPageControl

//: class TalkingLikeVC: TalkingBaseViewController {
class PersonViewController: NameViewController {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()

    //: var adBannderListData: [SocialAdBannerModel]?
    var adBannderListData: [CoverModelType]? // 广告banner数据

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
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.recognizeBy()
        //: self.setupSubViewsConstraint()
        self.recto()
        //: self.func__turnOnSystemNotification()
        self.duringShow()
        //: self.load_adBanner()
        self.advertizingBanner()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearCounterval(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.nearCounterval(name: (String(str_modelWithAlwaysName.suffix(5)) + String(str_whiteValue.prefix(8)) + str_segmentValue.replacingOccurrences(of: "player", with: "ng") + "ang_de" + str_giftLiveVarName.replacingOccurrences(of: "photo", with: "f"))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: 10, width: 10, height: 10))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: 10, width: 10, height: 10))
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 0
        segmentedView.defaultSelectedIndex = 0
        //: segmentedView.isHidden = true
        segmentedView.isHidden = true
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight-50)
        view.frame = CGRect(x: 0, y: 50, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_callValue - kLet_messageContent - 50)
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: view.isListHorizontalScrollEnabled = false
        view.isListHorizontalScrollEnabled = false
//        if MeanSunLanguageManager.shared.direction == .rightToLeft {
//            view.transform = CGAffineTransform(scaleX: -1, y: 1)
//        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()
        //: array.append("Likes".localized)
        array.append((String(str_blockValue.suffix(5))).localized)
        //: array.append("Visitors".localized)
        array.append((String(str_subText)).localized)
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
            //: let popularVC = TalkingLikeListVC.init()
            let popularVC = MolarConcentrationFlowLayout()
            //: if i == "Likes".localized {
            if i == (String(str_blockValue.suffix(5))).localized {
                //: popularVC.tabType = .Likes
                popularVC.tabType = .Likes
                //: } else if i == "Visitors".localized {
            } else if i == (String(str_subText)).localized {
                //: popularVC.tabType = .Visitors
                popularVC.tabType = .Visitors
            }
            //: array.append(popularVC)
            array.append(popularVC)
        }
        //: return array
        return array
        //: }()
    }()

    // MARK: - Lazy load

    //: private lazy var bannerView: JXBanner = {
    private lazy var bannerView: JXBanner = {
        //: let banner = JXBanner()
        let banner = JXBanner()
        //: banner.backgroundColor = .white
        banner.backgroundColor = .white
        //: banner.placeholderImgView.image = UIImage.placeImgBanner()
        banner.placeholderImgView.image = UIImage.userCount()
        //: banner.layer.cornerRadius = 5
        banner.layer.cornerRadius = 5
        //: banner.layer.masksToBounds = true
        banner.layer.masksToBounds = true
        //: banner.delegate = self
        banner.delegate = self
        //: banner.dataSource = self
        banner.dataSource = self
        //: return banner
        return banner
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: EmptyDirectorRequestManager = //: return EmptyDirectorRequestManager()
        .init()
    //: }()

    //: private lazy var likesBtn: UIButton = {
    private lazy var likesBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Likes".localized, for: .normal)
        btn.setTitle((String(str_blockValue.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FC8BFC")!.cgColor, UIColor.init(hex: "FE4D8E")!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        btn.setBackgroundImage(UIImage.nameColors(colors: [UIColor(hex: (str_modelData.replacingOccurrences(of: "read", with: "FC")))!.cgColor, UIColor(hex: (str_viewValue.replacingOccurrences(of: "free", with: "E4")))!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "ECECEC")!.cgColor, UIColor.init(hex: "ECECEC")!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: [UIColor(hex: (str_itemName.replacingOccurrences(of: "half", with: "E") + String(str_liveName)))!.cgColor, UIColor(hex: (str_itemName.replacingOccurrences(of: "half", with: "E") + String(str_liveName)))!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        //: btn.isSelected = true
        btn.isSelected = true
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn.addTarget(self, action: #selector(likesBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var visitorsBtn: UIButton = {
    private lazy var visitorsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Visitors".localized, for: .normal)
        btn.setTitle((String(str_subText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FC8BFC")!.cgColor, UIColor.init(hex: "FE4D8E")!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        btn.setBackgroundImage(UIImage.nameColors(colors: [UIColor(hex: (str_modelData.replacingOccurrences(of: "read", with: "FC")))!.cgColor, UIColor(hex: (str_viewValue.replacingOccurrences(of: "free", with: "E4")))!.cgColor], size: CGSize(width: 83, height: 30)), for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "ECECEC")!.cgColor, UIColor.init(hex: "ECECEC")!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: [UIColor(hex: (str_itemName.replacingOccurrences(of: "half", with: "E") + String(str_liveName)))!.cgColor, UIColor(hex: (str_itemName.replacingOccurrences(of: "half", with: "E") + String(str_liveName)))!.cgColor], size: CGSize(width: 83, height: 30)), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
        btn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
        //: btn.addTarget(self, action: #selector(visitorsBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toSystem), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLikeVC {
extension PersonViewController {
    //: func reloadAllVCData() {
    func nameLocalColor() {
        //: for vc in dataVC {
        for vc in dataVC {
            //: let tempVc = vc as? TalkingLikeListVC
            let tempVc = vc as? MolarConcentrationFlowLayout
            //: tempVc?.load_listData()
            tempVc?.actionBlock()
        }
    }
}

//: extension TalkingLikeVC {
extension PersonViewController {
    //: @objc private func likesBtnClick() {
    @objc private func subClick() {
        //: likesBtnStatus()
        gestureVideo()
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        //: pagerView.reloadData()
        pagerView.reloadData()
    }

    //: private func likesBtnStatus() {
    private func gestureVideo() {
        //: likesBtn.isSelected = true
        likesBtn.isSelected = true
        //: visitorsBtn.isSelected = false
        visitorsBtn.isSelected = false
        //: likesBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        likesBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: visitorsBtn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
        visitorsBtn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
    }

    //: @objc private func visitorsBtnClick() {
    @objc private func toSystem() {
        //: visitorsStatus()
        nextDetail()
        //: categoryView.defaultSelectedIndex = 1
        categoryView.defaultSelectedIndex = 1
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 1
        pagerView.defaultSelectedIndex = 1
        //: pagerView.reloadData()
        pagerView.reloadData()
    }

    //: @objc private func visitorsStatus() {
    @objc private func nextDetail() {
        //: likesBtn.isSelected = false
        likesBtn.isSelected = false
        //: visitorsBtn.isSelected = true
        visitorsBtn.isSelected = true
        //: visitorsBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        visitorsBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: likesBtn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
        likesBtn.titleLabel?.font = UIFont.unprecedented(fontSize: 14)
    }
}

// MARK: - Public Event

//: extension TalkingLikeVC {
extension PersonViewController {
    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func duringShow() {
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
                                                  message: String(bytes: str_cancelValue.reversed(), encoding: .utf8)!.localizedArguments(kLet_routeData),
                                                  //: leftBtnTitle: "Cancel".localized,
                                                  leftBtnTitle: (String(str_equalModelName) + str_addLabelValue.replacingOccurrences(of: "kind", with: "ce")).localized,
                                                  //: rightBtnTitle: "Settings".localized) {
                                                  rightBtnTitle: (String(str_tableData.suffix(5)) + str_buttonContent.replacingOccurrences(of: "share", with: "s")).localized)
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

//: extension TalkingLikeVC {
extension PersonViewController {
    /// 广告banner数据
    //: private func load_adBanner() {
    private func advertizingBanner() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.popCard(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.adBannderListData = self.reqManager.adBannerListData
            self.adBannderListData = self.reqManager.adBannerListData

            //: if self.adBannderListData?.count ?? 0 <= 0 {
            if self.adBannderListData?.count ?? 0 <= 0 {
                //: bannerView.isHidden = true
                bannerView.isHidden = true
                //: bannerView.snp.updateConstraints { make in
                bannerView.snp.updateConstraints { make in
                    //: make.height.equalTo(0)
                    make.height.equalTo(0)
                }
                //: }else {
            } else {
                //: bannerView.reloadView()
                bannerView.reloadView()
                //: pagerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight-89-50)
                pagerView.frame = CGRect(x: 0, y: 50, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_callValue - kLet_messageContent - 89 - 50)
                //: pagerView.reloadData()
                pagerView.reloadData()
            }
        }
    }
}

// MARK: - Delegate

//: extension TalkingLikeVC: JXBannerDataSource, JXBannerDelegate {
extension PersonViewController: JXBannerDataSource, JXBannerDelegate {
    //: func jxBanner(_ banner: JXBannerType) -> (JXBannerCellRegister) {
    func jxBanner(_: JXBannerType) -> (JXBannerCellRegister) {
        //: return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: "JXBannerCellID")
        return JXBannerCellRegister(type: JXBannerCell.self, reuseIdentifier: (String(str_rowValue.suffix(4)) + "nner" + String(str_userData.suffix(5)) + str_scaleToTitle.replacingOccurrences(of: "model", with: "D")))
    }

    //: func jxBanner(numberOfItems banner: JXBannerType) -> Int {
    func jxBanner(numberOfItems _: JXBannerType) -> Int {
        //: return self.adBannderListData?.count ?? 0
        return self.adBannderListData?.count ?? 0
    }

    //: func jxBanner(_ banner: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
    func jxBanner(_: JXBannerType, cellForItemAt index: Int, cell: UICollectionViewCell) -> UICollectionViewCell {
        //: let tempCell: JXBannerCell = cell as! JXBannerCell
        let tempCell: JXBannerCell = cell as! JXBannerCell
        //: let model = self.adBannderListData?[index]
        let model = self.adBannderListData?[index]
        //: tempCell.msgBgView.backgroundColor = .clear
        tempCell.msgBgView.backgroundColor = .clear
        //: tempCell.imageView.setUrlImage(urlStr: model?.pic ?? "", placeImg: UIImage.placeImgBanner())
        tempCell.imageView.commentGesture(urlStr: model?.pic ?? "", placeImg: UIImage.userCount())
        //: tempCell.imageView.contentMode = .scaleAspectFill
        tempCell.imageView.contentMode = .scaleAspectFill
        //: return cell
        return cell
    }

    //: func jxBanner(pageControl banner: JXBannerType,
    func jxBanner(pageControl _: JXBannerType,
                  //: numberOfPages: Int,
                  numberOfPages _: Int,
                  //: coverView: UIView,
                  coverView _: UIView,
                  //: builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder {
                  builder: JXBannerPageControlBuilder) -> JXBannerPageControlBuilder
    {
        //: let pageControl = JXPageControlScale()
        let pageControl = JXPageControlScale()
        //: pageControl.contentMode = .bottom
        pageControl.contentMode = .bottom
        //: pageControl.activeSize = CGSize(width: 6, height: 6)
        pageControl.activeSize = CGSize(width: 6, height: 6)
        //: pageControl.activeColor = UIColor(hex: "#FFFFFF")!
        pageControl.activeColor = UIColor(hex: (String(str_clearValue) + String(str_infoData)))!
        //: pageControl.inactiveSize = CGSize(width: 6, height: 6)
        pageControl.inactiveSize = CGSize(width: 6, height: 6)
        //: pageControl.inactiveColor = UIColor(hex: "#BDB8B5")!
        pageControl.inactiveColor = UIColor(hex: (str_ofBubbleData.replacingOccurrences(of: "comment", with: "#") + str_toName.replacingOccurrences(of: "effect", with: "5")))!
        //: pageControl.columnSpacing = 8
        pageControl.columnSpacing = 8
        //: pageControl.isAnimation = true
        pageControl.isAnimation = true
        //: builder.pageControl = pageControl
        builder.pageControl = pageControl
        //: builder.layout = {
        builder.layout = {
            //: pageControl.snp.makeConstraints { make in
            pageControl.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalToSuperview().offset(-4)
                make.bottom.equalToSuperview().offset(-4)
            }
        }
//        if MeanSunLanguageManager.shared.direction == .rightToLeft {
//            pageControl.transform = CGAffineTransform(scaleX: -1, y: 1)
//        }
        //: return builder
        return builder
    }

    // MARK: - JXBannerDelegate

    //: public func jxBanner(_ banner: JXBannerType,
    public func jxBanner(_: JXBannerType,
                         //: didSelectItemAt index: Int) {
                         didSelectItemAt index: Int)
    {
        //: guard let model = self.adBannderListData?[index] else { return }
        guard let model = self.adBannderListData?[index] else { return }
        //: SocialAdBannerModel.jumpEvent(model: model)
        CoverModelType.observerCorner(model: model)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingLikeVC: JXSegmentedViewDelegate {
extension PersonViewController: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    //: func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if index == 0 {
        if index == 0 {
            //: likesBtnStatus()
            gestureVideo()
            //: } else {
        } else {
            //: visitorsStatus()
            nextDetail()
        }
    }

    //: func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    func segmentedView(_: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        //: pagerView.listContainerView.reloadData()
        pagerView.listContainerView.reloadData()
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingLikeVC: JXPagingViewDelegate {
extension PersonViewController: JXPagingViewDelegate {
    //: func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
    func pagingView(_: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }

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
        //: return Int(0)
        return Int(0)
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

//: extension TalkingLikeVC {
extension PersonViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func recognizeBy() {
        // 导航底部渐变背景
        //: self.view.addSubview(bannerView)
        self.view.addSubview(bannerView)
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.addSubview(pagerView)
        bottomView.addSubview(pagerView)
        //: bottomView.addSubview(likesBtn)
        bottomView.addSubview(likesBtn)
        //: bottomView.addSubview(visitorsBtn)
        bottomView.addSubview(visitorsBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func recto() {
        //: bannerView.snp.makeConstraints { make in
        bannerView.snp.makeConstraints { make in
            //: make.top.equalTo(8+StatusBarHeight)
            make.top.equalTo(8 + kLet_messageContent)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.trailing.equalTo(-13)
            make.trailing.equalTo(-13)
            //: make.size.equalTo(CGSize(width: ScreenWidth-26, height: 89))
            make.size.equalTo(CGSize(width: kLet_senseContent - 26, height: 89))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalTo(bannerView.snp.bottom)
            make.top.equalTo(bannerView.snp.bottom)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        //: likesBtn.snp.makeConstraints { make in
        likesBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(80)
            make.leading.equalTo(80)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: 83, height: 30))
            make.size.equalTo(CGSize(width: 83, height: 30))
        }
        //: visitorsBtn.snp.makeConstraints { make in
        visitorsBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-80)
            make.trailing.equalTo(-80)
            //: make.top.size.equalTo(likesBtn)
            make.top.size.equalTo(likesBtn)
        }
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_messageContent)
        }
    }
}
