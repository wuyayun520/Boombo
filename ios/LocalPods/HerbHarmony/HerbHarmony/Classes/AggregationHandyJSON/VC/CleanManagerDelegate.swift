
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_addColorContent:[UInt8] = [0xa6,0xa1,0xa6,0xbb,0xe7,0xac,0xa0,0xab,0xaa,0xbd,0xf5,0xe6,0xef,0xa7,0xae,0xbc,0xef,0xa1,0xa0,0xbb,0xef,0xad,0xaa,0xaa,0xa1,0xef,0xa6,0xa2,0xbf,0xa3,0xaa,0xa2,0xaa,0xa1,0xbb,0xaa,0xab]

private func viewManager(cell num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "You've got no message yet." :*/
fileprivate let str_modeMultipleName:String = "You\'ve"
fileprivate let str_makeName:[Character] = [" ","n","o"," ","m","e","s","s","a","g","e"," ","y","e","t","."]

/*: "icon_kong_kong_default" :*/
fileprivate let str_equalTitle:String = "icovern"
fileprivate let str_emptyText:String = "contentng"

/*: "Cancel" :*/
fileprivate let str_playerData:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_modelText:String = "ok"

/*: "uid" :*/
fileprivate let str_interactionValue:[UInt8] = [0x9b,0x87,0x8a]

/*: "btn_message_report_nor" :*/
fileprivate let str_imageData:String = "data game var iconbtn_me"
fileprivate let str_videoProgressData:[Character] = ["s","s","a","g","e","_","r","e","p","o","r","t","_","n","o","r"]

/*: "#FF935D" :*/
fileprivate let str_tagData:String = "var to lite gift live#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let str_textName:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","b","l","o","c","k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let str_contentTitle:[Character] = ["#","C","1","7","9","F","9"]

/*: "btn_message_untop_nor" :*/
fileprivate let str_availableData:[UInt8] = [0x7e,0x68,0x72,0x43,0x71,0x79,0x6f,0x6f,0x7d,0x7b,0x79,0x43,0x69,0x72,0x68,0x73,0x6c,0x43,0x72,0x73,0x6e]

private func outOfSight(info num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "btn_message_top_nor" :*/
fileprivate let str_shareTitle:String = "btn_var cell"
fileprivate let str_noFlushValue:[Character] = ["_","t","o","p","_","n","o","r"]

/*: "#8A79F9" :*/
fileprivate let str_fieldTitle:String = "#8A79height in equal"
fileprivate let str_whiteInstanceValue:[Character] = ["F","9"]

/*: "btn_message_delete_nor" :*/
fileprivate let str_environmentValue:String = "btn_make tap"
fileprivate let str_borderData:String = "time"
fileprivate let str_equalData:String = "contentete"

/*: "#FF506D" :*/
fileprivate let str_styleName:[Character] = ["#","F","F","5","0","6","D"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingChatListViewController: TalkingBaseViewController {
class CleanManagerDelegate: NameViewController {
    //: var iLikeBlock: ((_ isShow: Bool) -> ())?
    var iLikeBlock: ((_ isShow: Bool) -> Void)?
    //: private var canLoadMore = false
    private var canLoadMore = false // 是否可以加载更多数据
    //: private var curType = ChatListTopItemType.All
    private var curType = ButtonVolumeEnablesetTarget.All

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_addColorContent.map{viewManager(cell: $0)}, encoding: .utf8)!)
    }

    //: init(isHalfView: Bool = false) {
    init(isHalfView: Bool = false) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.manager.isHalf = isHalfView
        self.manager.isHalf = isHalfView
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: EdificeV2Listener.shared.func__refreshSysMsg()
        EdificeV2Listener.shared.beyondContext()
        // 公共聊天室
        //: self.manager.req_chatRommArr { [weak self] succeed in
        self.manager.romm { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
        // 获取我喜欢列表
        //: self.manager.req_getLikeList { [weak self] succeed in
        self.manager.pathCompletion { [weak self] succeed in
            //: guard succeed == true, let self = self else { return }
            guard succeed == true, let self = self else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let shouldShow = self.manager.iLikeArr.count > 0
                let shouldShow = self.manager.iLikeArr.count > 0
                //: self.likeListView.isHidden = !shouldShow
                self.likeListView.isHidden = !shouldShow
                //: self.likeListView.snp.updateConstraints { make in
                self.likeListView.snp.updateConstraints { make in
                    //: make.height.equalTo(shouldShow ? 90:0)
                    make.height.equalTo(shouldShow ? 90 : 0)
                }
                //: self.likeListView.refreshILikeList(self.manager.iLikeArr)
                self.likeListView.stack(self.manager.iLikeArr)
                //: self.iLikeBlock?(shouldShow)
                self.iLikeBlock?(shouldShow)
            }
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: half_showViewAnimation()
        showPage()
        //: EdificeV2Listener.shared.func__addDelegate(self)
        EdificeV2Listener.shared.frameDelegate(self)
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2) {
            //: self.getConversationList()
            self.viewAdd()
        }
        //: createUI()
        miniUi()
        //: func__installNotificationObservers()
        observers()
    }

    // MARK: - Lazy load

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(StandardMainViewCell.self, forCellReuseIdentifier: StandardMainViewCell.className())
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.reloadStart { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.refreshOnlineStatus(isFirst: true)
            self.telephoneMessage(isFirst: true)
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.deadlineComplection { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.getConversationListMore()
            self.packageMore()
        }
        //: let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        let footer = tableView.mj_footer as! MJRefreshAutoNormalFooter
        //: footer.setTitle("", for: MJRefreshState.idle)
        footer.setTitle("", for: MJRefreshState.idle)
        //: footer.setTitle("", for: MJRefreshState.noMoreData)
        footer.setTitle("", for: MJRefreshState.noMoreData)
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = StackEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (str_modeMultipleName + " got" + String(str_makeName)).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (str_equalTitle.replacingOccurrences(of: "cover", with: "co") + "_kong_" + str_emptyText.replacingOccurrences(of: "content", with: "ko") + "_default")
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var removeCurrVBtn: UIButton = {
    private lazy var removeCurrVBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(removeCurrentViewButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(deleteClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: CountRelationListManager = //: return CountRelationListManager()
        .init()
    //: }()

//    private lazy var topItemView: SignThen = {
//        let view = SignThen.init()
//        view.delegate = self
//        view.backgroundColor = .white
//        return view
//    }()
    /// v1.8.8 我喜欢列表
    //: private lazy var likeListView: ILikeListView = {
    private lazy var likeListView: GiveAndTakeView = {
        //: let v = ILikeListView()
        let v = GiveAndTakeView()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    /// 获取会话列表【增量返回】
    //: func getConversationList() {
    func viewAdd() {
        //: self.manager.req_getConversationList { [weak self] isFinish in
        self.manager.monologuize { [weak self] isFinish in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.canLoadMore = isFinish
            self.canLoadMore = isFinish
            // 获取用户在线状态逻辑
            //: var timeInterval = 0.5
            var timeInterval = 0.5
            //: var isFirst = false
            var isFirst = false
            //: if (self.manager.loadedOnlineStatus == false) {
            if self.manager.loadedOnlineStatus == false { // 首次
                //: self.manager.loadedOnlineStatus = true
                self.manager.loadedOnlineStatus = true
                //: timeInterval = 3
                timeInterval = 3
                //: isFirst = true
                isFirst = true
            }
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeInterval) {
                //: self.refreshOnlineStatus(isFirst: isFirst)
                self.telephoneMessage(isFirst: isFirst)
            }
        }
    }

    /// 刷新在线状态
    /// - Parameter isFirst: 是否首次刷新
    //: func refreshOnlineStatus(isFirst: Bool) {
    func telephoneMessage(isFirst: Bool) {
        //: self.manager.getConversationListOnlineStatus(isFirst: isFirst) { [weak self] succeed in
        self.manager.lastImage(isFirst: isFirst) { [weak self] succeed in
            //: self?.tableView.endRefresh()
            self?.tableView.cellIndex()
            //: guard succeed == true else { return }
            guard succeed == true else { return }
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self?.tableView.mj_footer?.endRefreshing()
                self?.tableView.mj_footer?.endRefreshing()
                //: self?.tableView.reloadData()
                self?.tableView.reloadData()
            }
        }
    }

    /// 获取更多会话列表数据
    //: func getConversationListMore() {
    func packageMore() {
        //: self.getConversationList()
        self.viewAdd()
    }

    /// 过滤增量会话
    //: func cconfigData(listData: [TalkingConversationModel]) {
    func effectBy(listData: [MediaConversationModel]) {
        // 获取用户信息
        //: if listData.count > 0 {
        if listData.count > 0 {
            //: self.manager.getUserInfoListFromCache(conversationList: listData) { [weak self] in
            self.manager.imageMini(conversationList: listData) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.reloadData()
                self.addHead()
            }
        }

        //: refreshTableView()
        titles()
    }

    /// 刷新表格
    //: func refreshTableView() {
    func titles() {
        //: guard self.manager.officialArr.count != 0 ||
        guard self.manager.officialArr.count != 0 ||
            //: self.manager.topArr.count != 0 ||
            self.manager.topArr.count != 0 ||
            //: self.manager.normalArr.count != 0 else {
            self.manager.normalArr.count != 0
        else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: return
            return
        }

        //: self.tableView.endRefresh()
        self.tableView.cellIndex()
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.tableView.mj_footer?.isHidden = !canLoadMore
        self.tableView.mj_footer?.isHidden = !canLoadMore
        //: self.reloadData()
        self.addHead()

        // 没有更多数据
        //: if self.canLoadMore == false {
        if self.canLoadMore == false {
            //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            self.tableView.mj_footer?.endRefreshingWithNoMoreData()
        }
    }

    /// 刷新
    //: func reloadData() {
    func addHead() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    /// 返回上级页面手势事件
    //: @objc private func removeCurrentViewButtonClick() {
    @objc private func deleteClick() {
        //: half_dismissViewAnimation()
        ignoreBeforeHalfView()
    }

    // 删除会话cell
    //: func deleteChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func anText(indexPath _: IndexPath, conversationModel: MediaConversationModel) {
        //: if !EdificeV2Listener.shared.func__checkCanOperateList() { return }
        if !EdificeV2Listener.shared.operate() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        CompartmentAnimatTool.shared.statusImage(targetID: conversationModel.targetId)
        //: var type: ChatListDataType = .normalList
        var type: TotalDataType = .normalList
        //: if conversationModel.isPinned { type = .topList }
        if conversationModel.isPinned { type = .topList }
        //: EdificeV2Listener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: type)
        EdificeV2Listener.shared.tableTalk(targetId: conversationModel.targetId, dataType: type)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.lobby(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            //: if self.canLoadMore &&
            if self.canLoadMore,
               //: self.manager.topArr.count == 0 &&
               self.manager.topArr.count == 0,
               //: self.manager.normalArr.count == 0 {
               self.manager.normalArr.count == 0
            {
                //: self.getConversationList()
                self.viewAdd()
            }
        }
    }

    // 置顶会话
    //: func setTopChatListCell(conversationModel: TalkingConversationModel) {
    func videoPush(conversationModel: MediaConversationModel) {
        //: if !EdificeV2Listener.shared.func__checkCanOperateList() { return }
        if !EdificeV2Listener.shared.operate() { return }
        //: let isTop = !conversationModel.isPinned
        let isTop = !conversationModel.isPinned
        //: EdificeV2Listener.shared.func__setConversationTop(convModel: conversationModel, isTop: isTop)
        EdificeV2Listener.shared.addTime(convModel: conversationModel, isTop: isTop)

        //: if curType == .intimate {
        if curType == .intimate {
            //: self.manager.top_intimateData(convModel: conversationModel, isTop: isTop)
            self.manager.hidden(convModel: conversationModel, isTop: isTop)
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(indexPath: IndexPath, conversationModel: TalkingConversationModel) {
    func upBy(indexPath: IndexPath, conversationModel: MediaConversationModel) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        VoiceAlertShow.enablelineMedium(title: nil,
                                          //: message: kMessage_blocking,
                                          message: kLet_pathText,
                                          //: leftBtnTitle: "Cancel".localized,
                                          leftBtnTitle: (String(str_playerData)).localized,
                                          //: rightBtnTitle: "OK".localized) {
                                          rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            VoiceAlertShow.bias()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            UnambiguousThen.custom(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(indexPath: indexPath, conversationModel: conversationModel)
                self.anText(indexPath: indexPath, conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kLet_barContent,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: str_interactionValue.map{$0^238}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func inoculateBarSimulation(conversationModel: MediaConversationModel) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = SectionThen(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.format(view: nil)
    }
}

// MARK: - 通知

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    //: func func__installNotificationObservers() {
    func observers() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(allView(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: kLet_buttonValue,
                                               //: object: nil)
                                               object: nil)
        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(totalryNotif(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: kLet_likeValue,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户亲密度
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserIntimate(notif:)),
                                               selector: #selector(imaginationImage(notif:)),
                                               //: name: MSGLIST_UPDATE_INTIMATE_NOTIFICATION,
                                               name: kLet_turnValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func allView(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: CoverThen = dic![userID] as! CoverThen
            let aInfoWrap: CoverThen = dic![userID] as! CoverThen
            //: let aModel: TalkingConversationModel? = EdificeV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: MediaConversationModel? = EdificeV2Listener.shared.pushPossibility(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        localInmate()

        //: self.reloadData()
        self.addHead()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func localInmate() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: kLet_limitData) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = EdificeV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: MediaConversationModel? = EdificeV2Listener.shared.pushPossibility(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set([String: Any](), forKey: kLet_limitData)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func totalryNotif(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.changeIn(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }

    /// 更新消息列表用户亲密度
    //: @objc private func func__updateUserIntimate(notif: Notification) {
    @objc private func imaginationImage(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userIntimate(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.totalimate(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - ItalianRegionViewDelegate

//: extension TalkingChatListViewController: TalkingChatListTopItemViewDelegate {
extension CleanManagerDelegate: ItalianRegionViewDelegate {
    //: func resetToTopItemView() {
    func resetShared() {
//        if self.curType == .intimate {
//            topItemView.resetToSeleteAll()
//        }
    }

    //: func changeTopItem(type: ChatListTopItemType) {
    func towardShowType(type _: ButtonVolumeEnablesetTarget) {
//        self.curType = type
//        if self.curType == .All {
//            tableView.mj_header?.isHidden = false
//            tableView.mj_footer?.isHidden = false
//            refreshTableView()
//        } else {
//            self.manager.req_intimateData()
//            tableView.mj_header?.isHidden = true
//            tableView.mj_footer?.isHidden = true
//
//           if self.manager.intimateTopArr.count == 0 && self.manager.intimateNorArr.count == 0 {
//                self.tableView.isHidden = true
//                self.emptyView.isHidden = false
//            }
//            self.tableView.reloadData()
//            uploadRecord.uploadRecordEvent(eventID: ClickIntimateTabNoP)
//        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatListViewController: UITableViewDelegate, UITableViewDataSource {
extension CleanManagerDelegate: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: return 5
            return 5
            //: } else {
        } else {
            //: return 2
            return 2
        }
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if curType == .All {
        if curType == .All {
            //: switch section {
            switch section {
            //: case ChatListSectionTyep.offical.rawValue:
            case DoingBinaryTotalerval.offical.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.officialArr.count
                return self.manager.officialArr.count

            //: case ChatListSectionTyep.chatRoom.rawValue:
            case DoingBinaryTotalerval.chatRoom.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                //: return self.manager.chatRoomArr.count
                return self.manager.chatRoomArr.count

            //: case ChatListSectionTyep.moreMsg.rawValue:
            case DoingBinaryTotalerval.moreMsg.rawValue:
                //: if self.manager.isHalf == true { return 0 }
                if self.manager.isHalf == true { return 0 }
                // 首次加载完数据再展示，防止提前进入无数据
                //: if self.manager.loadedOnlineStatus == false { return 0 }
                if self.manager.loadedOnlineStatus == false { return 0 }
                //: return 1
                return 1

            //: case ChatListSectionTyep.top.rawValue:
            case DoingBinaryTotalerval.top.rawValue:
                //: return self.manager.topArr.count
                return self.manager.topArr.count

            //: case ChatListSectionTyep.normal.rawValue:
            case DoingBinaryTotalerval.normal.rawValue:
                //: return self.manager.normalArr.count
                return self.manager.normalArr.count

            //: default:
            default:
                //: return 0
                return 0
            }
            //: } else {
        } else {
            //: switch section {
            switch section {
            //: case ChatListSectionIntimateTyep.top.rawValue:
            case MTotalLiteral.top.rawValue:
                //: return self.manager.intimateTopArr.count
                return self.manager.intimateTopArr.count
            //: case ChatListSectionIntimateTyep.normal.rawValue:
            case MTotalLiteral.normal.rawValue:
                //: return self.manager.intimateNorArr.count
                return self.manager.intimateNorArr.count
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: StandardMainViewCell.className(), for: indexPath) as! StandardMainViewCell
        //: var model: TalkingConversationModel?
        var model: MediaConversationModel?
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == DoingBinaryTotalerval.moreMsg.rawValue {
                //: model = self.manager.req_moreMsgGetPlaceholderModel()
                model = self.manager.toAGreaterExtentCall()
                //: } else {
            } else {
                //: model = self.manager.req_conversationModel(indexPath: indexPath)
                model = self.manager.alter(indexPath: indexPath)
            }
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.coinNet(indexPath: indexPath)
        }
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.pushModel(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.discoView(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: if curType == .All {
        if curType == .All {
            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.alter(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.coinNet(indexPath: indexPath) else {
                //: return false
                return false
            }
            //: guard model.chatType == .private else { return false }
            guard model.chatType == .private else { return false }
        }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let model: TalkingConversationModel?
        let model: MediaConversationModel?
        //: if curType == .All {
        if curType == .All {
            //: model = self.manager.req_conversationModel(indexPath: indexPath)
            model = self.manager.alter(indexPath: indexPath)
            //: } else {
        } else {
            //: model = self.manager.req_IntimateConversationModel(indexPath: indexPath)
            model = self.manager.coinNet(indexPath: indexPath)
        }
        //: if model == nil {
        if model == nil {
            //: return nil
            return nil
        }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model!)
            self.inoculateBarSimulation(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.nearCounterval(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.nearCounterval(name: (String(str_imageData.suffix(6)) + String(str_videoProgressData))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = LabelWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(str_tagData.suffix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(indexPath: indexPath, conversationModel: model!)
            self.upBy(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.nearCounterval(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.nearCounterval(name: (String(str_textName))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = LabelWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(str_contentTitle)))

        // 置顶
        //: let topBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let topBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.setTopChatListCell(conversationModel: model!)
            self.videoPush(conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: let image = model!.isPinned ? "btn_message_untop_nor":"btn_message_top_nor"
        let image = model!.isPinned ? String(bytes: str_availableData.map{outOfSight(info: $0)}, encoding: .utf8)! : (String(str_shareTitle.prefix(4)) + "message" + String(str_noFlushValue))
        //: if let topBtnTrashcan = UIImage.nearCounterval(name: image).cgImage {
        if let topBtnTrashcan = UIImage.nearCounterval(name: image).cgImage {
            //: topBtn.image = ImageWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            topBtn.image = LabelWithoutRender(cgImage: topBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: topBtn.backgroundColor = UIColor(hex: "#8A79F9")
        topBtn.backgroundColor = UIColor(hex: (String(str_fieldTitle.prefix(5)) + String(str_whiteInstanceValue)))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(indexPath: indexPath, conversationModel: model!)
            self.anText(indexPath: indexPath, conversationModel: model!)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.nearCounterval(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.nearCounterval(name: (String(str_environmentValue.prefix(4)) + "message_" + str_borderData.replacingOccurrences(of: "time", with: "d") + str_equalData.replacingOccurrences(of: "content", with: "el") + "_nor")).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = LabelWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(str_styleName)))

        //: let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, topBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if self.manager.isHalf == false &&
        if self.manager.isHalf == false &&
            //: self.curType == .All &&
            self.curType == .All &&
            //: section == ChatListSectionTyep.offical.rawValue &&
            section == DoingBinaryTotalerval.offical.rawValue &&
            //: self.manager.officialArr.count > 0 &&
            self.manager.officialArr.count > 0 &&
            //: WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
            WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue
        {
            //: return 15.0
            return 15.0
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: if self.curType == .All && section == ChatListSectionTyep.offical.rawValue && self.manager.officialArr.count > 0 {
        if self.curType == .All && section == DoingBinaryTotalerval.offical.rawValue && self.manager.officialArr.count > 0 {
            //: let v = UIView()
            let v = UIView()
            //: v.backgroundColor = tableView.backgroundColor
            v.backgroundColor = tableView.backgroundColor
            //: return v
            return v
        }
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if curType == .All {
        if curType == .All {
            //: if indexPath.section == ChatListSectionTyep.moreMsg.rawValue {
            if indexPath.section == DoingBinaryTotalerval.moreMsg.rawValue { // 更多消息
                //: let vc = TalkingMoreMessagesListViewController()
                let vc = TotalUserDataSource()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: return
                return
            }

            //: guard let model = self.manager.req_conversationModel(indexPath: indexPath) else {
            guard let model = self.manager.alter(indexPath: indexPath) else {
                //: return
                return
            }
            //: if model.chatType == .group {
            if model.chatType == .group { // 群聊
                //: pushChatRoomList(model: model)
                roomOn(model: model)

                //: } else if model.chatType == .service {
            } else if model.chatType == .service { // 官方客服
                //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .FAQ)
                LeadingEqualReactiveCompatible.share.enableLine(webViewType: .FAQ)
                //: uploadRecord.uploadRecordEvent(eventID: ClickCSCNoP, toUid: model.targetId)
                kLet_voiceText.quantityingTime(eventID: kLet_countErrName, toUid: model.targetId)

                //: } else {
            } else {
                //: if model.targetId == IconThen.getXiaoMiID() {
                if model.targetId == IconThen.finishBy() { // 系统消息
                    //: uploadRecord.uploadRecordEvent(eventID: ClickSystemNotificationNoP, toUid: model.targetId)
                    kLet_voiceText.quantityingTime(eventID: kLet_keyName, toUid: model.targetId)
                    //: } else {
                } else {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
                    kLet_voiceText.quantityingTime(eventID: kLet_statusValue, toUid: model.targetId)
                }

                //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
                let isFrom = self.manager.isHalf ? VoiceFromEnum.LiveRoom : VoiceFromEnum.Normal
                //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
                LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: model.targetId, isFrom: isFrom) { vc in
                    //: if model.gj_userInfo != nil {
                    if model.gj_userInfo != nil {
                        //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                        vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    }
                }
            }
            //: } else {
        } else {
            //: guard let model = self.manager.req_IntimateConversationModel(indexPath: indexPath) else {
            guard let model = self.manager.coinNet(indexPath: indexPath) else {
                //: return
                return
            }
            //: let isFrom = self.manager.isHalf ? PrivateChatIsFromEnum.LiveRoom:PrivateChatIsFromEnum.Normal
            let isFrom = self.manager.isHalf ? VoiceFromEnum.LiveRoom : VoiceFromEnum.Normal
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: model.targetId, isFrom: isFrom) { vc in
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: model.targetId, isFrom: isFrom) { vc in
                //: if model.gj_userInfo != nil {
                if model.gj_userInfo != nil {
                    //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                    vc.isHaveSession = model.gj_userInfo!.isHaveSession
                }
            }
        }
    }
}

// MARK: - 跳转公共聊天室

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    //: func pushChatRoomList(model: TalkingConversationModel) {
    func roomOn(model: MediaConversationModel) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickChatRoomNoP, toUid: model.targetId)
        kLet_voiceText.quantityingTime(eventID: kLet_halfContent, toUid: model.targetId)
        //: guard model.onlyOneRoomId.isEmptyString else {
        guard model.onlyOneRoomId.isEmptyString else {
            //: LeadingEqualReactiveCompatible.share.func__pushToGroupChat(groupId: model.onlyOneRoomId)
            LeadingEqualReactiveCompatible.share.jam(groupId: model.onlyOneRoomId)
            //: return
            return
        }
        //: let vc = TalkingChatRoomListVC.init()
        let vc = ChatViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingChatListViewController: IMManagerDelegate {
extension CleanManagerDelegate: ToObjectProtocol {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func plan(data: [MediaConversationModel]) {
        //: self.manager.req_initData()
        self.manager.everyShowSize()
        //: if self.curType == .intimate {
        if self.curType == .intimate {
            //: self.manager.req_intimateData()
            self.manager.moon()
        }
        //: cconfigData(listData: data)
        effectBy(listData: data)
    }
}

// MARK: - 半屏页面展示/隐藏动画

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    /// 半屏展示动画
    //: private func half_showViewAnimation() {
    private func showPage() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_SHOW, object: nil, userInfo: nil)
        NotificationCenter.default.post(name: kLet_contentBarName, object: nil, userInfo: nil)
        //: self.view.frame = CGRect(x: 0, y: ScreenHeight-HalfViewTopMargin, width: ScreenWidth, height: ScreenHeight)
        self.view.frame = CGRect(x: 0, y: kLet_environmentClickValue - kLet_noText, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: 0,
                                     y: 0,
                                     //: width: ScreenWidth,
                                     width: kLet_senseContent,
                                     //: height: ScreenHeight)
                                     height: kLet_environmentClickValue)
        }
    }

    /// 半屏页消失动画
    //: private func half_dismissViewAnimation() {
    private func ignoreBeforeHalfView() {
        //: guard self.manager.isHalf else { return }
        guard self.manager.isHalf else { return }
        // 语聊房要提前发通知，动画效果更流畅
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if StackMThen.estimated().isParty == true {
            //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
            NotificationCenter.default.post(name: kLet_countKeyValue, object: nil, userInfo: nil)
        }
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.view.frame = CGRect(x: 0,
            self.view.frame = CGRect(x: 0,
                                     //: y: ScreenHeight-HalfViewTopMargin,
                                     y: kLet_environmentClickValue - kLet_noText,
                                     //: width: ScreenWidth,
                                     width: kLet_senseContent,
                                     //: height: ScreenHeight)
                                     height: kLet_environmentClickValue)
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromParent()
            self.removeFromParent()
            //: self.view.removeFromSuperview()
            self.view.removeFromSuperview()
            //: if TalkingVoiceRoomManager.shared().isParty == false {
            if StackMThen.estimated().isParty == false {
                //: NotificationCenter.default.post(name: LIVE_HALF_VIEW_DISMISS, object: nil, userInfo: nil)
                NotificationCenter.default.post(name: kLet_countKeyValue, object: nil, userInfo: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingChatListViewController {
extension CleanManagerDelegate {
    // MARK: - UI

    //: private func createUI() {
    private func miniUi() {
        //: if self.manager.isHalf == false {
        if self.manager.isHalf == false { // 全屏
            //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue { // 审核模式
                //: view.backgroundColor = .clear
                view.backgroundColor = .clear
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                }

                //: } else {
            } else {
                //: view.backgroundColor = .appBgColor()
                view.backgroundColor = .air()
//                view.addSubview(topItemView)
//                topItemView.snp.makeConstraints { make in
//                    make.leading.trailing.top.equalToSuperview()
//                    make.height.equalTo(50)
//                }
                //: view.addSubview(likeListView)
                view.addSubview(likeListView)
                //: likeListView.snp.makeConstraints { make in
                likeListView.snp.makeConstraints { make in
                    //: make.leading.trailing.top.equalToSuperview()
                    make.leading.trailing.top.equalToSuperview()
                    //: make.height.equalTo(0)
                    make.height.equalTo(0)
                }
                //: view.addSubview(tableView)
                view.addSubview(tableView)
                //: tableView.snp.makeConstraints { make in
                tableView.snp.makeConstraints { make in
//                    make.top.equalTo(topItemView.snp.bottom)
                    //: make.top.equalTo(likeListView.snp.bottom)
                    make.top.equalTo(likeListView.snp.bottom)
                    //: make.leading.trailing.bottom.equalToSuperview()
                    make.leading.trailing.bottom.equalToSuperview()
                }
            }

            //: } else {
        } else { // 半屏
            //: self.view.backgroundColor = .clear
            self.view.backgroundColor = .clear

            //: view.addSubview(removeCurrVBtn)
            view.addSubview(removeCurrVBtn)
            //: removeCurrVBtn.snp.makeConstraints { make in
            removeCurrVBtn.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.height.equalTo(HalfViewTopMargin)
                make.height.equalTo(kLet_noText)
            }

            //: view.addSubview(contentView)
            view.addSubview(contentView)
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(removeCurrVBtn.snp.bottom)
                make.top.equalTo(removeCurrVBtn.snp.bottom)
                //: make.leading.trailing.bottom.equalToSuperview()
                make.leading.trailing.bottom.equalToSuperview()
            }
            //: contentView.layoutIfNeeded()
            contentView.layoutIfNeeded()
            //: contentView.Corner(width: contentView.width,
            contentView.corners(width: contentView.width,
                                //: height: contentView.height,
                                height: contentView.height,
                                //: corners: [.topLeft, .topRight],
                                corners: [.topLeft, .topRight],
                                //: cornerRadii: .init(width: 8, height: 8))
                                cornerRadii: .init(width: 8, height: 8))

            //: contentView.addSubview(tableView)
            contentView.addSubview(tableView)
            //: tableView.snp.makeConstraints { make in
            tableView.snp.makeConstraints { make in
                //: make.top.leading.trailing.equalToSuperview()
                make.top.leading.trailing.equalToSuperview()
                //: make.bottom.equalTo(-kLet_appMarginText)
                make.bottom.equalTo(-kLet_appMarginText)
            }
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.addHead()
        }
    }
}
