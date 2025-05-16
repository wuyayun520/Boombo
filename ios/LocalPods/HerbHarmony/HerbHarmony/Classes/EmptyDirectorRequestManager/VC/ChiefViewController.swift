
//: Declare String Begin

/*: "Activity" :*/
fileprivate let str_popMoreTextName:[Character] = ["A","c","t","i","v","i","t","y"]

/*: "Charm" :*/
fileprivate let str_userText:[Character] = ["C","h","a","r","m"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_readingName:[UInt8] = [0xbb,0xbc,0xbb,0xa6,0xfa,0xb1,0xbd,0xb6,0xb7,0xa0,0xe8,0xfb,0xf2,0xba,0xb3,0xa1,0xf2,0xbc,0xbd,0xa6,0xf2,0xb0,0xb7,0xb7,0xbc,0xf2,0xbb,0xbf,0xa2,0xbe,0xb7,0xbf,0xb7,0xbc,0xa6,0xb7,0xb6]

private func trackButton(line num: UInt8) -> UInt8 {
    return num ^ 210
}

/*: "bg_rank_tabList" :*/
fileprivate let str_requestValue:String = "B"
fileprivate let str_toData:String = "make var gift self sizeg_ra"
fileprivate let str_infoTitle:String = "bListapp image"

/*: "Yesterday" :*/
fileprivate let str_frameTitle:String = "var in heightYe"
fileprivate let str_tableValue:[Character] = ["s","t","e","r","d","a","y"]

/*: "Today" :*/
fileprivate let str_userName:String = "Todayvertical info ok self"

/*: "Weekly" :*/
fileprivate let str_textName:String = "Weeklynormal view label else style"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChiefViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import Then
import Then

//: class SocialRankTabVC: TalkingBaseViewController {
class ChiefViewController: NameViewController {
    // MARK: params

    //: let titleViewWidth: CGFloat = 150+20*3
    let titleViewWidth: CGFloat = 150 + 20 * 3
    //: let titles = ["Activity".localized, "Charm".localized]
    let titles = [(String(str_popMoreTextName)).localized, (String(str_userText)).localized]
    //: var rankInfoModel = SocialRankModel()
    var rankInfoModel = LabelModelType()

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.hideNavi = true
        self.hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_readingName.map{trackButton(line: $0)}, encoding: .utf8)!)
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

        //: setupSubviews()
        doLab()
        //: requestAllData()
        fromModel()
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: kLet_likeTitle, width: ScreenWidth, height: ScreenHeight-kLet_likeTitle)
        listContainerView.frame = CGRect(x: 0, y: kLet_likeTitle, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_likeTitle)
    }

    // MARK: - Lazy Load

    //: lazy var titleView = SocialRankTitleView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: kLet_likeTitle)).then {
    lazy var titleView = OnThen(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_likeTitle)).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()

    //: let bgImgView = UIImageView().then {
    let bgImgView = UIImageView().then {
        //: $0.frame = UIScreen.main.bounds
        $0.frame = UIScreen.main.bounds
        //: $0.image = UIImage.nearCounterval(name: "bg_rank_tabList")
        $0.image = UIImage.nearCounterval(name: (str_requestValue.lowercased() + String(str_toData.suffix(4)) + "nk_ta" + String(str_infoTitle.prefix(5))))
    }
}

// MARK: - request

//: extension SocialRankTabVC {
extension ChiefViewController {
    //: func requestAllData() {
    func fromModel() {
        //: SocialRequestManager.getRankListRequest(topName: nil, periodName: nil) {[weak self] succeed, result, errorModel in
        EmptyDirectorRequestManager.outsideBarMake(topName: nil, periodName: nil) { [weak self] succeed, result, _ in

            //: guard let self = self else { return }
            guard let self = self else { return }

            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: self.rankInfoModel = SocialRankModel.deserialize(from: result)!
            self.rankInfoModel = LabelModelType.deserialize(from: result)!
            //: self.segmentedView.reloadData()
            self.segmentedView.reloadData()
        }
    }
}

// MARK: - Event

//: extension SocialRankTabVC {
extension ChiefViewController {
    //: private func setupBindings() {
    private func magnitudeBindings() {}
}

// MARK: - JXSegmentedDelegate

//: extension SocialRankTabVC: JXSegmentedListContainerViewDataSource {
extension ChiefViewController: JXSegmentedListContainerViewDataSource {
    //: func numberOfLists(in listContainerView: JXSegmentedListContainerView) -> Int {
    func numberOfLists(in _: JXSegmentedListContainerView) -> Int {
        //: if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
        if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
            //: return titleDataSource.dataSource.count
            return titleDataSource.dataSource.count
        }
        //: return 0
        return 0
    }

    //: func listContainerView(_ listContainerView: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
    func listContainerView(_: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
        //: let vc = SocialRankChildVC()
        let vc = RankReactiveCompatible()
        //: let subTitle = titles[index]
        let subTitle = titles[index]
        //: if subTitle == "Activity".localized {
        if subTitle == (String(str_popMoreTextName)).localized {
            //: vc.rankPeriodModel = self.rankInfoModel.activity ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.activity ?? PriceModelType()
            //: } else {
        } else {
            //: vc.rankPeriodModel = self.rankInfoModel.charm ?? SocialPeriodModel()
            vc.rankPeriodModel = self.rankInfoModel.charm ?? PriceModelType()
        }
        //: vc.titles = ["Yesterday".localized, "Today".localized, "Weekly".localized]
        vc.titles = [(String(str_frameTitle.suffix(2)) + String(str_tableValue)).localized, (String(str_userName.prefix(5))).localized, (String(str_textName.prefix(6))).localized]
        //: vc.type = index
        vc.type = index
        //: return vc
        return vc
    }
}

// MARK: - Layout

//: extension SocialRankTabVC {
extension ChiefViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func doLab() {
        //: view.addSubview(bgImgView)
        view.addSubview(bgImgView)
        //: view.addSubview(titleView)
        view.addSubview(titleView)
        //: segmentedDataSource.itemWidth = 75
        segmentedDataSource.itemWidth = 75
        //: segmentedDataSource.itemSpacing = 20
        segmentedDataSource.itemSpacing = 20
        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = UIColor.white.withAlphaComponent(0.7)
        //: segmentedDataSource.titleSelectedColor = UIColor.white
        segmentedDataSource.titleSelectedColor = UIColor.white
        //: segmentedDataSource.titleNormalFont = .liveAttention(type: .Medium, fontSize: 18)
        segmentedDataSource.titleNormalFont = .liveAttention(type: .Medium, fontSize: 18)
        //: segmentedDataSource.titleSelectedFont = .liveAttention(type: .Medium, fontSize: 22)
        segmentedDataSource.titleSelectedFont = .liveAttention(type: .Medium, fontSize: 22)
        //: segmentedDataSource.itemWidthIncrement = 0
        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 22.0
        indicator.indicatorWidth = 22.0
        //: indicator.lineStyle = .lengthen
        indicator.lineStyle = .lengthen
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.frame = CGRect(x: (ScreenWidth-titleViewWidth)/2.0, y: kLet_likeTitle-actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        segmentedView.frame = CGRect(x: (kLet_senseContent - titleViewWidth) / 2.0, y: kLet_likeTitle - actualHeight(h: 45), width: titleViewWidth, height: actualHeight(h: 30))
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: titleView.addSubview(segmentedView)
        titleView.addSubview(segmentedView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
