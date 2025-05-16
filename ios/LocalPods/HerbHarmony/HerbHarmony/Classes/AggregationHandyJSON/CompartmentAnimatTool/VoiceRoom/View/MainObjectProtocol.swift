
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "  " :*/
fileprivate let str_buttonData:String = "edgeedge"

/*: "Say something...     " :*/
fileprivate let str_targetValue:[Character] = ["S","a","y"," ","s","o","m"]
fileprivate let str_backName:String = "ethempty"
fileprivate let str_toTextLetData:[Character] = ["n","g",".",".","."," "," "," "," "," "]

/*: "party_bottom_mic_open" :*/
fileprivate let str_tapName:String = "lab unknownparty_bot"
fileprivate let str_miniPushData:String = "tom_miimage array"
fileprivate let str_actionName:[Character] = ["c","_","o","p","e","n"]

/*: "party_bottom_mic_close" :*/
fileprivate let str_objectValue:[Character] = ["p","a","r","t","y","_","b","o","t","t","o","m","_","m","i","c","_","c","l","o","s","e"]

/*: "btn_video_gift_nor" :*/
fileprivate let str_playerName:[Character] = ["b","t","n","_","v","i","d","e","o","_","g","i","f","t","_"]
fileprivate let str_cellName:[Character] = ["n","o","r"]

/*: "btn_live_sx_nor" :*/
fileprivate let str_modeBackgroundData:String = "extension name tablebtn_"
fileprivate let str_titleActualText:String = "x_nortype type content"

/*: "btn_live_sx_pre" :*/
fileprivate let str_managerTitle:[Character] = ["b","t","n","_","l","i","v","e","_","s","x"]
fileprivate let str_dataName:[Character] = ["_","p","r","e"]

/*: "#FF2348" :*/
fileprivate let str_styleGestureTitle:String = "#FF234self color sex"
fileprivate let str_userData:String = "8"

/*: "Please contact the host to turn on the mic" :*/
fileprivate let str_viewData:[UInt8] = [0x63,0x69,0x6d,0x20,0x65,0x68,0x74,0x20,0x6e,0x6f,0x20,0x6e,0x72,0x75,0x74,0x20,0x6f,0x74,0x20,0x74,0x73,0x6f,0x68,0x20,0x65,0x68,0x74,0x20,0x74,0x63,0x61,0x74,0x6e,0x6f,0x63,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: ", :*/
fileprivate let str_quoteData:[Character] = [","]

/*: "Please select an object" :*/
fileprivate let str_fromName:String = "as lab viewPlease s"
fileprivate let str_colorContent:String = "elecinterval"
fileprivate let str_fatalContent:String = "objeclock"

/*: "toUid" :*/
fileprivate let str_blockPostNextName:String = "index collection selftoUid"

/*: "giftId" :*/
fileprivate let str_ofValue:String = "giftIcell return leading return"
fileprivate let str_subjectData:String = "number"

/*: "giftNum" :*/
fileprivate let str_onValue:String = "giftNumroot make title"

/*: "roomId" :*/
fileprivate let str_rangeTitle:[Character] = ["r","o","o","m","I","d"]

/*: "pkgItemsetId" :*/
fileprivate let str_normalText:String = "class up view self viewpkgI"
fileprivate let str_changeName:String = "etIdequal next view self make"

/*: "totalMfCoin" :*/
fileprivate let str_recordValue:[Character] = ["t","o","t","a","l","M"]
fileprivate let str_contentName:String = "model byfCoin"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MainObjectProtocol.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol ManagerTalkingViewDelegate: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func makeSave()
}

