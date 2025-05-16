
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_insideValue:[UInt8] = [0xce,0xc9,0xce,0xd3,0x8f,0xc4,0xc8,0xc3,0xc2,0xd5,0x9d,0x8e,0x87,0xcf,0xc6,0xd4,0x87,0xc9,0xc8,0xd3,0x87,0xc5,0xc2,0xc2,0xc9,0x87,0xce,0xca,0xd7,0xcb,0xc2,0xca,0xc2,0xc9,0xd3,0xc2,0xc3]

/*: "There's no posts yet." :*/
fileprivate let str_timeText:String = "There\'s"
fileprivate let str_roomName:[Character] = [" ","n","o"," ","p"]
fileprivate let str_tableUpSexName:String = "osts yet.user button"

/*: "uid" :*/
fileprivate let str_userName:String = "uidata"

/*: "page" :*/
fileprivate let str_addTitle:[Character] = ["p","a","g","e"]

/*: "list" :*/
fileprivate let str_titleName:String = "ltextst"

/*: "nickname" :*/
fileprivate let str_normalData:String = "nidataname"

/*: "age" :*/
fileprivate let str_viewToName:[Character] = ["a","g","e"]

/*: "sex" :*/
fileprivate let str_iconTitle:String = "SEX"

/*: "isTPAuth" :*/
fileprivate let str_timeName:String = "ilimit"
fileprivate let str_borderText:[Character] = ["T","P","A","u","t","h"]

