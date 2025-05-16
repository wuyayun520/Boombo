
//: Declare String Begin

/*: s" :*/
fileprivate let str_modelTitle:String = "para"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_targetName:[UInt8] = [0x73,0x74,0x73,0x6e,0x32,0x79,0x75,0x7e,0x7f,0x68,0x20,0x33,0x3a,0x72,0x7b,0x69,0x3a,0x74,0x75,0x6e,0x3a,0x78,0x7f,0x7f,0x74,0x3a,0x73,0x77,0x6a,0x76,0x7f,0x77,0x7f,0x74,0x6e,0x7f,0x7e]

/*: "bth_live_follow_pre" :*/
fileprivate let str_labelTitle:[Character] = ["b","t","h","_","l","i","v","e","_","f","o","l","l","o","w","_","p"]
fileprivate let str_countStyleValue:String = "top"

/*: "btn_live_mini_nor" :*/
fileprivate let str_blockRowName:[Character] = ["b","t","n","_","l","i","v","e","_","m","i"]
fileprivate let str_equalContent:[Character] = ["n","i","_","n","o","r"]

/*: "#2DF2FF" :*/
fileprivate let str_coinContent:String = "#2DF2FFcrop you lab"

/*: "Live" :*/
fileprivate let str_fileContent:String = "Livestatus icon"

/*: "#FF506D" :*/
fileprivate let str_hiddenMatchTitle:String = "hidden block#FF506"
fileprivate let str_actualText:String = "task"

/*: "  :*/
fileprivate let str_startValue:[Character] = [" "]

/*: "removeAttentionUid" :*/
fileprivate let str_instanceContent:String = "playmove"
fileprivate let str_priceName:String = "nUidline self view count else"

/*: "attentionUid" :*/
fileprivate let str_backData:String = "alistlistenlist"
fileprivate let str_itemData:[Character] = ["d"]

/*: "source" :*/
fileprivate let str_sizeData:[Character] = ["s"]
fileprivate let str_viewMakePriceName:String = "ourresulte"

/*: "num" :*/
fileprivate let str_requestData:String = "nuerror"

/*: "UID: :*/
fileprivate let str_momentTitle:String = "UID:wrap self"

