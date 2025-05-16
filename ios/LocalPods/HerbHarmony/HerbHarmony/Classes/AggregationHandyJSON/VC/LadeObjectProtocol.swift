
//: Declare String Begin

/*: "Follow" :*/
fileprivate let str_marginTitle:String = "pop requestFollow"

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let str_targetNameData:[UInt8] = [0x88,0xb5,0xac,0xe6,0xfc,0x9f,0xbd,0xb2,0xfb,0xa8,0xfc,0xb9,0xbd,0xae,0xb2,0xfc,0xac,0xb3,0xb5,0xb2,0xa8,0xaf,0xfc,0xb5,0xba,0xfc,0xa5,0xb3,0xa9,0xfc,0xba,0xb3,0xb0,0xb0,0xb3,0xab,0xfc,0xb9,0xbd,0xbf,0xb4,0xfc,0xb3,0xa8,0xb4,0xb9,0xae,0xa2]

private func facingPages(talk num: UInt8) -> UInt8 {
    return num ^ 220
}

/*: "Tip:\"Favorite each other\" chat will be free" :*/
fileprivate let str_senseValue:[UInt8] = [0x6f,0x52,0x4b,0x1,0x19,0x7d,0x5a,0x4d,0x54,0x49,0x52,0x4f,0x5e,0x1b,0x5e,0x5a,0x58,0x53,0x1b,0x54,0x4f,0x53,0x5e,0x49,0x19,0x1b,0x58,0x53,0x5a,0x4f,0x1b,0x4c,0x52,0x57,0x57,0x1b,0x59,0x5e,0x1b,0x5d,0x49,0x5e,0x5e]

private func timeEdge(data num: UInt8) -> UInt8 {
    return num ^ 59
}

/*: "targetUid" :*/
fileprivate let str_colorPointTitle:String = "targetUiname value"
fileprivate let str_imageValue:[Character] = ["d"]

/*: "type" :*/
fileprivate let str_liveShowData:[Character] = ["t","y","p","e"]

/*: "attentionType" :*/
fileprivate let str_cellData:String = "attentto"
fileprivate let str_controlText:[Character] = ["n","T","y","p","e"]

/*: "limit" :*/
fileprivate let str_kitData:String = "ltextmtextt"

/*: "20" :*/
fileprivate let str_intimateValue:String = "20"

/*: "page" :*/
fileprivate let str_translationText:[Character] = ["p","a","g","e"]

/*: "ClewViewCell" :*/
fileprivate let str_modelData:[Character] = ["T","a","l","k","i","n","g","A","t","t","e","n","t","i","o","n","C","e","l","l"]

/*: "You've got no favourite yet." :*/
fileprivate let str_tillCenterValue:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","f","a","v","o","u"]
fileprivate let str_bagTitle:[Character] = ["r","i","t","e"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LadeObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: import JXPagingView
import JXPagingView

//: class TalkingAttentionVC: TalkingBaseViewController {
class LadeObjectProtocol: NameViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [ExtraTransformable] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(str_marginTitle.suffix(6))).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        colorFileView()
        //: reqData()
        popData()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue), style: UITableView.Style.plain)
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
        //: table.addHeaderRefresh { [weak self] in
        table.reloadStart { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.loadDownFlush()
        }
        //: table.addFooterRefresh { [weak self] in
        table.deadlineComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.busy()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.alright()
        label.textColor = UIColor.alright()
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: str_targetNameData.map{facingPages(talk: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = String(bytes: str_senseValue.map{timeEdge(data: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension LadeObjectProtocol {
    //: func reqData() {
    func popData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = WithAdministratorAppManager.share.loginUserMode.userID
        dict[(String(str_colorPointTitle.prefix(8)) + String(str_imageValue))] = WithAdministratorAppManager.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(String(str_liveShowData))] = "1"
        //: dict["attentionType"] = "1"
        dict[(str_cellData.replacingOccurrences(of: "to", with: "io") + String(str_controlText))] = "1"
        //: dict["limit"] = "20"
        dict[(str_kitData.replacingOccurrences(of: "text", with: "i"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(str_translationText))] = String(pageIndex)

        //: BridgeReactiveCompatible.req_atationList(params: dict) { succeed, result, errorModel in
        BridgeReactiveCompatible.isometric(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.cellIndex()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [ExtraTransformable] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<ExtraTransformable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [ExtraTransformable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func loadDownFlush() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        popData()
    }

    //: func footerRefresh() {
    func busy() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        popData()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension LadeObjectProtocol: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension LadeObjectProtocol: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingAttentionCell"
        let identifier = (String(str_modelData))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ClewViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = ClewViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: ExtraTransformable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.dismissTee(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - AdministratorReactiveCompatible

//: extension TalkingAttentionVC: AttentionDelegate {
extension LadeObjectProtocol: AdministratorReactiveCompatible {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func loadToIndex(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func filmInsideIndex(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension LadeObjectProtocol {
    //: private func designView() {
    private func colorFileView() {
        //: var style = EmptyStyle()
        var style = StackEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (String(str_tillCenterValue) + String(str_bagTitle)).localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(kLet_keyValue ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = WithAdministratorAppManager.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: "TalkingAttentionCell")
        MainTable.register(ClewViewCell.self, forCellReuseIdentifier: (String(str_modelData)))
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
