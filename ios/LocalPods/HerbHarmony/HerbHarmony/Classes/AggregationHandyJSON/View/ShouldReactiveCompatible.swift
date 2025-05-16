
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_quitAreaAsData:[UInt8] = [0xab,0xac,0xab,0xb6,0xea,0xa1,0xad,0xa6,0xa7,0xb0,0xf8,0xeb,0xe2,0xaa,0xa3,0xb1,0xe2,0xac,0xad,0xb6,0xe2,0xa0,0xa7,0xa7,0xac,0xe2,0xab,0xaf,0xb2,0xae,0xa7,0xaf,0xa7,0xac,0xb6,0xa7,0xa6]

private func modelCellEqual(style num: UInt8) -> UInt8 {
    return num ^ 194
}

/*: "icon_home_v" :*/
fileprivate let str_colorObserverValue:String = "withco"
fileprivate let str_rootValue:String = "n_home_vif with"

/*: "icon_lounge" :*/
fileprivate let str_displaySexValueTitle:String = "visible titleicon_"
fileprivate let str_titleContent:[Character] = ["l"]
fileprivate let str_viewShareData:String = "oudetaile"

/*: "icon_jianbian_back" :*/
fileprivate let str_intervalText:String = "isecondon"
fileprivate let str_requestData:[Character] = ["n","_","b","a","c","k"]

/*: "Like&Chat" :*/
fileprivate let str_allowColorData:[Character] = ["L","i","k","e","&","C","h","a","t"]

/*: "#EFEDFF" :*/
fileprivate let str_adjustFemaleName:String = "#EFEDFFcontent player"

/*: "Quick Greeting" :*/
fileprivate let str_interactionText:[Character] = ["Q","u","i","c","k"," ","G","r","e","e","t","i","n","g"]

/*: "Nope" :*/
fileprivate let str_numberData:[Character] = ["N","o","p","e"]

/*: "icon_ender_boy" :*/
fileprivate let str_liveText:[Character] = ["i","c","o","n","_","e","n","d","e","r","_","b","o","y"]

/*: "icon_ender_girl" :*/
fileprivate let str_wrapTitle:[Character] = ["i","c","o","n"]
fileprivate let str_equalATitle:String = "type name object selection source_ende"

/*: "   " :*/
fileprivate let str_whoMakeIndexValue:String = "lablablab"

/*: "crushId" :*/
fileprivate let str_removeText:String = "self push deadlinecrushId"

/*: "her" :*/
fileprivate let str_areaManagerData:String = "heequal"

/*: "him" :*/
fileprivate let str_actionData:String = "hmodelm"

/*: "content" :*/
fileprivate let str_inputName:String = "ctitlete"
fileprivate let str_alwaysValue:String = "image"

/*: "Why don't you say hello to %@?" :*/
fileprivate let str_keySexTitle:[Character] = ["W","h","y"," ","d","o","n"]
fileprivate let str_headText:String = "\'t y"
fileprivate let str_naturalTitle:String = "y hellimage title"
fileprivate let str_frameTitle:[Character] = ["o"," ","t","o"," ","%","@","?"]

/*: "msgType" :*/
fileprivate let str_snapWithSucceedText:[Character] = ["m","s","g","T","y","p","e"]

/*: "txt" :*/
fileprivate let str_mName:String = "tsize"

/*: "msg" :*/
fileprivate let str_effectValue:[UInt8] = [0x6f,0x71,0x65]

