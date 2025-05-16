
//: Declare String Begin

/*: "Online List" :*/
fileprivate let str_makeName:String = "Online type message"
fileprivate let str_colorValue:String = "Listif as make equal user"

/*: "Select @ Numbers" :*/
fileprivate let str_indexMainValue:String = "Selectlab self equal manager add"
fileprivate let str_playerValue:String = "layer make let let @ N"
fileprivate let str_bindData:String = "umbstyles"

/*: "FastenerViewCell" :*/
fileprivate let str_toName:String = "Talkigin let feed"
fileprivate let str_addTitle:String = "object white self load plustRoom"
fileprivate let str_launchValue:String = "live as indicator pathList"

/*: "Nobody can @" :*/
fileprivate let str_cellToData:[Character] = ["N","o","b","o","d"]
fileprivate let str_succeedData:String = "y can @var if"

/*: "roomId" :*/
fileprivate let str_buttonData:String = "height icon self model selfroomId"

/*: "type" :*/
fileprivate let str_screenText:String = "typme"

/*: "page" :*/
fileprivate let str_rawBottomName:String = "paglab"

/*: "uid" :*/
fileprivate let str_phoneTitle:[UInt8] = [0x64,0x69,0x75]

/*: "name" :*/
fileprivate let str_spanData:[UInt8] = [0x62,0x6d,0x61,0x69]

private func leadingBack(limit num: UInt8) -> UInt8 {
    return num ^ 12
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum MagnituderyKeyRepresentable: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class MakeViewController: NameViewController {
    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: MagnituderyKeyRepresentable = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        combine()
        //: setupSubViewsConstraint()
        setupFrontConstraint()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(str_makeName.prefix(7)) + String(str_colorValue.prefix(4))).localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(str_indexMainValue.prefix(6)) + String(str_playerValue.suffix(4)) + str_bindData.replacingOccurrences(of: "style", with: "er")).localized
        }
    }

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
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
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.deadlineComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.dataTing()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.reloadStart { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.aboveBeauty()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: "TalkingChatRoomOnlineListCell")
        table.register(FastenerViewCell.self, forCellReuseIdentifier: (String(str_toName.prefix(5)) + "ngCha" + String(str_addTitle.suffix(5)) + "Online" + String(str_launchValue.suffix(4)) + "Cell"))

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = StackEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(str_cellToData) + String(str_succeedData.prefix(7)))
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension MakeViewController {
    //: func headerRefresh() {
    func aboveBeauty() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        snapSection()
    }

    //: private func footerRefresh() {
    private func dataTing() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        snapSection()
    }

    //: func reqData() {
    func snapSection() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(str_buttonData.suffix(6)))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(str_screenText.replacingOccurrences(of: "me", with: "e"))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(str_screenText.replacingOccurrences(of: "me", with: "e"))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(str_rawBottomName.replacingOccurrences(of: "lab", with: "e"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        SumReactiveCompatible.share.completionMemberEnterUponDeviceRoomClickAssemblage(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.cellIndex()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension MakeViewController: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: "TalkingChatRoomOnlineListCell", for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: (String(str_toName.prefix(5)) + "ngCha" + String(str_addTitle.suffix(5)) + "Online" + String(str_launchValue.suffix(4)) + "Cell"), for: indexPath) as! FastenerViewCell
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = PopScaleReactiveCompatible()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! PopScaleReactiveCompatible
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.imageBreed(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! PopScaleReactiveCompatible
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: cellModel.uid)
            LeadingEqualReactiveCompatible.share.bindDownFrom(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: str_phoneTitle.reversed(), encoding: .utf8)!: cellModel.uid, String(bytes: str_spanData.map{leadingBack(limit: $0)}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension MakeViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func combine() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func setupFrontConstraint() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
