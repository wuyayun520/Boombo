
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let str_viewZoneData:String = "Empadd if import info"
fileprivate let str_freeValue:String = "tyCollself at send play"
fileprivate let str_tempData:String = "nReustext like"
fileprivate let str_valueName:String = "device top lab errorView"

/*: "Uncover Your Admirers" :*/
fileprivate let str_showValue:[Character] = ["U","n","c","o","v","e","r"," ","Y","o","u","r"," ","A","d","m","i","r"]
fileprivate let str_leadingValue:String = "colors"

/*: "mf/newFeature/whoLikeMeList" :*/
fileprivate let str_whiteBackValue:String = "if attention near class infomf/new"
fileprivate let str_errorData:String = "progress centerre/whoLi"
fileprivate let str_bottomTitle:String = "member view button first datakeMeList"

/*: "mf/newFeature/whoVisitorMeList" :*/
fileprivate let str_addData:[Character] = ["m","f","/","n","e","w","F","e","a"]
fileprivate let str_contentData:[Character] = ["t","u","r","e"]
fileprivate let str_availableContent:String = "/whoself section kit"
fileprivate let str_locationValue:String = "orMeview let message net"

/*: "You've got no list yet." :*/
fileprivate let str_emptyPathData:String = "You\'ve"
fileprivate let str_bottomName:String = "actual count kind topo li"
fileprivate let str_listViewContent:[Character] = ["."]

/*: "&type=0" :*/
fileprivate let str_toolAddMessageText:[Character] = ["&","t","y","p","e","=","0"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MolarConcentrationFlowLayout.swift
//  HerbHarmony
//
//  Created by Charlotte on 2025/2/19.
//

//: import UIKit
import UIKit

//: import JXSegmentedView
import JXSegmentedView

//: import JXPagingView
import JXPagingView

//: enum likeTab: Int {
enum likeTab: Int {
    //: case Likes = 1
    case Likes = 1
    //: case Visitors  = 2
    case Visitors = 2
}

//: class TalkingLikeListVC: TalkingBaseViewController {
class MolarConcentrationFlowLayout: NameViewController {
    // 页面类型
    //: var tabType: likeTab?
    var tabType: likeTab?
    //: var listData = Array<SocialUserListModel>()
    var listData = [CustomPersonHandyJSON]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        callSubviews()
        //: setupSubViewsConstraint()
        seer()
        //: firstLoadData()
        every()
        //: addNotifications()
        magnitudeercalate()
    }

    // MARK: - Lazy load

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(TalkingLikeListCell.self,
        collectionView.register(TelephoneMessageThen.self,
                                //: forCellWithReuseIdentifier: TalkingLikeListCell.className())
                                forCellWithReuseIdentifier: TelephoneMessageThen.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(str_viewZoneData.prefix(3)) + String(str_freeValue.prefix(6)) + "ectio" + String(str_tempData.prefix(5)) + "able" + String(str_valueName.suffix(4))))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.reloadStart { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.refreshFormat()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: InstanceCustomReactiveCompatible = {
        //: let v = SocialEmptyView()
        let v = InstanceCustomReactiveCompatible()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipBtn: UIButton = {
    private lazy var vipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Uncover Your Admirers".localized, for: .normal)
        btn.setTitle((String(str_showValue) + str_leadingValue.replacingOccurrences(of: "color", with: "er")).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 325, height: 54)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 325, height: 54)), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 17)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 17)
        //: btn.addTarget(self, action: #selector(vipBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(phonation), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLikeListVC {
extension MolarConcentrationFlowLayout {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func every() {
        //: headerRefresh()
        refreshFormat()
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func refreshFormat() {
        //: load_listData()
        actionBlock()
    }