private func groupBubble(at num: UInt8) -> UInt8 {
    return num ^ 2
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: public protocol WhoLikeDelegate: NSObject {
public protocol PreferConditionLikeDelegate: NSObject {
    //: func quickGreetingSeleteIndex(_ index: IndexPath )
    func tapIndex(_ index: IndexPath)
    //: func likeSeleteIndex(_ index: IndexPath )
    func mentionIndex(_ index: IndexPath)
}

//: class TalkingWhoLikeCell: UITableViewCell {
class ShouldReactiveCompatible: UITableViewCell {
    //: var currenModel = TalkingWhoLikeMeModel()
    var currenModel = WhoMeModel()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: PreferConditionLikeDelegate?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(IconImageV)
        backView.addSubview(IconImageV)
        //: backView.addSubview(iconBorder)
        backView.addSubview(iconBorder)
        //: backView.addSubview(nameLabel)
        backView.addSubview(nameLabel)
        //: backView.addSubview(cardImg)
        backView.addSubview(cardImg)
        //: backView.addSubview(sexBtn)
        backView.addSubview(sexBtn)
        //: backView.addSubview(loungeImgV)
        backView.addSubview(loungeImgV)
        //: backView.addSubview(timeLabel)
        backView.addSubview(timeLabel)
        //: backView.addSubview(messageLabel)
        backView.addSubview(messageLabel)
        //: backView.addSubview(quickGreetingBtn)
        backView.addSubview(quickGreetingBtn)
        //: backView.addSubview(chatBtn)
        backView.addSubview(chatBtn)
        //: layoutSubViewsConstraints()
        fillIn()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_quitAreaAsData.map{modelCellEqual(style: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 4
        view.layer.shadowRadius = 4
        //: view.layer.cornerRadius = 9
        view.layer.cornerRadius = 9
        //: return view
        return view
        //: }()
    }()

    //: lazy var IconImageV: UIImageView = {
    lazy var IconImageV: UIImageView = {
        //: let imageV = UIImageView.init()
        let imageV = UIImageView()
        //: imageV.layer.cornerRadius = 40/2
        imageV.layer.cornerRadius = 40 / 2
        //: imageV.layer.masksToBounds = true
        imageV.layer.masksToBounds = true
        //: imageV.contentMode = .scaleAspectFill
        imageV.contentMode = .scaleAspectFill
        //: return imageV
        return imageV
        //: }()
    }()

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
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

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_home_v")
        img.image = UIImage.nearCounterval(name: (str_colorObserverValue.replacingOccurrences(of: "with", with: "i") + String(str_rootValue.prefix(8))))
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 10)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_lounge")
        img.image = UIImage.nearCounterval(name: (String(str_displaySexValueTitle.suffix(5)) + String(str_titleContent) + str_viewShareData.replacingOccurrences(of: "detail", with: "ng")))
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 14)
        label.font = .liveAttention(type: .Medium, fontSize: 14)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: return label
        return label
        //: }()
    }()

    //: lazy var chatBtn: UIButton = {
    lazy var chatBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "icon_jianbian_back"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (str_intervalText.replacingOccurrences(of: "second", with: "c") + "_jianbia" + String(str_requestData))), for: .normal)
        //: btn.setTitle(" " + "Like&Chat".localized + " ", for: .normal)
        btn.setTitle(" " + (String(str_allowColorData)).localized + " ", for: .normal)
        //: btn.addTarget(self, action: #selector(ChatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalInfo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var quickGreetingBtn: UIButton = {
    lazy var quickGreetingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.alright(), for: .normal)
        btn.setTitleColor(UIColor.alright(), for: .normal)
        //: btn.layer.cornerRadius = 37/2
        btn.layer.cornerRadius = 37 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .normal)
        btn.backgroundBlock(color: UIColor(hex: (String(str_adjustFemaleName.prefix(7))))!, forState: .normal)
        //: btn.addTarget(self, action: #selector(quickGreetingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapColor), for: .touchUpInside)
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue { // 女性
            //: btn.setTitle("Quick Greeting".localized, for: .normal)
            btn.setTitle((String(str_interactionText)).localized, for: .normal)
            //: } else {
        } else {
            //: btn.setTitle("Nope".localized, for: .normal)
            btn.setTitle((String(str_numberData)).localized, for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var messageLabel: UILabel = {
    lazy var messageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 16)
        label.font = .liveAttention(type: .Medium, fontSize: 16)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingWhoLikeCell {
extension ShouldReactiveCompatible {
    //: func setCell(model: TalkingWhoLikeMeModel, index: IndexPath) {
    func camera(model: WhoMeModel, index: IndexPath) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: IconImageV.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.placeHolderImage(sex: String(model.sex ?? 1 )))
        IconImageV.commentGesture(urlStr: model.headPic ?? "", placeImg: UIImage.footnoteSex(sex: String(model.sex ?? 1)))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconImageV.snp.remakeConstraints { make in
            IconImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(backView).offset(12)
                make.leading.equalTo(backView).offset(12)
                //: make.top.equalTo(backView).offset(12)
                make.top.equalTo(backView).offset(12)
                //: make.width.height.equalTo(36)
                make.width.height.equalTo(36)
            }
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.torso(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.occurrence()
        nameLabel.textColor = model.loungePlus ? .insert() : .occurrence()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: if !(model.isTPAuth ?? false) {
        if !(model.isTPAuth ?? false) {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.nearCounterval(name: "icon_ender_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_liveText))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.nearCounterval(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_wrapTitle) + String(str_equalATitle.suffix(5)) + "r_girl")), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        //: timeLabel.text = model.timeFormat
        timeLabel.text = model.timeFormat
        //: messageLabel.text = model.message
        messageLabel.text = model.message

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(nameLabel)
                make.centerY.equalTo(nameLabel)
                //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
                make.trailing.lessThanOrEqualToSuperview().offset(-10)
            }
        }
    }

    /// quick Greeting 按钮点击事件（女性）
    //: @objc func quickGreetingBtnClick() {
    @objc func snapColor() {
        //: let dict: [String: Any] = ["crushId": currenModel.likeId ?? ""]
        let dict: [String: Any] = [(String(str_removeText.suffix(7))): currenModel.likeId ?? ""]
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue { // 女性
            //: TalkingPrivateChatManager.chat_sendQuickGreeting(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
            HandleThen.digitiserShared(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
                //: if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) {
                if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) { // 跳转私聊，发送一键打招呼
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.currenModel.uid) { vc in
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: self.currenModel.uid) { vc in
                        //: vc.quickGreetingTextDict = textDict
                        vc.quickGreetingTextDict = textDict
                        //: vc.quickGreetingAudioDict = audioDict
                        vc.quickGreetingAudioDict = audioDict
                    }
                    //: } else {
                } else {
                    //: if errorMsg?.count ?? 0 > 0 {
                    if errorMsg?.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                        self.atShow(showMsg: errorMsg!)
                    }
                    //: if errorCode == 2 { return }
                    if errorCode == 2 { return }
                }

                // 删除当前cell
                //: BridgeReactiveCompatible.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
                BridgeReactiveCompatible.notAdd(params: dict) { succeed, _, _ in
                    //: if succeed {
                    if succeed {
                        //: if self.delegate != nil {
                        if self.delegate != nil {
                            //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                            self.delegate?.tapIndex(self.seleteIndex!)
                        }
                    }
                }
            }

            //: } else {
        } else { // 男性只有删除
            //: BridgeReactiveCompatible.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
            BridgeReactiveCompatible.notAdd(params: dict) { succeed, _, _ in
                //: if succeed {
                if succeed {
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                        self.delegate?.tapIndex(self.seleteIndex!)
                    }
                }
            }
        }
    }

    /// Like&Chat 按钮点击事件
    //: @objc func ChatBtnClick() {
    @objc func equalInfo() {
        //: if currenModel.status == 0 {
        if currenModel.status == 0 {
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: currenModel.uid)
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: currenModel.uid)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["crushId"] = currenModel.likeId
            dict[(String(str_removeText.suffix(7)))] = currenModel.likeId
            //: ProgressHUD.show()
            StandardProgressHUD.indexRoom()
            //: BridgeReactiveCompatible.req_whoLikeMelike(params: dict) { succeed, result, errorModel in
            BridgeReactiveCompatible.acceptAll(params: dict) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.currenModel.status = 1
                    self.currenModel.status = 1
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.likeSeleteIndex(self.seleteIndex!)
                        self.delegate?.mentionIndex(self.seleteIndex!)
                    }
                }
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: var msgInfo = Dictionary<String, Any>()
                var msgInfo = [String: Any]()
                //: let gender = self.currenModel.sex == Int(Gender.female.rawValue) ? "her".localized:"him".localized
                let gender = self.currenModel.sex == Int(MiniSubqueryConvertible.female.rawValue) ? (str_areaManagerData.replacingOccurrences(of: "equal", with: "r")).localized : (str_actionData.replacingOccurrences(of: "model", with: "i")).localized
                //: msgInfo["content"] = "Why don't you say hello to %@?".localizedArguments(gender)
                msgInfo[(str_inputName.replacingOccurrences(of: "title", with: "on") + str_alwaysValue.replacingOccurrences(of: "image", with: "nt"))] = (String(str_keySexTitle) + str_headText + "ou sa" + String(str_naturalTitle.prefix(6)) + String(str_frameTitle)).localizedArguments(gender)
                //: msgInfo["msgType"] = "txt"
                msgInfo[(String(str_snapWithSucceedText))] = (str_mName.replacingOccurrences(of: "size", with: "xt"))

                //: let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                let message = TUISocialChatManager.insertTXMessageModel(withExtral: msgInfo,
                                                                        //: toUid: self.currenModel.uid,
                                                                        toUid: self.currenModel.uid,
                                                                        //: isSender: true,
                                                                        isSender: true,
                                                                        //: isTip: true)
                                                                        isTip: true)
                //: NotificationCenter.default.post(name: CHAT_TIPS_TEXT_NOTIFICATION, object: self, userInfo: ["msg": message])
                NotificationCenter.default.post(name: kLet_managerPlayName, object: self, userInfo: [String(bytes: str_effectValue.map{groupBubble(at: $0)}, encoding: .utf8)!: message])
            }
        }
    }
}

