
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_requestValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Followers" :*/
fileprivate let str_unprecedentedData:[Character] = ["F","o","l"]
fileprivate let str_dismissFormatValue:[Character] = ["l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let str_pathData:[Character] = ["F","o","l","l","o"]
fileprivate let str_managerViewTitle:String = "WING"

/*: "#E6E6E6" :*/
fileprivate let str_upValue:String = "#E6E6E6false info let return for"

/*: "btn_message_more" :*/
fileprivate let str_frameName:String = "data view sizebtn_"
fileprivate let str_dataValue:[Character] = ["e","_","m","o","r","e"]

/*: "UID:  :*/
fileprivate let str_exploreData:[Character] = ["U","I","D",":"," "]

/*: "level_ :*/
fileprivate let str_modelContent:[Character] = ["l","e","v","e","l","_"]

/*: "Follow" :*/
fileprivate let str_kitText:[Character] = ["F"]
fileprivate let str_pathValue:[Character] = ["o","l","l","o","w"]

/*: "Chat" :*/
fileprivate let str_fatalData:[Character] = ["C","h","a","t"]

/*: "attentionUid" :*/
fileprivate let str_callReloadName:String = "attpointt"
fileprivate let str_colorMakeValue:[Character] = ["i","o","n","U","i","d"]

/*: "source" :*/
fileprivate let str_backContent:String = "sourapp"

/*: "Report" :*/
fileprivate let str_needTitle:String = "Reportself user in"

/*: "Block" :*/
fileprivate let str_makeValue:[Character] = ["B","l","o","c","k"]

/*: "Muted" :*/
fileprivate let str_labText:String = "Mutedcase record game guard"

/*: "Mute" :*/
fileprivate let str_offTitle:String = "button main cell equal forMute"

/*: "#F6F6F6" :*/
fileprivate let str_botContent:String = "at view size size#F6F6F6"

/*: "Cancel" :*/
fileprivate let str_indexData:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_kitModelTitle:String = "Oenter"

/*: "Kicked out of the live room" :*/
fileprivate let str_controlName:[Character] = ["K","i","c","k","e","d"," ","o"]
fileprivate let str_addLayerValue:String = "U"
fileprivate let str_cornerCenterName:String = "share titlet of t"
fileprivate let str_fitValue:String = "ive roomcolor error manager index let"

/*: "uid" :*/
fileprivate let str_objectData:[UInt8] = [0xb1,0xa5,0xa0]

fileprivate func windowView(list num: UInt8) -> UInt8 {
    let value = Int(num) + 196
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Shielding Success" :*/
fileprivate let str_cloudValue:[Character] = ["S","h","i","e","l","d","i","n","g"," ","S","u","c","c","e","s","s"]

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let str_behindName:[UInt8] = [0x5b,0x68,0x7f,0x3a,0x63,0x75,0x6f,0x3a,0x69,0x6f,0x68,0x7f,0x3a,0x63,0x75,0x6f,0x3a,0x6d,0x7b,0x74,0x6e,0x3a,0x6e,0x75,0x3a,0x79,0x7b,0x74,0x79,0x7f,0x76,0x3a,0x6e,0x72,0x7f,0x3a,0x77,0x6f,0x6e,0x7f,0x25]

private func userName(all num: UInt8) -> UInt8 {
    return num ^ 26
}

/*: "Confirm" :*/
fileprivate let str_indexValue:[Character] = ["C","o","n","f","i","r","m"]

/*: "The mute has been lifted~" :*/
fileprivate let str_maxMenuName:String = "The mublock back"
fileprivate let str_sharedContent:String = "live view true top bee"
fileprivate let str_countryData:String = "name cell height false infted~"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EffectSectionThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum TentPriorityTarget: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol OptionViewDelegate: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func koine(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class EffectSectionThen: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: TentPriorityTarget?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(SectionPushListener.cover().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = SectionPushListener.cover().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = MModelType()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: OptionViewDelegate?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == WithAdministratorAppManager.share.loginUserMode.userID {
        if uid == WithAdministratorAppManager.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        disco()
        //: setupSubViewsConstraint()
        listenerConstraint()
        //: reqUserCardInfo()
        database()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_requestValue.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 12)
        label.font = .liveAttention(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.inexpensiveness()
        label.textColor = UIColor.inexpensiveness()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(indexOf), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 15)
        label.font = .liveAttention(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.occurrence()
        label.textColor = UIColor.occurrence()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 13)
        label.font = .liveAttention(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.inexpensiveness()
        label.textColor = UIColor.inexpensiveness()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .inexpensiveness()
        lab.textColor = .inexpensiveness()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(str_unprecedentedData) + String(str_dismissFormatValue)).localized
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .inexpensiveness()
        lab.textColor = .inexpensiveness()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(str_pathData) + str_managerViewTitle.lowercased()).localized
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (String(str_upValue.prefix(7))))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.nearCounterval(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_frameName.suffix(4)) + "messag" + String(str_dataValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(betweenClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: FromThen = {
        //: let v = TalkingLiveRoomMuteView()
        let v = FromThen()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension EffectSectionThen {
    //: func reqUserCardInfo() {
    func database() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        SectionPushListener.showCompletion(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<MModelType>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.portion()
            }
        }
    }

    //: func setUserCardData() {
    func portion() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = (String(str_exploreData)) + "\(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.howeverFinish(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.nearCounterval(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.nearCounterval(name: (String(str_modelContent)) + "\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            cuttingEdgeSex(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func cuttingEdgeSex(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if WithAdministratorAppManager.share.loginUserMode.sex == sex {
        if WithAdministratorAppManager.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = [(String(str_kitText) + String(str_pathValue)), "@", (String(str_fatalData))]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.alright(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.alright(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
            btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(accountingDataSender(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (String(str_upValue.prefix(7))))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func accountingDataSender(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if WithAdministratorAppManager.share.loginUserMode.sex == self.userModel.sex {
        if WithAdministratorAppManager.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.koine(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.nameDismiss()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.koine(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.nameDismiss()
                //: break
                //: case 1:
                case 1:
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.nameDismiss()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    titleCellSender(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.koine(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.nameDismiss()
                //: break
                //: case 2:
                case 2:
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.nameDismiss()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func titleCellSender(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        nameFollow(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func nameFollow(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(str_callReloadName.replacingOccurrences(of: "point", with: "en") + String(str_colorMakeValue))] = uid
        //: dict["source"] = "1"
        dict[(str_backContent.replacingOccurrences(of: "app", with: "ce"))] = "1"
        //: BridgeReactiveCompatible.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        BridgeReactiveCompatible.namePlayer(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func indexOf() {
        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: self.userModel.uid)
        //: self.dismiss()
        self.nameDismiss()
    }
}

//: extension TalkingLiveUserCardView {
extension EffectSectionThen {
    //: @objc func moreBtnClick() {
    @objc func betweenClick() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = [(String(str_needTitle.prefix(6))).localized, (String(str_makeValue)).localized]
        /// 主播
        //: if liveUserId == WithAdministratorAppManager.share.loginUserMode.userID {
        if liveUserId == WithAdministratorAppManager.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append((String(str_labText.prefix(5))).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append((String(str_offTitle.suffix(4))).localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.ConfigManager.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = BringHomeDataSource.stopAdd(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (String(str_botContent.suffix(7))))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func blot() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? IconThen.getWindow())
        popView?.inwards(view: self.actionController()?.view ?? IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func nameDismiss() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension EffectSectionThen: IconChangeViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func postPush(index: Int, title: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = SectionThen(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.format(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            VoiceAlertShow.enablelineMedium(title: nil, message: kLet_pathText, leftBtnTitle: (String(str_indexData)).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                VoiceAlertShow.bias()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                VoiceAlertShow.bias()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                UnambiguousThen.custom(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: if self.liveUserId == WithAdministratorAppManager.share.loginUserMode.userID {
                        if self.liveUserId == WithAdministratorAppManager.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(str_controlName) + str_addLayerValue.lowercased() + String(str_cornerCenterName.suffix(6)) + "he l" + String(str_fitValue.prefix(8))).localized
                            //: ProgressHUD.toast(toastStr)
                            StandardProgressHUD.slot(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: kLet_barContent,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: [String(bytes: str_objectData.map{windowView(list: $0)}, encoding: .utf8)!: self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (String(str_cloudValue)).localized
                            //: ProgressHUD.toast(toastStr)
                            StandardProgressHUD.slot(toastStr)
                        }
                        //: self.dismiss()
                        self.nameDismiss()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                VoiceAlertShow.enablelineMedium(title: nil, message: String(bytes: str_behindName.map{userName(all: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_indexData)).localized, rightBtnTitle: (String(str_indexValue)).localized) {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: ProgressHUD.show()
                    StandardProgressHUD.indexRoom()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    StickToAudienceManager().remote(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: ProgressHUD.dismiss()
                        StandardProgressHUD.giftTo()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.successMsg(showMsg: (String(str_maxMenuName.prefix(6)) + "te has" + String(str_sharedContent.suffix(4)) + "n li" + String(str_countryData.suffix(5))).localized)
                        }
                        //: self.dismiss()
                        self.nameDismiss()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.asQueryedView()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.nameDismiss()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension EffectSectionThen {
    // 添加视图
    //: private func setupSubviews() {
    private func disco() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func listenerConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(kLet_senseContent / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-kLet_senseContent / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(kLet_senseContent / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.actionController()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.actionController()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.nameDismiss()
        }
    }
}
