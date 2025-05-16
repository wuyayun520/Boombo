
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_startHiddenText:[UInt8] = [0x96,0x9b,0x96,0xa1,0x55,0x90,0x9c,0x91,0x92,0x9f,0x67,0x56,0x4d,0x95,0x8e,0xa0,0x4d,0x9b,0x9c,0xa1,0x4d,0x8f,0x92,0x92,0x9b,0x4d,0x96,0x9a,0x9d,0x99,0x92,0x9a,0x92,0x9b,0xa1,0x92,0x91]

fileprivate func humanFace(add num: UInt8) -> UInt8 {
    let value = Int(num) - 45
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Online Users" :*/
fileprivate let str_sendName:String = "interaction viewOnlin"
fileprivate let str_exitName:[Character] = ["e"," ","U","s","e","r","s"]

/*: "ChangeListCell" :*/
fileprivate let str_colorLineValue:String = "lab to new actualTalkin"
fileprivate let str_toValue:String = "height type succeed let leteRoomO"
fileprivate let str_mainData:String = "effect type in for emptyeListC"
fileprivate let str_contentTitle:String = "eto"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubmitPopThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomOnlineListView: UIView {
class SubmitPopThen: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    //: private let contentV_H = (344+kLet_appMarginText)
    private let contentV_H = (344 + kLet_appMarginText)
    //: private var DataSource: [TalkingLiveRoomOnlineListModel] = []
    private var DataSource: [SectionListModel] = []

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        redStopBy()
        //: setupSubViewsConstraint()
        alongConfinementGift()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_startHiddenText.map{humanFace(add: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickDiscountButtonTable), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.Corner(width: kLet_senseContent,
        v.corners(width: kLet_senseContent,
                  //: height: contentV_H,
                  height: contentV_H,
                  //: corners: [.topLeft, .topRight],
                  corners: [.topLeft, .topRight],
                  //: cornerRadii: .init(width: 12, height: 12))
                  cornerRadii: .init(width: 12, height: 12))
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.behindUpRoom(fontSize: 20)
        lb.font = UIFont.behindUpRoom(fontSize: 20)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Online Users".localized
        lb.text = (String(str_sendName.suffix(5)) + String(str_exitName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
        }
        //: table.register(TalkingLiveRoomOnlineListCell.self, forCellReuseIdentifier: TalkingLiveRoomOnlineListCell.className())
        table.register(ChangeListCell.self, forCellReuseIdentifier: ChangeListCell.className())

        //: return table
        return table
        //: }()
    }()

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingVoiceRoomOnlineListView {
extension SubmitPopThen {
    /// 请求用户在线列表
    //: private func reqData() {
    private func titleData() {
        //: TalkingVoiceRoomReqTool.req_partyOnlineList(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId) { succeed, result, _ in
        BindReqTool.dataUpEnter(roomId: StackMThen.estimated().partyModel.roomId) { succeed, result, _ in
            //: self.tableView.endRefresh()
            self.tableView.cellIndex()
            //: guard succeed else { return }
            guard succeed else { return }
            //: let array: Array = result as! [Any]
            let array: Array = result as! [Any]
            //: var dataArr: [TalkingLiveRoomOnlineListModel] = []
            var dataArr: [SectionListModel] = []
            //: if let datas = [TalkingLiveRoomOnlineListModel].deserialize(from: array as? Array) {
            if let datas = [SectionListModel].deserialize(from: array as? Array) {
                //: dataArr.append(contentsOf: (datas as? [TalkingLiveRoomOnlineListModel] ?? []))
                dataArr.append(contentsOf: (datas as? [SectionListModel] ?? []))
            }
            //: self.DataSource = dataArr
            self.DataSource = dataArr
            //: if dataArr.count > 0 {
            if dataArr.count > 0 {
                //: self.emptyView.removeFromSuperview()
                self.emptyView.removeFromSuperview()
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingVoiceRoomOnlineListView {
extension SubmitPopThen {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func clickDiscountButtonTable() {
        //: dismiss()
        incidental()
    }

    /// 展示视图
    //: func showView() {
    func needDemonstrate() {
        //: currentViewController()?.view.addSubview(self)
        actionController()?.view.addSubview(self)
        //: contentView.isHidden = false
        contentView.isHidden = false
        //: contentView.frame = CGRect(x: 0, y: ScreenHeight, width: kLet_senseContent, height: contentV_H)
        contentView.frame = CGRect(x: 0, y: kLet_environmentClickValue, width: kLet_senseContent, height: contentV_H)
        //: reqData()
        titleData()
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func incidental() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y += self.contentView.height
            self.contentView.frame.origin.y += self.contentView.height
            //: } completion: { _ in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVoiceRoomOnlineListView: UITableViewDelegate, UITableViewDataSource {
extension SubmitPopThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return DataSource.count
        return DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 68
        return 68
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingLiveRoomOnlineListCell"
        let identifier = (String(str_colorLineValue.suffix(6)) + "gLiv" + String(str_toValue.suffix(6)) + "nlin" + String(str_mainData.suffix(6)) + str_contentTitle.replacingOccurrences(of: "to", with: "ll"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingLiveRoomOnlineListCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ChangeListCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingLiveRoomOnlineListCell(style: .default, reuseIdentifier: identifier)
            cell = ChangeListCell(style: .default, reuseIdentifier: identifier)
        }
        //: cell?.setCell(model: DataSource[indexPath.row], index: indexPath.row)
        cell?.vieUser(model: DataSource[indexPath.row], index: indexPath.row)
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: dismiss()
        incidental()
        //: let model = DataSource[indexPath.row]
        let model = DataSource[indexPath.row]
        //: showUserCardBlock?(model.uid)
        showUserCardBlock?(model.uid)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomOnlineListView {
extension SubmitPopThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func redStopBy() {
        //: frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(tableView)
        contentView.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func alongConfinementGift() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLb.snp.bottom).offset(20)
            make.top.equalTo(tipsLb.snp.bottom).offset(20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalTo(-kLet_appMarginText)
            make.bottom.equalTo(-kLet_appMarginText)
        }

        //: let style = EmptyStyle()
        let style = StackEmptyStyle()
        //: emptyView = EmptyView(frame: CGRect(x: 0, y: -100, width: kLet_senseContent, height: contentV_H+100), style: style)
        emptyView = EmptyView(frame: CGRect(x: 0, y: -100, width: kLet_senseContent, height: contentV_H + 100), style: style)
        //: contentView.addSubview(emptyView)
        contentView.addSubview(emptyView)
    }
}
