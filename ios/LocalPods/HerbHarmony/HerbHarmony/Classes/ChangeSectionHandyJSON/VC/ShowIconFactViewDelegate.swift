
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_routeData:[UInt8] = [0xb4,0xb3,0xb4,0xa9,0xf5,0xbe,0xb2,0xb9,0xb8,0xaf,0xe7,0xf4,0xfd,0xb5,0xbc,0xae,0xfd,0xb3,0xb2,0xa9,0xfd,0xbf,0xb8,0xb8,0xb3,0xfd,0xb4,0xb0,0xad,0xb1,0xb8,0xb0,0xb8,0xb3,0xa9,0xb8,0xb9]

private func letPrice(builder num: UInt8) -> UInt8 {
    return num ^ 221
}

/*: "ConcentrationView" :*/
fileprivate let str_addData:String = "self in if layerTalkin"
fileprivate let str_makeValue:String = "entRcolor value to model"
fileprivate let str_liveName:String = "model make cover model falseemCe"
fileprivate let str_gestureData:String = "file"

/*: "momentId" :*/
fileprivate let str_statusData:[UInt8] = [0x6c,0x6e,0x6c,0x64,0x6d,0x73,0x48,0x63]

fileprivate func topLabel(request num: UInt8) -> UInt8 {
    let value = Int(num) - 255
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "lastId" :*/
fileprivate let str_liveAddData:String = "lastIdreturn hidden value result"

/*: "limit" :*/
fileprivate let str_aspectName:String = "limimodel"

/*: "list" :*/
fileprivate let str_draftRangeTitle:String = "leffectt"

/*: "more>>" :*/
fileprivate let str_whiteValue:String = "more>>text bias"

/*: "Comment on success" :*/
fileprivate let str_hideName:String = "add if if trueComment"
fileprivate let str_frameText:String = "voice index on "

/*: "replyId" :*/
fileprivate let str_sizeData:String = "equal room class return ofreplyId"

/*: "type" :*/
fileprivate let str_titleActualValue:[UInt8] = [0x4d,0x40,0x49,0x5c]

private func bookWill(manager num: UInt8) -> UInt8 {
    return num ^ 57
}

/*: "comment" :*/
fileprivate let str_firstValue:String = "cototoen"
fileprivate let str_equalName:String = "T"

/*: "number" :*/
fileprivate let str_giftName:[UInt8] = [0x72,0x65,0x62,0x6d,0x75,0x6e]

/*: "Delete Post" :*/
fileprivate let str_videoValue:String = "Deletshared error selected use let"
fileprivate let str_progressText:String = "var height self manager adde Post"

/*: "id" :*/
fileprivate let str_labelText:String = "iby"

/*: "model" :*/
fileprivate let str_actionNumberData:[UInt8] = [0xf6,0xf4,0xff,0xfe,0xf7]

private func faceView(record num: UInt8) -> UInt8 {
    return num ^ 155
}

/*: "The content cannot be empty!" :*/
fileprivate let str_adWeightData:[Character] = ["T","h","e"," ","c","o","n","t","e","n","t"]
fileprivate let str_titleData:[Character] = [" ","c","a","n","n","o","t"," ","b","e"," "]
fileprivate let str_blockViewData:String = "equal returnempty!"

/*: "content" :*/
fileprivate let str_imageData:[Character] = ["c","o","n","t","e","n"]
fileprivate let str_trackValue:String = "T"

/*: "Delete" :*/
fileprivate let str_cookieName:[Character] = ["D","e","l","e","t","e"]

/*: "Delete Comment?" :*/
fileprivate let str_modeValue:[Character] = ["D","e","l","e","t","e"," ","C","o","m","m","e","n","t"]
fileprivate let str_instanceData:[Character] = ["?"]

/*: "Cancel" :*/
fileprivate let str_cellValue:String = "error viewCancel"

/*: "Reply" :*/
fileprivate let str_generalValue:String = "room let share view modelReply"

/*: "  :*/
fileprivate let str_streamValue:[Character] = [" "]

/*: "Details" :*/
fileprivate let str_nameData:String = "Detaimenu let view by"
fileprivate let str_giftBiasData:String = "lattention"

/*: "icon_moment_nor_report" :*/
fileprivate let str_labelWriteContent:[Character] = ["i","c","o","n","_","m","o","m","e"]
fileprivate let str_taskIndexData:[Character] = ["n","t","_","n","o","r","_","r","e","p","o","r","t"]

/*: "Comment" :*/
fileprivate let str_atName:String = "data else size equalCommen"
fileprivate let str_callOfValue:String = "start"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowIconFactViewDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: typealias DeletePostback = () -> Void
typealias DeletePostback = () -> Void

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentDetailVC: TalkingBaseViewController {
class ShowIconFactViewDelegate: NameViewController {
    //: var delegete: DeletePostback?
    var delegete: DeletePostback?
    //: var momentModel = TalkingMomentModel()
    var momentModel = ModelHandyJSON()
    //: var commentList = Array<TalkingCommentModel>()
    var commentList = [PopCellHandyJSON]()
    //: let inputViewHeight = 56+kLet_appMarginText
    let inputViewHeight = 56 + kLet_appMarginText
    //: var lastId  = "0"
    var lastId = "0"
    //: var limit  = 10
    var limit = 10
    //: let quickCommentReplyIndex = -100
    let quickCommentReplyIndex = -100
    /// 点击评论按钮，滑动到评论区域
    //: var toCommentView = false
    var toCommentView = false

    //: init(model: TalkingMomentModel) {
    init(model: ModelHandyJSON) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: momentModel = model
        momentModel = model
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_routeData.map{letPrice(builder: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        bottomBlock()
        //: setupSubViewsConstraint()
        card()
        //: requestMomentDetail()
        dismissTarget()
        //: requestCommentList()
        failure()
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.grouped)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.grouped)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = false
        table.showsVerticalScrollIndicator = false
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.register(TalkingCommentReplyItemCell.self, forCellReuseIdentifier: "TalkingCommentReplyItemCell")
        table.register(ConcentrationView.self, forCellReuseIdentifier: (String(str_addData.suffix(6)) + "gComm" + String(str_makeValue.prefix(4)) + "eplyIt" + String(str_liveName.suffix(4)) + str_gestureData.replacingOccurrences(of: "file", with: "ll")))

        //: return table
        return table
        //: }()
    }()

    //: lazy var commentNumberLabel: UILabel = {
    lazy var commentNumberLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 16)
        label.font = .liveAttention(type: .Medium, fontSize: 16)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: return label
        return label
        //: }()
    }()

    //: lazy var comInputView: TalkingCommentInputView = {
    lazy var comInputView: GiftThen = {
        //: let text = TalkingCommentInputView.init()
        let text = GiftThen()
        //: text.delegate = self
        text.delegate = self
        //: return text
        return text
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: .clear, forState: .normal)
        btn.backgroundBlock(color: .clear, forState: .normal)
        //: btn.addTarget( self, action: #selector(dismissClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageNeedAll), for: .touchUpInside)
        //: self.view.addSubview(btn)
        self.view.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMomentDetailVC {
extension ShowIconFactViewDelegate {
    //: func requestMomentDetail() {
    func dismissTarget() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!] = momentModel.mid

        //: TalkingMomentRequestTool.req_MomentDetail(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.expensiveness(params: dict) { succeed, result, errorModel in

            //: if succeed {
            if succeed {
                //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if var model = JSONDeserializer<ModelHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: model.isMomentDetail = true
                    model.isMomentDetail = true
                    //: model.caculateItemHeight()
                    model.collection()
                    //: self.momentModel = model
                    self.momentModel = model
                    //: self.setupMomentView()
                    self.birdSEyeViewPlayer()
                }
                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentList() {
    func failure() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["lastId"] = lastId
        dict[(String(str_liveAddData.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(str_aspectName.replacingOccurrences(of: "model", with: "t"))] = limit
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()

        //: TalkingMomentRequestTool.req_CommentList(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.giftTalk(params: dict) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(str_draftRangeTitle.replacingOccurrences(of: "effect", with: "is"))] as! [Any]

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<PopCellHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.prototypicalHeight()
                        //: var replyArray: [TalkingCommentReplyModel] = []
                        var replyArray: [ChangeSectionHandyJSON] = []
                        //: for j in 0..<model.comment.count {
                        for j in 0 ..< model.comment.count {
                            //: var replymodel = model.comment[j]
                            var replymodel = model.comment[j]
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.via()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: if model.totalReply > 3 {
                        if model.totalReply > 3 {
                            //: var replymodel = TalkingCommentReplyModel.init()
                            var replymodel = ChangeSectionHandyJSON()
                            //: replymodel.allCountContent = String(format: "more>>")
                            replymodel.allCountContent = String(format: (String(str_whiteValue.prefix(6))))
                            //: replymodel.caculateReplyItemHeight()
                            replymodel.via()
                            //: replyArray.append(replymodel)
                            replyArray.append(replymodel)
                        }
                        //: model.comment = replyArray
                        model.comment = replyArray
                        //: self.commentList.append(model)
                        self.commentList.append(model)
                    }
                }

                //: if array.count>0 {
                if array.count > 0 {
                    //: let model = self.commentList.last
                    let model = self.commentList.last
                    //: self.lastId = model?.cid ?? "0"
                    self.lastId = model?.cid ?? "0"
                    //: self.mainTableView.reloadData()
                    self.mainTableView.reloadData()
                    //: self.mainTableView.endRefresh()
                    self.mainTableView.cellIndex()
                    //: if array.count<self.limit {
                    if array.count < self.limit {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: } else {
                } else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.toCommentView {
                if self.toCommentView {
                    //: self.toCommentView = false
                    self.toCommentView = false
                    //: self.scrollToCommentView()
                    self.listEqualFuturism()
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode == 50206 {
                if errorModel?.errorCode == 50206 {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                    }
                }
            }
        }
    }

    //: func requestCommentWithParams(params: Dictionary<String, Any>, index: Int) {
    func gesture(params: [String: Any], index: Int) {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()

        //: TalkingMomentRequestTool.req_SendComment(params: params) { [self] succeed, result, errorModel in
        ManagerRequestTool.response(params: params) { [self] succeed, result, _ in

            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()

            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Comment on success".localized)
                self.successMsg(showMsg: (String(str_hideName.suffix(7)) + String(str_frameText.suffix(4)) + "success").localized)
                //: if params["replyId"] != nil {
                if params[(String(str_sizeData.suffix(7)))] != nil {
                    //: var model = TalkingCommentModel()
                    var model = PopCellHandyJSON()
                    //: if index == self.quickCommentReplyIndex {
                    if index == self.quickCommentReplyIndex {
                        //: } else {
                    } else {
                        //: model = self.commentList[index]
                        model = self.commentList[index]
                    }

                    //: if model.uid!.count > 0 {
                    if model.uid!.count > 0 {
                        //: if var replyModel = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                        if var replyModel = JSONDeserializer<ChangeSectionHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                            //: model.totalReply += 1
                            model.totalReply += 1
                            //: var array = model.comment
                            var array = model.comment
//                            if array.count>3 {
//                                array.remove(at: array.count-2)
//                            }
                            //: replyModel.caculateReplyItemHeight()
                            replyModel.via()
                            //: array.insert(replyModel, at: 0)
                            array.insert(replyModel, at: 0)

//                            if array.count>3 {
//                                array.removeLast()
//                                var tempModel = ChangeSectionHandyJSON.init()
//                                tempModel.allCountContent = String(format: "%d comments >", model.totalReply)
//                                tempModel.caculateReplyItemHeight()
//                                array.append(tempModel)
//                            }
                            //: model.comment = array
                            model.comment = array
                            //: self.commentList[index] = model
                            self.commentList[index] = model
                        }
                    }

                    //: } else {
                } else {
                    //: if var model = JSONDeserializer<TalkingCommentModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<PopCellHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: model.caculateCommentItemHeight()
                        model.prototypicalHeight()
                        //: if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                        if model.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                            //: model.headPicFrame = WithAdministratorAppManager.share.loginUserMode.headPicFrame
                            model.headPicFrame = WithAdministratorAppManager.share.loginUserMode.headPicFrame
                        }
                        //: self.commentList.insert(model, at: 0)
                        self.commentList.insert(model, at: 0)
                    }
                }
                //: self.momentModel.replyNum!  += 1
                self.momentModel.replyNum! += 1
                //: self.setupMomentView()
                self.birdSEyeViewPlayer()
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                NotificationCenter.default.post(name: kLet_appName, object: self, userInfo: [String(bytes: str_titleActualValue.map{bookWill(manager: $0)}, encoding: .utf8)!: (str_firstValue.replacingOccurrences(of: "to", with: "m") + str_equalName.lowercased()).localized, String(bytes: str_giftName.reversed(), encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!: self.momentModel.mid ?? ""])
            }
        }
    }

    /// 子评论列表
    //: func requestReplyList(cid: String, lastId: String, limit: Int, index: IndexPath) {
    func sum(cid: String, lastId: String, limit: Int, index: IndexPath) {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: ProgressHUD.dismiss()
        StandardProgressHUD.giftTo()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["replyId"] = cid
        dict[(String(str_sizeData.suffix(7)))] = cid
        //: dict["lastId"] = lastId
        dict[(String(str_liveAddData.prefix(6)))] = lastId
        //: dict["limit"] = limit
        dict[(str_aspectName.replacingOccurrences(of: "model", with: "t"))] = limit

        //: TalkingMomentRequestTool.req_CommentDetailList(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.free(params: dict) { succeed, result, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: if dict.count == 0 {
                if dict.count == 0 {
                    //: return
                    return
                }
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(str_draftRangeTitle.replacingOccurrences(of: "effect", with: "is"))] as! [Any]
                //: var cmodel = self.commentList[index.section]
                var cmodel = self.commentList[index.section]
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingCommentReplyModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<ChangeSectionHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.caculateReplyItemHeight()
                        model.via()
                        //: cmodel.comment.insert(model, at: cmodel.comment.count-1)
                        cmodel.comment.insert(model, at: cmodel.comment.count - 1)
                    }
                }
                //: if array.count == 0 {
                if array.count == 0 {
                    //: cmodel.comment.removeLast()
                    cmodel.comment.removeLast()
                }
                //: self.commentList[index.section] = cmodel
                self.commentList[index.section] = cmodel
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingMomentDetailVC {
extension ShowIconFactViewDelegate {
    //: func footerRefresh() {
    func footerPush() {
        //: if self.lastId == "0" {
        if self.lastId == "0" {
            //: return
            return
        }
        //: requestCommentList()
        failure()
    }

    //: func scrollToCommentView() {
    func listEqualFuturism() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: ScreenWidth, height: ScreenHeight-CGFloat(self.inputViewHeight)-kLet_appMarginText-kLet_likeTitle), animated: true)
            self.mainTableView.scrollRectToVisible(CGRect(x: 0, y: self.momentModel.itemHeight ?? 56, width: ScreenWidth, height: ScreenHeight - CGFloat(self.inputViewHeight) - kLet_appMarginText - kLet_likeTitle), animated: true)
        }
    }

    //: @objc func BlockBtnClick() {
    @objc func attribute() {
        //: if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = SuspensionBridgeDataSource(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete Post".localized])
            vc.titleEvent(cellTitleList: [(String(str_videoValue.prefix(5)) + String(str_progressText.suffix(6))).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] _, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: ProgressHUD.show()
                StandardProgressHUD.indexRoom()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = self.momentModel.mid
                dict["id"] = self.momentModel.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                ManagerRequestTool.equalBy(params: dict) { succeed, _, _ in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: if succeed {
                    if succeed {
                        //: self.delegete?()
                        self.delegete?()
                        //: self.navigationController?.popViewController(animated: true)
                        self.navigationController?.popViewController(animated: true)
                        //: NotificationCenter.default.post(name: DELETE_MINE_POST_NOTIFICATION, object: self, userInfo: ["model": self.momentModel])
                        NotificationCenter.default.post(name: kLet_pageTitle, object: self, userInfo: [String(bytes: str_actionNumberData.map{faceView(record: $0)}, encoding: .utf8)!: self.momentModel])
                    }
                }
            }

            //: } else {
        } else {
            //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            let reportView = SectionThen(frame: UIScreen.main.bounds, type: .reportUserType, rId: momentModel.uid ?? "")
            //: reportView.showReportViewIn(view: nil)
            reportView.format(view: nil)
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: comInputView.inputTextView.resignFirstResponder()
        comInputView.inputTextView.resignFirstResponder()
    }

    //: @objc func dismissClick() {
    @objc func imageNeedAll() {
        //: comInputView.inputTextView.text = ""
        comInputView.inputTextView.text = ""
        //: comInputView.resignkeyBoard()
        comInputView.compartmentSplit()
    }
}