/*: "headPic" :*/
fileprivate let str_mainTitle:[Character] = ["h","e","a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let str_imageData:[Character] = ["p","i"]
fileprivate let str_onListAtTitle:String = "frame mediumnCount"

/*: "model" :*/
fileprivate let str_messageValue:String = "modemanager"

/*: "Unpin from profile" :*/
fileprivate let str_rangeEqualFrameName:String = "Unpin content app target"
fileprivate let str_sizeData:String = "prorowi"
fileprivate let str_viewValue:String = "LE"

/*: "Delete Post" :*/
fileprivate let str_iconName:[Character] = ["D","e","l","e","t","e"," ","P","o"]
fileprivate let str_centerValue:[Character] = ["s","t"]

/*: "Pin to profile" :*/
fileprivate let str_includeName:String = "list break model letPin t"
fileprivate let str_toTitle:[Character] = ["o"," ","p","r","o","f","i","l","e"]

/*: "id" :*/
fileprivate let str_viewDisplayName:[Character] = ["i","d"]

/*: "momentId" :*/
fileprivate let str_roomContent:[Character] = ["m","o","m","e","n","t","I"]
fileprivate let str_infoContent:[Character] = ["d"]

/*: "status" :*/
fileprivate let str_callReplyValue:String = "stviewus"

/*: "Your post has been pinned" :*/
fileprivate let str_addUpData:String = "first makeYour p"
fileprivate let str_intervalTitle:String = "s bbottom color"
fileprivate let str_theEndValue:[Character] = ["e","e","n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let str_textInputName:String = "Your posuser name content of shared"
fileprivate let str_bottomName:[Character] = ["t"," ","h","a","s"," ","b","e","e","n"," ","U","n","p","i","n","n","e","d"]

/*: "ItemToThen" :*/
fileprivate let str_userContent:String = "Talkiif else location photo succeed"
fileprivate let str_attentionValue:String = "false table listen view frontmentIt"

/*: "Posts" :*/
fileprivate let str_existData:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataSignViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class DataSignViewController: NameViewController {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [ModelHandyJSON] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_insideValue.map{$0^167}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        thoughtImage()
        //: setupSubViewsConstraint()
        observeOf()
        //: bindInteraction()
        uptick()
        //: reqData()
        icon()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = StackEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (str_timeText + String(str_roomName) + String(str_tableUpSexName.prefix(9)))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension DataSignViewController {
    //: func reqData() {
    func icon() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(str_userName.replacingOccurrences(of: "data", with: "d"))] = uid
        //: dict["page"] = pageIndex
        dict[(String(str_addTitle))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.mortal(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.cellIndex()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(str_titleName.replacingOccurrences(of: "text", with: "i"))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [ModelHandyJSON] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ModelHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(str_normalData.replacingOccurrences(of: "data", with: "ck"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(String(str_viewToName))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(str_iconTitle.lowercased())] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(str_userName.replacingOccurrences(of: "data", with: "d"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(str_timeName.replacingOccurrences(of: "limit", with: "s") + String(str_borderText))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(String(str_mainTitle))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(str_imageData) + String(str_onListAtTitle.suffix(6)))] as! Int
                        //: model.caculateItemHeight()
                        model.collection()
                        //: if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                        if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.atShow(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension DataSignViewController {
    //: func headerRefresh() {
    func ignitionKeyInside() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        icon()
    }

    //: func footerRefresh() {
    func isoclinic() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        icon()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func showNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: ModelHandyJSON = userinfo[(str_messageValue.replacingOccurrences(of: "manager", with: "l"))] as! ModelHandyJSON
        //: if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
        if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func marginOfError(model: ModelHandyJSON, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = SuspensionBridgeDataSource(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.titleEvent(cellTitleList: [(String(str_rangeEqualFrameName.prefix(6)) + "from " + str_sizeData.replacingOccurrences(of: "row", with: "f") + str_viewValue.lowercased()).localized, (String(str_iconName) + String(str_centerValue)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.titleEvent(cellTitleList: [(String(str_includeName.suffix(5)) + String(str_toTitle)).localized, (String(str_iconName) + String(str_centerValue)).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.titleEvent(cellTitleList: [(String(str_rangeEqualFrameName.prefix(6)) + "from " + str_sizeData.replacingOccurrences(of: "row", with: "f") + str_viewValue.lowercased()).localized, (String(str_iconName) + String(str_centerValue)).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.titleEvent(cellTitleList: [(String(str_iconName) + String(str_centerValue)).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(str_rangeEqualFrameName.prefix(6)) + "from " + str_sizeData.replacingOccurrences(of: "row", with: "f") + str_viewValue.lowercased()).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.executeCollection(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(str_includeName.suffix(5)) + String(str_toTitle)).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.executeCollection(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(str_iconName) + String(str_centerValue)).localized {
                //: ProgressHUD.show()
                StandardProgressHUD.indexRoom()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                ManagerRequestTool.equalBy(params: dict) { succeed, _, errorModel in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.atShow(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func executeCollection(isTop: Int, model: ModelHandyJSON) {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(String(str_roomContent) + String(str_infoContent))] = model.mid
        //: dict["status"] = isTop
        dict[(str_callReplyValue.replacingOccurrences(of: "view", with: "at"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.diorama(params: dict) { succeed, _, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(str_addUpData.suffix(6)) + "ost ha" + String(str_intervalTitle.prefix(3)) + String(str_theEndValue)).localized : (String(str_textInputName.prefix(8)) + String(str_bottomName)).localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.successMsg(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.atShow(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension DataSignViewController: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingMomentItemCell"
        let identifier = (String(str_userContent.prefix(5)) + "ngMo" + String(str_attentionValue.suffix(6)) + "emCell")
        //: var cell = TalkingMomentItemCell(style: .default, reuseIdentifier: identifier, isMyHost: true)
        var cell = ItemToThen(style: .default, reuseIdentifier: identifier, isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: ModelHandyJSON = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.like(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.marginOfError(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = ShowIconFactViewDelegate(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension DataSignViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func thoughtImage() {
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: self.title = "Posts".localized
        self.title = (String(str_existData)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: "TalkingMomentItemCell")
        mainTableView.register(ItemToThen.self, forCellReuseIdentifier: (String(str_userContent.prefix(5)) + "ngMo" + String(str_attentionValue.suffix(6)) + "emCell"))
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func observeOf() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func uptick() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.reloadStart { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.ignitionKeyInside()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.deadlineComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.isoclinic()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showNotification(notification:)), name: kLet_scalePlainData, object: nil)
    }
}
