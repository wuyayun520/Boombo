
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_alongEndContent:[UInt8] = [0xd0,0xd7,0xd0,0xcd,0x91,0xda,0xd6,0xdd,0xdc,0xcb,0x83,0x90,0x99,0xd1,0xd8,0xca,0x99,0xd7,0xd6,0xcd,0x99,0xdb,0xdc,0xdc,0xd7,0x99,0xd0,0xd4,0xc9,0xd5,0xdc,0xd4,0xdc,0xd7,0xcd,0xdc,0xdd]

private func giftFill(title num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "  " :*/
fileprivate let str_frameText:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let str_quantityData:String = "Say smake app live self"
fileprivate let str_arrayData:String = "intimaten"
fileprivate let str_infoValue:[Character] = ["g",".",".","."," "," "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let str_dismissValue:[Character] = ["b","t","n","_","v","i","d","e","o","_","g","i","f","t","_"]
fileprivate let str_targetData:String = "cellor"

/*: "btn_live_gd_nor" :*/
fileprivate let str_giftTitle:String = "btn_lipicture image share"

/*: "btn_live_gd_pre" :*/
fileprivate let str_titleContent:[Character] = ["b","t","n","_","l","i","v","e","_","g","d","_"]
fileprivate let str_showData:String = "prmove"

/*: "btn_live_sx_nor" :*/
fileprivate let str_socialData:[Character] = ["b","t","n","_","l","i"]
fileprivate let str_cornerText:String = "style appve_sx_nor"

/*: "btn_live_sx_pre" :*/
fileprivate let str_pendingData:String = "btn_lihidden male"
fileprivate let str_viewEqualSinceValue:[Character] = ["_","p","r","e"]

/*: "#FF2348" :*/
fileprivate let str_sContent:String = "model source to at#FF234"
fileprivate let str_reasonBottomContent:String = "fill"

/*: "btn_live_yx_nor" :*/
fileprivate let str_normalData:String = "click shared make regular importbtn_li"
fileprivate let str_nameData:[Character] = ["v","e"]
fileprivate let str_belowName:String = "object mode_yx_nor"

/*: "btn_live_yx_pre" :*/
fileprivate let str_userName:[Character] = ["b","t","n","_","l","i","v","e"]
fileprivate let str_makeLayerNearbyTitle:[Character] = ["_","y","x","_","p","r","e"]

/*: "toUid" :*/
fileprivate let str_fromCoverText:String = "jump extra lettoUid"

/*: "giftId" :*/
fileprivate let str_touchData:String = "key with vargiftId"

/*: "giftNum" :*/
fileprivate let str_toData:[Character] = ["g","i","f","t","N","u","m"]

/*: "pkgItemsetId" :*/
fileprivate let str_tableContent:String = "pkgIteany control scale"

/*: "totalMfCoin" :*/
fileprivate let str_viewValue:String = "to progress manager data typetotalMf"
fileprivate let str_nameContent:String = "Coinbubble of container of will"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BondBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol SightViewDelegate: NSObjectProtocol {
    //: func func__commentBtnClick()
    func infoClick()
}

//: class TalkingLiveRoomBottomView: UIView {
class BondBottomView: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: SightViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        sumeractionToSubviews()
        //: setupSubViewsConstraint()
        close()
        //: EdificeV2Listener.shared.func__addDelegate(self)
        EdificeV2Listener.shared.frameDelegate(self)
        //: refreshRedCountStatus()
        rbi()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_alongEndContent.map{giftFill(title: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(str_quantityData.prefix(5)) + "omet" + str_arrayData.replacingOccurrences(of: "intimate", with: "hi") + String(str_infoValue)).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(commentPath), for: .touchUpInside)
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
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_dismissValue) + str_targetData.replacingOccurrences(of: "cell", with: "n"))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_dismissValue) + str_targetData.replacingOccurrences(of: "cell", with: "n"))), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(freebeeDoing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_giftTitle.prefix(6)) + "ve_gd_nor")), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_titleContent) + str_showData.replacingOccurrences(of: "move", with: "e"))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalDesign), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_socialData) + String(str_cornerText.suffix(9)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_pendingData.prefix(6)) + "ve_sx" + String(str_viewEqualSinceValue))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(awakeView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(str_sContent.suffix(6)) + str_reasonBottomContent.replacingOccurrences(of: "fill", with: "8")))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_normalData.suffix(6)) + String(str_nameData) + String(str_belowName.suffix(7)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_userName) + String(str_makeLayerNearbyTitle))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickMedium), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MiniViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = MiniViewDelegate(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: ToInfoView = {
        //: let v = TalkingLiveRoomMoreView()
        let v = ToInfoView()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: FrankThen = {
        //: let v = TalkingLiveRoomGamesView()
        let v = FrankThen()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension BondBottomView {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func commentPath() {
        //: delegate?.func__commentBtnClick()
        delegate?.infoClick()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func freebeeDoing() {
        //: func__sendGift()
        sendFuncGift()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func awakeView() {
        //: LeadingEqualReactiveCompatible.share.func__pushToChatListVC(isHalfView: true)
        LeadingEqualReactiveCompatible.share.errorView(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func equalDesign() {
        //: moreView.showView()
        moreView.phosphoresceFeeCuttingEdge()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func clickMedium() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.selectedShow(from: .LiveRoom)
    }
}

// MARK: - ToObjectProtocol【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension BondBottomView: ToObjectProtocol {
    //: func onUnreadMsgCountChanged(count: Int) {
    func errorNumber(count _: Int) {
        //: refreshRedCountStatus()
        rbi()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func rbi() {
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

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension BondBottomView {
    //: func func__sendGift() {
    func sendFuncGift() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        SumReactiveCompatible.share.dialog(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.clear()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func clear() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        actionController()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.toponym()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: GiftSectionModelType, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.toWrite(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func toWrite(giftModel: GiftSectionModelType, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            atShow(showMsg: kLet_detailMessageValue)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(str_fromCoverText.suffix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(str_touchData.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(str_toData))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(str_tableContent.prefix(6)) + "msetId")] = giftModel.pkgItemsetId
        }

        //: BridgeReactiveCompatible.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        BridgeReactiveCompatible.moveWithoutCompletion(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.analogDigitalConverterCall(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.atExtral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func atExtral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(str_viewValue.suffix(7)) + String(str_nameContent.prefix(4)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(str_viewValue.suffix(7)) + String(str_nameContent.prefix(4)))] as! NSNumber
            //: WithAdministratorAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            WithAdministratorAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: false, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func analogDigitalConverterCall(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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
            let view = ModelPopView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
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

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension BondBottomView {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func modelEqual(_ liveModel: ShowHandyJSON) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue,
        if WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func sumeractionToSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func close() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
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

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
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
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