// MARK: - CoverViewDelegate

//: extension TalkingMomentDetailVC: CommentInputViewDelegate {
extension ShowIconFactViewDelegate: CoverViewDelegate {
    //: func func__replyTextMsg(msgStr: String, row: IndexPath) {
    func contentRow(msgStr: String, row: IndexPath) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.atShow(showMsg: (String(str_adWeightData) + String(str_titleData) + String(str_blockViewData.suffix(6))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_imageData) + str_trackValue.lowercased())] = msgStr

        //: let model = self.commentList[row.section]
        let model = self.commentList[row.section]
        //: let replymodel = model.comment[row.row]
        let replymodel = model.comment[row.row]
        //: dict["replyId"] = replymodel.cid
        dict[(String(str_sizeData.suffix(7)))] = replymodel.cid
        //: requestCommentWithParams(params: dict, index: row.section)
        gesture(params: dict, index: row.section)
    }

    //: func func__sendTextMsg(msgStr: String, index: Int) {
    func encamp(msgStr: String, index: Int) {
        //: if msgStr.count == 0 {
        if msgStr.count == 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The content cannot be empty!".localized)
            self.atShow(showMsg: (String(str_adWeightData) + String(str_titleData) + String(str_blockViewData.suffix(6))).localized)
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = momentModel.mid
        dict[String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!] = momentModel.mid
        //: dict["content"] = msgStr
        dict[(String(str_imageData) + str_trackValue.lowercased())] = msgStr
        //: if index >= 0 {
        if index >= 0 {
            //: let model = self.commentList[index]
            let model = self.commentList[index]
            //: dict["replyId"] = model.cid
            dict[(String(str_sizeData.suffix(7)))] = model.cid
            //: } else if index == quickCommentReplyIndex {
        } else if index == quickCommentReplyIndex {}

        //: requestCommentWithParams(params: dict, index: index)
        gesture(params: dict, index: index)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func quality(heightToBottom: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: if heightToBottom>100 {
        if heightToBottom > 100 {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: self.view.frame.size.height-heightToBottom-inputViewHeight)
            backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: self.view.frame.size.height - heightToBottom - inputViewHeight)
            //: backBtn.isHidden = false
            backBtn.isHidden = false
        }
        //: else {
        else {
            //: backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            backBtn.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
            //: backBtn.isHidden = true
            backBtn.isHidden = true
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func sequence(height: CGFloat) {
        //: comInputView.snp.updateConstraints { make in
        comInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }
        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: backBtn.frame.size.height-height)
        backBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: backBtn.frame.size.height - height)
        //: backBtn.isHidden = false
        backBtn.isHidden = false
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 删除个人评论
    //: func deleteReplay(cid: String) {
    func popReplaySend(cid: String) {
        //: if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
            //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
            let vc = SuspensionBridgeDataSource(frame: self.view.frame)
            //: vc.initwithList(cellTitleList: ["Delete".localized])
            vc.titleEvent(cellTitleList: [(String(str_cookieName)).localized])

            //: vc.munuBlock = { [weak self] index, str in
            vc.munuBlock = { [weak self] index, _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.attribAlert(title: "Delete Comment?".localized, attributedMessage: NSMutableAttributedString.init(), leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized) {
                VoiceAlertShow.migration(title: (String(str_modeValue) + String(str_instanceData)).localized, attributedMessage: NSMutableAttributedString(), leftBtnTitle: (String(str_cellValue.suffix(6))).localized, rightBtnTitle: (String(str_cookieName)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()

                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: ProgressHUD.show()
                    StandardProgressHUD.indexRoom()
                    //: var dict = Dictionary<String, Any>()
                    var dict = [String: Any]()
                    //: dict["id"] = cid
                    dict["id"] = cid
                    //: TalkingMomentRequestTool.req_DeleteMomentReply(params: dict) { succeed, result, errorModel in
                    ManagerRequestTool.box(params: dict) { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        StandardProgressHUD.giftTo()
                        //: if succeed {
                        if succeed {
                            //: for (index, model) in self.commentList.enumerated() {
                            for (index, model) in self.commentList.enumerated() {
                                //: if cid == model.cid {
                                if cid == model.cid {
                                    //: self.commentList.remove(at: index)
                                    self.commentList.remove(at: index)
                                    //: break
                                    break
                                }
                            }
                            //: self.mainTableView.reloadData()
                            self.mainTableView.reloadData()
                            //: self.momentModel.replyNum!  -= 1
                            self.momentModel.replyNum! -= 1
                            //: self.setupMomentView()
                            self.birdSEyeViewPlayer()
                            //: NotificationCenter.default.post(name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: self, userInfo: ["type": "comment".localized, "number": (self.momentModel.replyNum) ?? 0, "momentId": self.momentModel.mid ?? ""])
                            NotificationCenter.default.post(name: kLet_appName, object: self, userInfo: [String(bytes: str_titleActualValue.map{bookWill(manager: $0)}, encoding: .utf8)!: (str_firstValue.replacingOccurrences(of: "to", with: "m") + str_equalName.lowercased()).localized, String(bytes: str_giftName.reversed(), encoding: .utf8)!: (self.momentModel.replyNum) ?? 0, String(bytes: str_statusData.map{topLabel(request: $0)}, encoding: .utf8)!: self.momentModel.mid ?? ""])
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingMomentDetailVC: UITableViewDelegate, UITableViewDataSource {
extension ShowIconFactViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return self.commentList.count
        return self.commentList.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: return model.comment.count
        return model.comment.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if model.comment.count == 1 {
        if model.comment.count == 1 {
            //: return replymodel.itemHeight! + 5
            return replymodel.itemHeight! + 5
        }
        //: return replymodel.itemHeight!
        return replymodel.itemHeight!
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = "TalkingCommentReplyItemCell"
        let identifier = (String(str_addData.suffix(6)) + "gComm" + String(str_makeValue.prefix(4)) + "eplyIt" + String(str_liveName.suffix(4)) + str_gestureData.replacingOccurrences(of: "file", with: "ll"))
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingCommentReplyItemCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ConcentrationView
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingCommentReplyItemCell(style: .default, reuseIdentifier: identifier)
            cell = ConcentrationView(style: .default, reuseIdentifier: identifier)
        }
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: if model.comment.count>0 {
        if model.comment.count > 0 {
            //: let replymodel = model.comment[indexPath.row]
            let replymodel = model.comment[indexPath.row]
            //: cell?.configCell(model: replymodel)
            cell?.hypothesisMake(model: replymodel)
        }
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]

        //: var height = CGFloat()
        var height = CGFloat()
        //: if (model.comment.count == 1) {
        if model.comment.count == 1 {
            //: height = replymodel.itemHeight! + 5
            height = replymodel.itemHeight! + 5
            //: } else {
        } else {
            //: height = replymodel.itemHeight!
            height = replymodel.itemHeight!
        }
        //: let tcell: TalkingCommentReplyItemCell = cell as! TalkingCommentReplyItemCell
        let tcell: ConcentrationView = cell as! ConcentrationView
        //: tcell.shearTableViewSection(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
        tcell.imageShould(cell: cell, tableView: tableView, indexPath: indexPath as NSIndexPath, radius: 6, height: height)
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.commentList[indexPath.section]
        let model = self.commentList[indexPath.section]
        //: let replymodel = model.comment[indexPath.row]
        let replymodel = model.comment[indexPath.row]
        //: if replymodel.allCountContent  == "more>>" {
        if replymodel.allCountContent == (String(str_whiteValue.prefix(6))) {
            //: let lastmodel = model.comment[model.comment.count-2]
            let lastmodel = model.comment[model.comment.count - 2]
            //: requestReplyList(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            sum(cid: model.cid!, lastId: lastmodel.cid ?? "", limit: 5, index: indexPath)
            //: } else {
        } else {
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
            self.comInputView.anKey(holder: (String(str_generalValue.suffix(5))).localized + "\(replymodel.nickname)" + ":", index: 0, row: indexPath, type: 2)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headeView: TalkingCommentItemCell = TalkingCommentItemCell.init(style: .default, reuseIdentifier: nil)
        let headeView = InfoItemCell(style: .default, reuseIdentifier: nil)
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: headeView.configCell(model: model)
        headeView.heatherMixture(model: model)
        //: headeView.commentReplyBlock = { [weak self] nickname in
        headeView.commentReplyBlock = { [weak self] nickname in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.comInputView.updatePlaceholder(holder: "Reply".localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
            self.comInputView.anKey(holder: (String(str_generalValue.suffix(5))).localized + " \(nickname)" + ":", index: section, row: IndexPath(), type: 1)
        }
        //: headeView.DeleteReplyBlock = {[weak self] cid in
        headeView.DeleteReplyBlock = { [weak self] cid in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteReplay(cid: cid)
            self.popReplaySend(cid: cid)
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: let model = self.commentList[section]
        let model = self.commentList[section]
        //: if model.comment.count == 0 {
        if model.comment.count == 0 {
            //: return model.itemHeight!-8
            return model.itemHeight! - 8
        }
        //: return model.itemHeight!
        return model.itemHeight!
    }
}

// MARK: - Layout

//: extension TalkingMomentDetailVC {
extension ShowIconFactViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func bottomBlock() {
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "Details".localized
        self.title = (String(str_nameData.prefix(5)) + str_giftBiasData.replacingOccurrences(of: "attention", with: "s")).localized

        //: let btn=UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
        //: if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
        if self.momentModel.uid == WithAdministratorAppManager.share.loginUserMode.userID {
            //: btn.setTitle("Delete".localized, for: .normal)
            btn.setTitle((String(str_cookieName)).localized, for: .normal)
            //: btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            btn.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
            //: btn.setTitleColor(.occurrence(), for: .normal)
            btn.setTitleColor(.occurrence(), for: .normal)
            //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
            btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
            //: } else {
        } else {
            //: btn.setImage(UIImage.nearCounterval(name: "icon_moment_nor_report"), for: .normal)
            btn.setImage(UIImage.nearCounterval(name: (String(str_labelWriteContent) + String(str_taskIndexData))), for: .normal)
        }
        //: btn.addTarget(self, action: #selector(BlockBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(attribute), for: .touchUpInside)
        //: let item=UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: self.view.addSubview(comInputView)
        self.view.addSubview(comInputView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func card() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(0)
            make.top.equalTo(self.view).offset(0)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            make.bottom.equalTo(self.view.snp.bottom).offset(-inputViewHeight)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: comInputView.snp.makeConstraints { make in
        comInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(inputViewHeight)
            make.height.equalTo(inputViewHeight)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func awardDrunkAct() {
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.deadlineComplection { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.footerPush()
        }
    }

    //: func setupMomentView() {
    func birdSEyeViewPlayer() {
        //: let view = UIView.init()
        let view = UIView()
        //: let cell: TalkingMomentItemCell = TalkingMomentItemCell.init(style: .default, reuseIdentifier: nil)
        let cell = ItemToThen(style: .default, reuseIdentifier: nil)
        //: cell.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: momentModel.itemHeight ?? 56 - 12 )
        cell.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: momentModel.itemHeight ?? 56 - 12)
        //: cell.initwith(isListTableCell: false)
        cell.popCell(isListTableCell: false)
        //: cell.configCell(model: momentModel)
        cell.like(model: momentModel)
        //: cell.playVideo()
        cell.equidistant()
        //: view.frame = cell.frame
        view.frame = cell.frame
        //: view.addSubview(cell)
        view.addSubview(cell)

        //: if (momentModel.replyNum! > 0) {
        if momentModel.replyNum! > 0 {
            //: commentNumberLabel.text = String(format: "Comment".localized + " \(momentModel.replyNum!)")
            commentNumberLabel.text = String(format: (String(str_atName.suffix(6)) + str_callOfValue.replacingOccurrences(of: "start", with: "t")).localized + " \(momentModel.replyNum!)")
            //: view.addSubview(commentNumberLabel)
            view.addSubview(commentNumberLabel)
            //: commentNumberLabel.snp.makeConstraints { make in
            commentNumberLabel.snp.makeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(momentModel.itemHeight!+16)
                make.top.equalTo(momentModel.itemHeight! + 16)
                //: make.size.equalTo(CGSize(width: ScreenWidth, height: 22))
                make.size.equalTo(CGSize(width: ScreenWidth, height: 22))
            }
            //: view.height = momentModel.itemHeight!+38
            view.height = momentModel.itemHeight! + 38
        }

        //: self.mainTableView.tableHeaderView = view
        self.mainTableView.tableHeaderView = view
    }
}
