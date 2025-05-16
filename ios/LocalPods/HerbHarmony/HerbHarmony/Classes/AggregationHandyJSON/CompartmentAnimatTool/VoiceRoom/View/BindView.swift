
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#7166F9" :*/
fileprivate let str_smallText:String = "fatal"
fileprivate let str_indicatorData:String = "7166F9content time return"

/*: "party_seat_mike_close" :*/
fileprivate let str_liveTitle:[Character] = ["p","a","r","t","y","_","s","e","a","t","_"]
fileprivate let str_sizeText:String = "mike_temp app false normal to"
fileprivate let str_centerTitle:String = "cappse"

/*: "party_seat_host" :*/
fileprivate let str_ofTitle:String = "pavideoty"
fileprivate let str_errorDoinglineName:[Character] = ["_","h","o","s","t"]

/*: "#FA9D33" :*/
fileprivate let str_viewClickTitle:String = "#FA9Dcorner status"
fileprivate let str_behindContent:String = "33"

/*: "party_seat_heartvalue" :*/
fileprivate let str_voiceData:String = "paof"
fileprivate let str_styleStartKitName:String = "let container maxat_h"
fileprivate let str_resName:String = "label"

/*: "party_seat_lock" :*/
fileprivate let str_stackValue:[UInt8] = [0x1a,0xb,0x18,0x1e,0x13,0x35,0x19,0xf,0xb,0x1e,0x35,0x6,0x5,0x9,0x1]

/*: "party_seat_empty" :*/
fileprivate let str_bearValue:String = "paactual"
fileprivate let str_countData:String = "_emptymatch pair to"

/*: "99999+" :*/
fileprivate let str_halfTitle:[UInt8] = [0x2b,0x39,0x39,0x39,0x39,0x39]

/*: "Unlock" :*/
fileprivate let str_myMenuContent:[Character] = ["U","n","l","o","c"]
fileprivate let str_actionName:[Character] = ["k"]

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let str_meanManagerDeviceData:[UInt8] = [0x1,0x3d,0x30,0x75,0x26,0x30,0x34,0x21,0x75,0x3c,0x26,0x75,0x39,0x3a,0x36,0x3e,0x30,0x31,0x79,0x75,0x36,0x39,0x3c,0x36,0x3e,0x75,0x3a,0x3b,0x75,0x21,0x3d,0x30,0x75,0x30,0x38,0x25,0x21,0x2c,0x75,0x26,0x30,0x34,0x21,0x75,0x21,0x3a,0x75,0x25,0x39,0x34,0x2c]

