
//: Declare String Begin

/*: "#F4F6FA" :*/
fileprivate let str_refuseData:String = "#Fmanager gift var month var"
fileprivate let str_whiteValue:[Character] = ["4","F","6","F","A"]

/*: "You've got no list yet." :*/
fileprivate let str_equalName:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t"]
fileprivate let str_miniTitle:String = "sign"

/*: "page" :*/
fileprivate let str_layerText:[Character] = ["p","a","g","e"]

/*: "limit" :*/
fileprivate let str_fillName:[Character] = ["l","i","m","i","t"]

/*: "20" :*/
fileprivate let str_contentValue:String = "count"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentViewController.swift
//  HerbHarmony
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListViewController: TalkingBaseViewController {
class ContentViewController: NameViewController {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var dataArr: [PartyListModel] = []
    var dataArr: [ShowMeasurable] = []
    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        toOmit()
        //: setupSubViewsConstraint()
        observerColor()
        //: bindInteraction()
        bioLab()
        //: reqData()
        tight()
    }

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(PartyListCell.self, forCellReuseIdentifier: PartyListCell.className())
        tableView.register(InstancePartyReactiveCompatible.self, forCellReuseIdentifier: InstancePartyReactiveCompatible.className())
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .colorPush()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (String(str_refuseData.prefix(2)) + String(str_whiteValue)))
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.reloadStart { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.tight()
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.deadlineComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.reqData()
            self.tight()
        }
        //: return tableView
        return tableView
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = StackEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (String(str_equalName) + str_miniTitle.replacingOccurrences(of: "sign", with: ".")).localized
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

//: extension PartyListViewController {
extension ContentViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func toOmit() {
        // 导航底部渐变背景
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func observerColor() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bioLab() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.tight()
        }
    }

    //: func reqData() {
    func tight() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(String(str_layerText))] = pageIndex
        //: dict["limit"] = "20"
        dict[(String(str_fillName))] = "20"

        //: TalkingVoiceRoomReqTool.req_partyList(params: dict, completion: { succeed, result, errorModel in
        BindReqTool.indexLive(params: dict, completion: { succeed, result, _ in

            //: self.tableView.endRefresh()
            self.tableView.cellIndex()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var tempArr: [PartyListModel] = []
                var tempArr: [ShowMeasurable] = []
                //: if let datas = Array<PartyListModel>.deserialize(from: array as? Array) {
                if let datas = Array<ShowMeasurable>.deserialize(from: array as? Array) {
                    //: tempArr.append(contentsOf: (datas as? [PartyListModel])!)
                    tempArr.append(contentsOf: (datas as? [ShowMeasurable])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataArr = tempArr
                    self.dataArr = tempArr
                    //: } else {
                } else {
                    //: self.dataArr.append(contentsOf: tempArr)
                    self.dataArr.append(contentsOf: tempArr)
                }
                //: self.emptyView.isHidden = self.dataArr.count != 0
                self.emptyView.isHidden = self.dataArr.count != 0
                //: self.pageIndex += 1
                self.pageIndex += 1
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
            //: })
        })
    }
}

//: extension PartyListViewController: UITableViewDelegate, UITableViewDataSource {
extension ContentViewController: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: PartyListCell.className(), for: indexPath) as! PartyListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: InstancePartyReactiveCompatible.className(), for: indexPath) as! InstancePartyReactiveCompatible

        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: cell.listModel = listModel
            cell.listModel = listModel
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 88
        return 88
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: LeadingEqualReactiveCompatible.share.func_pushToVoiceRoomVC(roomId: String(listModel.roomId))
            LeadingEqualReactiveCompatible.share.jabbing(roomId: String(listModel.roomId))
        }
    }
}

//: extension PartyListViewController: JXPagingViewListViewDelegate {
extension ContentViewController: JXPagingViewListViewDelegate {
    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return tableView
        return tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }

    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }
}