    //: func load_listData() {
    func actionBlock() {
        //: var url = ""
        var url = ""
        //: if tabType == .Likes {
        if tabType == .Likes {
            //: url = "mf/newFeature/whoLikeMeList"
            url = (String(str_whiteBackValue.suffix(6)) + "Featu" + String(str_errorData.suffix(8)) + String(str_bottomTitle.suffix(8)))
            //: } else {
        } else {
            //: url = "mf/newFeature/whoVisitorMeList"
            url = (String(str_addData) + String(str_contentData) + String(str_availableContent.prefix(4)) + "Visit" + String(str_locationValue.prefix(4)) + "List")
        }
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = url
        reqModel.requestPath = url
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { _, result, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: self.collectionView.endRefresh()
            self.collectionView.cellIndex()
            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count > 0 {
            if arr.count > 0 {
                //: self.listData.removeAll()
                self.listData.removeAll()
            }
            //: for dict in arr {
            for dict in arr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = CustomPersonHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.listData.append(model)
                    self.listData.append(model)
                }
            }
            //: self.refreshViewStatus()
            self.quitName()
        }
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func listCell() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        CustomThen.adRequest { _, _, _ in
            //: self.load_listData()
            self.actionBlock()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func quitName() {
        // 是否有数据判断缺省图
        //: if self.listData.count == 0 {
        if self.listData.count == 0 {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (str_emptyPathData + " got n" + String(str_bottomName.suffix(4)) + "st yet" + String(str_listViewContent)).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }
        //: if self.listData.count > 0 && !WithAdministratorAppManager.share.loginUserMode.loungePlus {
        if self.listData.count > 0, !WithAdministratorAppManager.share.loginUserMode.loungePlus {
            //: vipBtn.isHidden = false
            vipBtn.isHidden = false
            //: } else {
        } else {
            //: vipBtn.isHidden = true
            vipBtn.isHidden = true
        }
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
    }

    //: @objc private func vipBtnClick() {
    @objc private func phonation() {
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        LeadingEqualReactiveCompatible.share.nowKeyLog(appendParams: (String(str_toolAddMessageText)))
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension TalkingLikeListVC: JXPagingViewListViewDelegate {
extension MolarConcentrationFlowLayout: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UICollectionViewDelegate

//: extension TalkingLikeListVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension MolarConcentrationFlowLayout: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: return listData.count
        return listData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingLikeListCell.className(), for: indexPath) as! TalkingLikeListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TelephoneMessageThen.className(), for: indexPath) as! TelephoneMessageThen
        //: var model: SocialUserListModel?
        var model: CustomPersonHandyJSON?
        //: model = listData[indexPath.row]
        model = listData[indexPath.row]

        //: cell.refreshCell(model, indexRow: indexPath.row)
        cell.noTo(model, indexRow: indexPath.row)

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if !WithAdministratorAppManager.share.loginUserMode.loungePlus {
        if !WithAdministratorAppManager.share.loginUserMode.loungePlus {
            //: vipBtnClick()
            phonation()
            //: } else {
        } else {
            //: var model: SocialUserListModel?
            var model: CustomPersonHandyJSON?
            //: model = self.listData[indexPath.row]
            model = self.listData[indexPath.row]
            //: let uid = model?.uid ?? 0
            let uid = model?.uid ?? 0
            //: if uid > 0 {
            if uid > 0 {
                //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: "\(uid)")
                LeadingEqualReactiveCompatible.share.bindDownFrom(uid: "\(uid)")
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((kLet_senseContent - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }
}

// MARK: - Layout

//: extension TalkingLikeListVC {
extension MolarConcentrationFlowLayout {
    // 添加视图
    //: private func setupSubviews() {
    private func callSubviews() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: self.view.addSubview(vipBtn)
        self.view.addSubview(vipBtn)
        //: self.view.bringSubviewToFront(vipBtn)
        self.view.bringSubviewToFront(vipBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func seer() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
        //: vipBtn.snp.makeConstraints { make in
        vipBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 325, height: 54))
            make.size.equalTo(CGSize(width: 325, height: 54))
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func magnitudeercalate() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(self.func__requestUserInfo),
                                               selector: #selector(self.listCell),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_greetData,
                                               //: object: nil)
                                               object: nil)
    }
}