/*: "btn_live_closed_nor" :*/
fileprivate let str_shareData:String = "btn_true height at content"
fileprivate let str_limitValue:String = "closed_size table right"
fileprivate let str_styleBottomText:[Character] = ["n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateTopView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomTopView: UIView {
class StateTopView: UIView {
    //: weak var weakVC: TalkingBaseViewController?
    weak var weakVC: NameViewController?
    // 右侧按钮点击Block
    //: var rightBtnBlock: (() -> Void)? = nil
    var rightBtnBlock: (() -> Void)? = nil
    // 未检测出人脸时长（间隔1秒）
    //: var noFaceTime: Int = 0 {
    var noFaceTime: Int = 0 {
        //: didSet {
        didSet {
            //: if noFaceTime >= WithAdministratorAppManager.share.appConfigMode.countdown1 {
            if noFaceTime >= WithAdministratorAppManager.share.appConfigMode.countdown1 { // 展示倒计时
                //: self.liveStatusImgV.isHidden = true
                self.liveStatusImgV.isHidden = true
                //: self.countdownView.isHidden = false
                self.countdownView.isHidden = false
                //: self.countdownLab.text = "\(MAX_NOFACETIME-noFaceTime)s"
                self.countdownLab.text = "\(kLet_homeData - noFaceTime)s"
                // svga
                //: self.svgaView.isHidden = false
                self.svgaView.isHidden = false
                //: self.svgaView.refreshView(countdown: "\(MAX_NOFACETIME-noFaceTime)")
                self.svgaView.allIn(countdown: "\(kLet_homeData - noFaceTime)")
                //: } else {
            } else {
                //: self.refreshLiveStatus()
                self.doing()
            }
        }
    }

    // 主播信息
    //: private var liveModel = TalkingLiveRoomModel()
    private var liveModel = ShowHandyJSON()

    //: var onlineNunTimer: Timer?
    var onlineNunTimer: Timer? /// 直播人数刷新定时器

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        pastGesture()
        //: setupSubViewsConstraint()
        indexFace()
        //: startTimer()
        itemStart()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_targetName.map{$0^26}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var iconBgBtn: UIButton = {
    private lazy var iconBgBtn: UIButton = {
        //: let v = UIButton()
        let v = UIButton()
        //: v.backgroundColor = .black.withAlphaComponent(0.2)
        v.backgroundColor = .black.withAlphaComponent(0.2)
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.addTarget(self, action: #selector(iconBgButtonClick), for: .touchUpInside)
        v.addTarget(self, action: #selector(subTarget), for: .touchUpInside)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = actualWidth(w: 32)/2
        v.layer.cornerRadius = actualWidth(w: 32) / 2
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 11)
        lab.font = UIFont.behindUpRoom(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.white.withAlphaComponent(0.7)
        lab.textColor = UIColor.white.withAlphaComponent(0.7)
        //: lab.font = UIFont.behindUpRoom(fontSize: 11)
        lab.font = UIFont.behindUpRoom(fontSize: 11)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followBtn: UIButton = {
    private lazy var followBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setImage(UIImage.nearCounterval(name: "bth_live_follow_pre"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_labelTitle) + str_countStyleValue.replacingOccurrences(of: "top", with: "re"))), for: .normal)
        //: btn.addTarget(self, action: #selector(followButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickAgent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_blockRowName) + String(str_equalContent))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(textClick), for: .touchUpInside)
        //: btn.isHidden = (WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = (WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue && WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveStatusImgV: TalkingButton = {
    private lazy var liveStatusImgV: RoomThen = {
        //: let img = TalkingButton()
        let img = RoomThen()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.errorAtImage(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        img.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
        let image = UIImage.apply(color: UIColor(hex: (String(str_coinContent.prefix(7))))!, size: CGSize(width: 8, height: 8))
        //: img.setImage(image.smart(), for: .normal)
        img.setImage(image.smart(), for: .normal)
        //: img.setTitle("Live".localized, for: .normal)
        img.setTitle((String(str_fileContent.prefix(4))).localized, for: .normal)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var countdownView: UIView = {
    private lazy var countdownView: UIView = {
        //: let bg = UIView()
        let bg = UIView()
        //: bg.isHidden = true
        bg.isHidden = true
        //: bg.layer.cornerRadius = 4
        bg.layer.cornerRadius = 4
        //: bg.layer.masksToBounds = true
        bg.layer.masksToBounds = true
        //: bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        bg.backgroundColor = UIColor.black.withAlphaComponent(0.3)

        //: let icon = UIView()
        let icon = UIView()
        //: icon.backgroundColor = UIColor(hex: "#FF506D")
        icon.backgroundColor = UIColor(hex: (String(str_hiddenMatchTitle.suffix(6)) + str_actualText.replacingOccurrences(of: "task", with: "D")))
        //: icon.layer.cornerRadius = 3.5
        icon.layer.cornerRadius = 3.5
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: icon.layer.borderWidth = 1
        icon.layer.borderWidth = 1
        //: icon.layer.borderColor = UIColor.white.cgColor
        icon.layer.borderColor = UIColor.white.cgColor
        //: bg.addSubview(icon)
        bg.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(4)
            make.leading.equalTo(4)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 7, height: 7))
            make.size.equalTo(CGSize(width: 7, height: 7))
        }
        //: return bg
        return bg
        //: }()
    }()

    //: private lazy var countdownLab: UILabel = {
    private lazy var countdownLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.behindUpRoom(fontSize: 12)
        lab.font = UIFont.behindUpRoom(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = " \(WithAdministratorAppManager.share.appConfigMode.countdown2)s"
        lab.text = " \(WithAdministratorAppManager.share.appConfigMode.countdown2)s"
        //: countdownView.addSubview(lab)
        countdownView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var svgaView: TalkingLiveCountdownView = {
    lazy var svgaView: SectionReactiveCompatible = {
        //: let v = TalkingLiveCountdownView()
        let v = SectionReactiveCompatible()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    /// 在线人数
    //: private lazy var onlineNumBtn: UIButton = {
    private lazy var onlineNumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundColor(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        btn.backgroundBlock(color: UIColor.black.withAlphaComponent(0.25), forState: .normal)
        //: btn.addTarget(self, action: #selector(onlineNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(currentAdd), for: .touchUpInside)
        //: btn.layer.cornerRadius = actualWidth(w: 32)/2
        btn.layer.cornerRadius = actualWidth(w: 32) / 2
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var onlineListView: TalkingLiveRoomOnlineListView = {
    private lazy var onlineListView: MakeDataSource = {
        //: let v = TalkingLiveRoomOnlineListView()
        let v = MakeDataSource()
        //: v.touchIconBtnBlock = { [weak self] uid in
        v.touchIconBtnBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.showUserCard(uid: uid)
            self.ting(uid: uid)
        }
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingLiveRoomTopView {
extension StateTopView {
    /// 关注/取消关注
    /// - Parameters:
    ///   - uid: 用户Id
    ///   - isAttention: true: 取关；false: 关注
    //: @objc func req_followRequest(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
    @objc func giftApplication(uid: Int, isAttention: Bool, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            atShow(showMsg: kLet_detailMessageValue)
            //: completion?(false)
            completion?(false)
            //: return
            return
        }

        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if isAttention {
        if isAttention {
            //: dict["removeAttentionUid"] = uid
            dict[(str_instanceContent.replacingOccurrences(of: "play", with: "re") + "Attentio" + String(str_priceName.prefix(4)))] = uid
            //: } else {
        } else {
            //: dict["attentionUid"] = uid
            dict[(str_backData.replacingOccurrences(of: "list", with: "t") + "ionUi" + String(str_itemData))] = uid
            //: dict["source"] = "1"
            dict[(String(str_sizeData) + str_viewMakePriceName.replacingOccurrences(of: "result", with: "c"))] = "1"
        }
        //: BridgeReactiveCompatible.req_atationTool(isAttention: !isAttention, params: dict) { succeed, result, errorModel in
        BridgeReactiveCompatible.namePlayer(isAttention: !isAttention, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }
}

// MARK: - 在线人数

//: extension TalkingLiveRoomTopView {
extension StateTopView {
    //: @objc private func onlineNumBtnClick() {
    @objc private func currentAdd() {
        //: self.onlineListView.showView(chatGroupId: liveModel.chatGroupId)
        self.onlineListView.leftEqual(chatGroupId: liveModel.chatGroupId)
    }

    /// 获取
    //: @objc private func getOnlineNumData() {
    @objc private func someResponseData() {
        //: TalkingAudienceManager().req_liveRoomOnlineNum(chatGroupId: liveModel.chatGroupId, completion:{ succeed, result, errorModel in
        StickToAudienceManager().demonstrateUp(chatGroupId: liveModel.chatGroupId, completion: { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let num = json["num"].string
            let num = json[(str_requestData.replacingOccurrences(of: "error", with: "m"))].string
            //: guard num?.count ?? 0 > 0 else {
            guard num?.count ?? 0 > 0 else {
                //: self.onlineNumBtn.isHidden = true
                self.onlineNumBtn.isHidden = true
                //: return
                return
            }
            //: self.onlineNumBtn.setTitle(num, for: .normal)
            self.onlineNumBtn.setTitle(num, for: .normal)

            //: })
        })
    }

    //: private func startTimer() {
    private func itemStart() {
        //: stopTimer()
        timerClear()
        //: onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(getOnlineNumData), userInfo: nil, repeats: true)
        onlineNunTimer = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(someResponseData), userInfo: nil, repeats: true)
    }

    //: func stopTimer() {
    func timerClear() {
        //: onlineNunTimer?.invalidate()
        onlineNunTimer?.invalidate()
        //: onlineNunTimer = nil
        onlineNunTimer = nil
    }
}

// MARK: - Event

//: extension TalkingLiveRoomTopView {
extension StateTopView {
    /// 刷新顶部视图
    //: func refreshTopView(_ liveModel: TalkingLiveRoomModel) {
    func alteration(_ liveModel: ShowHandyJSON) {
        //: self.liveModel = liveModel
        self.liveModel = liveModel
        //: getOnlineNumData()
        someResponseData()
        //: nickNameLab.text = liveModel.streamerInfo.nickname
        nickNameLab.text = liveModel.streamerInfo.nickname
        //: uidLab.text = "UID:\(liveModel.streamerInfo.uid)"
        uidLab.text = (String(str_momentTitle.prefix(4))) + "\(liveModel.streamerInfo.uid)"
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 20)))]
        //: icon.setUrlImage(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.placeHolderImage(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        icon.commentGesture(urlStr: liveModel.streamerInfo.headPic, placeImg: UIImage.footnoteSex(sex: liveModel.streamerInfo.sex), options: optionsInfo)
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        //: if isAnchor {
        if isAnchor {
            //: refreshLiveStatus()
            doing()
            //: miniBtn.setImage(UIImage.nearCounterval(name: "btn_live_mini_nor"), for: .normal)
            miniBtn.setImage(UIImage.nearCounterval(name: (String(str_blockRowName) + String(str_equalContent))), for: .normal)
            //: refreshFollow(isAttention: true)
            makeMomentAttention(isAttention: true)
            //: } else {
        } else {
            //: miniBtn.setImage(UIImage.nearCounterval(name: "btn_live_closed_nor"), for: .normal)
            miniBtn.setImage(UIImage.nearCounterval(name: (String(str_shareData.prefix(4)) + "live_" + String(str_limitValue.prefix(7)) + String(str_styleBottomText))), for: .normal)
            //: refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            makeMomentAttention(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }

    /// 最小化/关闭直播 按钮点击事件
    //: @objc func miniButtonClick() {
    @objc func textClick() {
        //: rightBtnBlock?()
        rightBtnBlock?()
        // 是否是主播
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        //: if isAnchor {
        if isAnchor { // 改为小窗口
            //: TalkingLiveManager.shared().live_updateTXLivePreview(smallWindow: true)
            SectionPushListener.cover().telecasting(smallWindow: true)
            //: currentViewController()?.navigationController?.popViewController(animated: false)
            actionController()?.navigationController?.popViewController(animated: false)
        }
    }

    //: @objc private func iconBgButtonClick() {
    @objc private func subTarget() {
        //: showUserCard(uid: String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid))
        ting(uid: String(SectionPushListener.cover().liveRoomModel.streamerInfo.uid))
    }

    /// 展示个人资料卡
    //: private func showUserCard(uid: String) {
    private func ting(uid: String) {
        //: let userCard = TalkingLiveUserCardView(frame: .zero, uid: uid)
        let userCard = EffectSectionThen(frame: .zero, uid: uid)
        //: userCard.delegate = weakVC as? any TalkingLiveUserCardViewDelegate
        userCard.delegate = weakVC as? any OptionViewDelegate
        //: userCard.show()
        userCard.blot()
    }

    /// 刷新关注按钮
    //: private func refreshFollow(isAttention: Bool) {
    private func makeMomentAttention(isAttention: Bool) {
        //: followBtn.isHidden = isAttention
        followBtn.isHidden = isAttention
        //: iconBgBtn.snp.updateConstraints { make in
        iconBgBtn.snp.updateConstraints { make in
            //: make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115):actualWidth(w: 130))
            make.width.equalTo(followBtn.isHidden ? actualWidth(w: 115) : actualWidth(w: 130))
        }
    }

    /// 刷新直播状态
    //: private func refreshLiveStatus() {
    private func doing() {
        //: self.liveStatusImgV.isHidden = !TalkingLiveManager.shared().isLive
        self.liveStatusImgV.isHidden = !SectionPushListener.cover().isLive
        //: self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        self.countdownView.isHidden = !self.liveStatusImgV.isHidden
        //: self.svgaView.isHidden = !self.liveStatusImgV.isHidden
        self.svgaView.isHidden = !self.liveStatusImgV.isHidden
    }

    /// 关注按钮点击事件
    //: @objc private func followButtonClick() {
    @objc private func clickAgent() {
        //: req_followRequest(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
        giftApplication(uid: liveModel.streamerInfo.uid, isAttention: liveModel.streamerInfo.isAttention) { [weak self] succeed in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed else { return }
            guard succeed else { return }
            //: let isAttention = self.liveModel.streamerInfo.isAttention
            let isAttention = self.liveModel.streamerInfo.isAttention
            //: self.liveModel.streamerInfo.isAttention = !isAttention
            self.liveModel.streamerInfo.isAttention = !isAttention
            //: self.refreshFollow(isAttention: self.liveModel.streamerInfo.isAttention)
            self.makeMomentAttention(isAttention: self.liveModel.streamerInfo.isAttention)
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomTopView {
extension StateTopView {
    // 添加视图
    //: private func setupSubviews() {
    private func pastGesture() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(iconBgBtn)
        addSubview(iconBgBtn)
        //: iconBgBtn.addSubview(icon)
        iconBgBtn.addSubview(icon)
        //: iconBgBtn.addSubview(nickNameLab)
        iconBgBtn.addSubview(nickNameLab)
        //: iconBgBtn.addSubview(uidLab)
        iconBgBtn.addSubview(uidLab)
        //: iconBgBtn.addSubview(followBtn)
        iconBgBtn.addSubview(followBtn)
        //: addSubview(miniBtn)
        addSubview(miniBtn)
        //: addSubview(liveStatusImgV)
        addSubview(liveStatusImgV)
        //: addSubview(countdownView)
        addSubview(countdownView)
        //: addSubview(onlineNumBtn)
        addSubview(onlineNumBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func indexFace() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 68))
        self.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_messageContent + actualWidth(w: 68))

        //: iconBgBtn.snp.makeConstraints { make in
        iconBgBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(kLet_messageContent + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 32))
            make.height.equalTo(actualWidth(w: 32))
            //: make.width.equalTo(actualWidth(w: 115))
            make.width.equalTo(actualWidth(w: 115))
        }
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.height.equalTo(iconBgBtn.snp.height)
            make.width.height.equalTo(iconBgBtn.snp.height)
        }
        //: nickNameLab.snp.makeConstraints { make in
        nickNameLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 2))
            make.top.equalTo(actualWidth(w: 2))
            //: make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(icon.snp.trailing).offset(actualWidth(w: 7))
            //: make.width.equalTo(actualWidth(w: 65))
            make.width.equalTo(actualWidth(w: 65))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualWidth(w: 2))
            make.bottom.equalTo(-actualWidth(w: 2))
            //: make.leading.width.equalTo(nickNameLab)
            make.leading.width.equalTo(nickNameLab)
        }
        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-actualWidth(w: 6))
            make.trailing.equalTo(-actualWidth(w: 6))
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }

        //: miniBtn.snp.makeConstraints { make in
        miniBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconBgBtn)
            make.centerY.equalTo(iconBgBtn)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: onlineNumBtn.snp.makeConstraints { make in
        onlineNumBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(miniBtn)
            make.centerY.equalTo(miniBtn)
            //: make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            make.trailing.equalTo(miniBtn.snp.leading).offset(-15)
            //: make.size.equalTo(miniBtn)
            make.size.equalTo(miniBtn)
        }
        //: let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = liveStatusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.behindUpRoom(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.behindUpRoom(fontSize: 12)], context: nil)

        //: liveStatusImgV.snp.makeConstraints { make in
        liveStatusImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBgBtn)
            make.leading.equalTo(iconBgBtn)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.width.equalTo(rect.width+20)
            make.width.equalTo(rect.width + 20)
        }
        //: let countdown_w = 13.0+countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        let countdown_w = 13.0 + countdownLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 15)).width
        //: countdownView.snp.makeConstraints { make in
        countdownView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(liveStatusImgV)
            make.leading.top.equalTo(liveStatusImgV)
            //: make.size.equalTo(CGSize(width: countdown_w, height: 16))
            make.size.equalTo(CGSize(width: countdown_w, height: 16))
        }
        //: countdownLab.snp.makeConstraints { make in
        countdownLab.snp.makeConstraints { make in
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