//: class TalkingVoiceRoomBottomView: UIView {
class MainObjectProtocol: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: ManagerTalkingViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        upwardsSubviews()
        //: setupSubViewsConstraint()
        dismissLine()
        //: EdificeV2Listener.shared.func__addDelegate(self)
        EdificeV2Listener.shared.frameDelegate(self)
        //: refreshRedCountStatus()
        statusEqual()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_targetValue) + str_backName.replacingOccurrences(of: "empty", with: "i") + String(str_toTextLetData)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.backgroundBlock(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(infoMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_tapName.suffix(9)) + String(str_miniPushData.prefix(6)) + String(str_actionName))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_objectValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(asSameClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_playerName) + String(str_cellName))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_playerName) + String(str_cellName))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(arrayOf), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_modeBackgroundData.suffix(4)) + "live_s" + String(str_titleActualText.prefix(5)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_managerTitle) + String(str_dataName))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(totalEnable), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_styleGestureTitle.prefix(6)) + str_userData.capitalized))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MiniViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = MiniViewDelegate(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension MainObjectProtocol {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func rectangle() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = StackMThen.estimated().accumulationKey(key: StackMThen.estimated().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func controlSystem() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.keyShow()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func infoMake() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.makeSave()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func asSameClick() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = StackMThen.estimated().accumulationKey(key: StackMThen.estimated().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            StackMThen.estimated().colorPosition(type: 4, position: StackMThen.estimated().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            atShow(showMsg: String(bytes: str_viewData.reversed(), encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            StackMThen.estimated().colorPosition(type: 5, position: StackMThen.estimated().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func totalEnable() {
        //: LeadingEqualReactiveCompatible.share.func__pushToChatListVC(isHalfView: true)
        LeadingEqualReactiveCompatible.share.errorView(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func arrayOf() {
        //: func__sendGift()
        theDonation()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension MainObjectProtocol {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func theDonation(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        SumReactiveCompatible.share.dialog(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.eliteCamera(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func eliteCamera(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        actionController()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.applicationThroughSelected(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.applicationThroughSelected(allSelected: true)
        }
        //: giftView.showView()
        giftView.toponym()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: GiftSectionModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.bestowal(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func bestowal(giftModel: GiftSectionModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            atShow(showMsg: kLet_detailMessageValue)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        for (_, model) in StackMThen.estimated().imageCollectionPositions() {
            //: if model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            atShow(showMsg: (String(str_fromName.suffix(8)) + str_colorContent.replacingOccurrences(of: "interval", with: "t") + " an " + str_fatalContent.replacingOccurrences(of: "lock", with: "t")).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(str_blockPostNextName.suffix(5)))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(str_ofValue.prefix(5)) + str_subjectData.replacingOccurrences(of: "number", with: "d"))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_onValue.prefix(7)))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(str_rangeTitle))] = StackMThen.estimated().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_normalText.suffix(4)) + "tems" + String(str_changeName.prefix(4)))] = giftModel.pkgItemsetId
        }

        //: BridgeReactiveCompatible.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        BridgeReactiveCompatible.windowAdd(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.viewIn(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }
            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.constraintContainer(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.visualisationForList(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func visualisationForList(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_recordValue) + String(str_contentName.suffix(5)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_recordValue) + String(str_contentName.suffix(5)))] as! NSNumber
            //: WithAdministratorAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            WithAdministratorAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: false, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func viewIn(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard WithAdministratorAppManager.share.loginUserMode.status != 1 else {
            guard WithAdministratorAppManager.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    atShow(showMsg: errorStr)
                }
                //: return
                return
            }
            //: LeadingEqualReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            LeadingEqualReactiveCompatible.share.toParams(clickEvent: kLet_timeLicenseName, sufficient: false)
            //: giftView.dismissView()
            giftView.actionValue()

            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ModelPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            //: view.show()
            view.createShow()

            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                atShow(showMsg: errorStr)
            }
        }
    }
}

// MARK: - ToObjectProtocol【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension MainObjectProtocol: ToObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func errorNumber(count _: Int) {
        //: refreshRedCountStatus()
        statusEqual()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func statusEqual() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [EdificeV2Listener.shared.topConvList, EdificeV2Listener.shared.norConvList]
        let convLists = [EdificeV2Listener.shared.topConvList, EdificeV2Listener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension MainObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func upwardsSubviews() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func dismissLine() {
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }

        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
    }
}