// MARK: - UI

//: extension TalkingWhoLikeCell {
extension ShouldReactiveCompatible {
    //: func layoutSubViewsConstraints() {
    func fillIn() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }
        //: IconImageV.snp.makeConstraints { make in
        IconImageV.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.top.equalTo(backView).offset(10)
            make.top.equalTo(backView).offset(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(7)
            make.leading.equalTo(backView).offset(7)
            //: make.top.equalTo(backView).offset(7)
            make.top.equalTo(backView).offset(7)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(IconImageV.snp.top)
            make.top.equalTo(IconImageV.snp.top)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(3)
            make.leading.equalTo(cardImg.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
            make.trailing.lessThanOrEqualToSuperview().offset(-10)
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(2)
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
        }
        //: messageLabel.snp.makeConstraints { make in
        messageLabel.snp.makeConstraints { make in
            //: make.top.equalTo(IconImageV.snp.bottom).offset(10)
            make.top.equalTo(IconImageV.snp.bottom).offset(10)
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
        }

        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLabel.snp.bottom).offset(10)
            make.top.equalTo(messageLabel.snp.bottom).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-10)
            make.bottom.equalTo(backView.snp.bottom).offset(-10)
        }
        //: quickGreetingBtn.snp.makeConstraints { make in
        quickGreetingBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(chatBtn)
            make.centerY.equalTo(chatBtn)
            //: make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.width.equalTo((WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue) ? 148:76)
            make.width.equalTo((WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue) ? 148 : 76)
        }
    }
}