private func timeGesture(color num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "Under mic" :*/
fileprivate let str_toData:[Character] = ["U","n","d","e","r"," ","m","i","c"]

/*: _ :*/
fileprivate let str_aspectData:String = "_"

/*: "male" :*/
fileprivate let str_makeUserContent:[UInt8] = [0x93,0x9f,0x92,0x9b]

private func sharedMaxRight(local num: UInt8) -> UInt8 {
    return num ^ 254
}

/*: "female" :*/
fileprivate let str_midTitle:String = "frangemalrange"

/*: "On mic" :*/
fileprivate let str_expressValue:String = "On micmanager visible"

/*: "Lock" :*/
fileprivate let str_videoTitle:[Character] = ["L","o","c","k"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BindView.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let kLet_scaleData = CGSize(width: (kLet_senseContent - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class BindView: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = SectionModelType()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        thenStatusAdd()
        //: setupSubViewsConstraint()
        removeWith()
        //: bindInteraction()
        bindStatus()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (str_smallText.replacingOccurrences(of: "fatal", with: "#") + String(str_indicatorData.prefix(6))))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (str_smallText.replacingOccurrences(of: "fatal", with: "#") + String(str_indicatorData.prefix(6))))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
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
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "party_seat_mike_close")
        v.image = UIImage.nearCounterval(name: (String(str_liveTitle) + String(str_sizeText.prefix(5)) + str_centerTitle.replacingOccurrences(of: "app", with: "lo")))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "party_seat_host")
        v.image = UIImage.nearCounterval(name: (str_ofTitle.replacingOccurrences(of: "video", with: "r") + "_seat" + String(str_errorDoinglineName)))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(str_viewClickTitle.prefix(5)) + str_behindContent.capitalized))
        //: lab.font = UIFont.behindUpRoom(fontSize: 9)
        lab.font = UIFont.behindUpRoom(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.unprecedented(fontSize: 12)
        lab.font = UIFont.unprecedented(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_voiceData.replacingOccurrences(of: "of", with: "rt") + "y_se" + String(str_styleStartKitName.suffix(4)) + "eartval" + str_resName.replacingOccurrences(of: "label", with: "ue"))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension BindView {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func sendFor(_ seatNumber: Int, model: SectionModelType) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: str_stackValue.map{$0^106}, encoding: .utf8)! : (str_bearValue.replacingOccurrences(of: "actual", with: "rt") + "y_seat" + String(str_countData.prefix(6)))
            //: icon.image = UIImage.nearCounterval(name: imgStr)
            icon.image = UIImage.nearCounterval(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.commentGesture(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == StackMThen.estimated().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: str_halfTitle.reversed(), encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func roomCall(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        let isAnchor = (String(StackMThen.estimated().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = SuspensionBridgeDataSource(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.titleEvent(cellTitleList: [(String(str_myMenuContent) + String(str_actionName)).localized])
                    //: vc.cancelColor = .occurrence()
                    vc.cancelColor = .occurrence()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (String(str_myMenuContent) + String(str_actionName)).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            StackMThen.estimated().addPosition(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    atShow(showMsg: String(bytes: str_meanManagerDeviceData.map{timeGesture(color: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == WithAdministratorAppManager.share.loginUid {
            if String(itemModel.uid) == WithAdministratorAppManager.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = SuspensionBridgeDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.titleEvent(cellTitleList: [(String(str_toData)).localized])
                //: vc.cancelColor = .occurrence()
                vc.cancelColor = .occurrence()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(str_toData)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        StackMThen.estimated().colorPosition(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        kLet_voiceText.quantityingTime(eventID: "\(kLet_clickName)_\(WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_makeUserContent.map{sharedMaxRight(local: $0)}, encoding: .utf8)! : (str_midTitle.replacingOccurrences(of: "range", with: "e")))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = SuspensionBridgeDataSource(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.titleEvent(cellTitleList: [(String(str_expressValue.prefix(6))).localized, (String(str_videoTitle)).localized])
                //: vc.cancelColor = .occurrence()
                vc.cancelColor = .occurrence()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(str_expressValue.prefix(6))).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if StackMThen.estimated().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            StackMThen.estimated().colorPosition(type: 3,
                                                                              //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                              position: StackMThen.estimated().partyModel.position,
                                                                              //: toPosition: position)
                                                                              toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            StackMThen.estimated().colorPosition(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            kLet_voiceText.quantityingTime(eventID: "\(kLet_userPointData)_\(WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_makeUserContent.map{sharedMaxRight(local: $0)}, encoding: .utf8)! : (str_midTitle.replacingOccurrences(of: "range", with: "e")))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(str_videoTitle)).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        StackMThen.estimated().addPosition(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if StackMThen.estimated().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    StackMThen.estimated().colorPosition(type: 3,
                                                                      //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                      position: StackMThen.estimated().partyModel.position,
                                                                      //: toPosition: position)
                                                                      toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    StackMThen.estimated().colorPosition(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    kLet_voiceText.quantityingTime(eventID: "\(kLet_userPointData)_\(WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_makeUserContent.map{sharedMaxRight(local: $0)}, encoding: .utf8)! : (str_midTitle.replacingOccurrences(of: "range", with: "e")))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension BindView {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func theText(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension BindView {
    /// 添加视图
    //: private func setupSubviews() {
    private func thenStatusAdd() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func removeWith() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func bindStatus() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(roomCall))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
