
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_callSubmitATitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_home_v" :*/
fileprivate let str_eventData:[Character] = ["i","c","o","n","_","h","o"]
fileprivate let str_dailyName:String = "info viewme_v"

/*: "icon_lounge" :*/
fileprivate let str_actionName:[Character] = ["i","c","o","n","_","l","o"]
fileprivate let str_beginRowGiftValue:String = "ungtable"

/*: "#8A79F9" :*/
fileprivate let str_ofData:String = "#8A79Ftrue fatal perform scale mode"
fileprivate let str_originData:String = "9"

/*: "#EAE8FE" :*/
fileprivate let str_rawData:[Character] = ["#","E","A","E","8"]
fileprivate let str_timeName:[Character] = ["F","E"]

/*: "Follow each other" :*/
fileprivate let str_sexValue:String = "path view resultFollow"
fileprivate let str_whiteName:String = "opageher"

/*: "btn_message_favourite_following_nor" :*/
fileprivate let str_errorName:[UInt8] = [0xe8,0xfe,0xe4,0xd5,0xe7,0xef,0xf9,0xf9,0xeb,0xed,0xef,0xd5,0xec,0xeb,0xfc,0xe5,0xff,0xf8,0xe3,0xfe,0xef,0xd5,0xec,0xe5,0xe6,0xe6,0xe5,0xfd,0xe3,0xe4,0xed,0xd5,0xe4,0xe5,0xf8]

private func sizeMake(data num: UInt8) -> UInt8 {
    return num ^ 138
}

/*: "icon_ender_boy" :*/
fileprivate let str_rowName:String = "icon_if else quality table"
fileprivate let str_topErrorName:[Character] = ["o","y"]

/*: "icon_ender_girl" :*/
fileprivate let str_imageManagerCellTitle:String = "view var apply loadicon_e"
fileprivate let str_makeReportName:String = "_girlcorner message"

/*: "   " :*/
fileprivate let str_tempData:String = "endendend"

/*: "btn_message_favourite_follow_nor" :*/
fileprivate let str_partyData:[UInt8] = [0x67,0x71,0x6b,0x5a,0x68,0x60,0x76,0x76,0x64,0x62,0x60,0x5a,0x63,0x64,0x73,0x6a,0x70,0x77,0x6c,0x71,0x60,0x5a,0x63,0x6a,0x69,0x69,0x6a,0x72,0x5a,0x6b,0x6a,0x77]

private func titleFit(view num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "Follow" :*/
fileprivate let str_modeContent:[Character] = ["F"]
fileprivate let str_imageTitle:[Character] = ["o","l","l","o","w"]

/*: "removeAttentionUid" :*/
fileprivate let str_coinShareName:String = "image height image if promptremoveAtt"
fileprivate let str_fieldContent:String = "true show image kit currententionUid"

/*: "attentionUid" :*/
fileprivate let str_dataValue:String = "apathpathenpathi"
fileprivate let str_labelData:[Character] = ["o","n","U","i","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClewViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/14.
//

//: import UIKit
import UIKit

/// 类型
//: enum AtationType {
enum MainAtationType {
    //: case attention
    case attention // 我关注的
    //: case beLike
    case beLike // 关注我的
}

//: public protocol AttentionDelegate: NSObject {
public protocol AdministratorReactiveCompatible: NSObject {
    //: func cancelAtationSeleteIndex(_ index: IndexPath )
    func loadToIndex(_ index: IndexPath)
    //: func belikeAtationSeleteIndex(_ index: IndexPath )
    func filmInsideIndex(_ index: IndexPath)
}

//: class TalkingAttentionCell: UITableViewCell {
class ClewViewCell: UITableViewCell {
    //: var currenModel = TalkingAttentionModel()
    var currenModel = ExtraTransformable()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: AttentionDelegate?
    open weak var delegate: AdministratorReactiveCompatible?
    //: open var type: AtationType?
    open var type: MainAtationType?

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
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(iconBorder)
        self.contentView.addSubview(iconBorder)
        //: self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(nameLabel)
        //: self.contentView.addSubview(cardImg)
        self.contentView.addSubview(cardImg)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(otherLB)
        self.contentView.addSubview(otherLB)
        //: self.contentView.addSubview(RemoveBtn)
        self.contentView.addSubview(RemoveBtn)
        //: layoutSubViewsConstraints()
        tillEmptyView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_callSubmitATitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(IconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(punishClick), for: .touchUpInside)
        //: return btn
        return btn
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
        //: label.font = .liveAttention(type: .Medium, fontSize: 18)
        label.font = .liveAttention(type: .Medium, fontSize: 18)
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
        img.image = UIImage.nearCounterval(name: (String(str_eventData) + String(str_dailyName.suffix(4))))
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
        img.image = UIImage.nearCounterval(name: (String(str_actionName) + str_beginRowGiftValue.replacingOccurrences(of: "table", with: "e")))
        //: return img
        return img
        //: }()
    }()

    //: lazy var otherLB: UILabel = {
    lazy var otherLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 10)
        label.font = .liveAttention(type: .Regular, fontSize: 10)
        //: label.textColor = UIColor.init(hex: "#8A79F9")
        label.textColor = UIColor(hex: (String(str_ofData.prefix(6)) + str_originData.capitalized))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = UIColor.init(hex: "#EAE8FE")
        label.backgroundColor = UIColor(hex: (String(str_rawData) + String(str_timeName)))
        //: label.layer.cornerRadius = 8
        label.layer.cornerRadius = 8
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: label.isHidden = true
        label.isHidden = true
        //: label.text = "Follow each other".localized
        label.text = (String(str_sexValue.suffix(6)) + " each " + str_whiteName.replacingOccurrences(of: "page", with: "t")).localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var RemoveBtn: UIButton = {
    lazy var RemoveBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_message_favourite_following_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: String(bytes: str_errorName.map{sizeMake(data: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.addTarget(self, action: #selector(RemoveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dataConverterAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttentionCell {
extension ClewViewCell {
    //: func setCell(model: TalkingAttentionModel, index: IndexPath, Atype: AtationType) {
    func dismissTee(model: ExtraTransformable, index: IndexPath, Atype: MainAtationType) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: type = Atype
        type = Atype
        //: IconBtn.setUrlImage(urlStr: model.headPic ?? "")
        IconBtn.howeverFinish(urlStr: model.headPic ?? "")
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconBtn.layer.cornerRadius = 56/2
            IconBtn.layer.cornerRadius = 56 / 2
            //: IconBtn.snp.remakeConstraints { make in
            IconBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(self).offset(17)
                make.leading.equalTo(self).offset(17)
                //: make.top.equalTo(self).offset(10)
                make.top.equalTo(self).offset(10)
                //: make.width.height.equalTo(56)
                make.width.height.equalTo(56)
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
        //: if !model.isTPAuth {
        if !model.isTPAuth {
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
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_rowName.prefix(5)) + "ender_b" + String(str_topErrorName))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.nearCounterval(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_imageManagerCellTitle.suffix(6)) + "nder" + String(str_makeReportName.prefix(5)))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age!), for: .normal)
        sexBtn.setTitle("   " + String(model.age!), for: .normal)
        //: otherLB.isHidden = !model.mutualAtt!
        otherLB.isHidden = !model.mutualAtt!
        //: if type == .beLike && !model.mutualAtt! {
        if type == .beLike, !model.mutualAtt! {
            //: RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: "btn_message_favourite_follow_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: String(bytes: str_partyData.map{titleFit(view: $0)}, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("Follow".localized, for: .normal)
            RemoveBtn.setTitle((String(str_modeContent) + String(str_imageTitle)).localized, for: .normal)
            //: RemoveBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
            RemoveBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
            //: RemoveBtn.setTitleColor(.white, for: .normal)
            RemoveBtn.setTitleColor(.white, for: .normal)
            //: } else {
        } else {
            //: RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: "btn_message_favourite_following_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: String(bytes: str_errorName.map{sizeMake(data: $0)}, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("", for: .normal)
            RemoveBtn.setTitle("", for: .normal)
        }

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
                //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
                make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            }
        }
    }

    //: @objc func RemoveBtnClick() {
    @objc func dataConverterAdd() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: var isattion = false
        var isattion = false
        //: if type == .attention {
        if type == .attention {
            //: dict["removeAttentionUid"] = currenModel.uid
            dict[(String(str_coinShareName.suffix(9)) + String(str_fieldContent.suffix(9)))] = currenModel.uid
            //: isattion = false
            isattion = false
            //: } else if type == .beLike {
        } else if type == .beLike {
            //: if currenModel.mutualAtt! {
            if currenModel.mutualAtt! {
                //: dict["removeAttentionUid"] = currenModel.uid
                dict[(String(str_coinShareName.suffix(9)) + String(str_fieldContent.suffix(9)))] = currenModel.uid
                //: } else {
            } else {
                //: dict["attentionUid"] = currenModel.uid
                dict[(str_dataValue.replacingOccurrences(of: "path", with: "t") + String(str_labelData))] = currenModel.uid
            }
            //: isattion = !currenModel.mutualAtt!
            isattion = !currenModel.mutualAtt!
        }
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: BridgeReactiveCompatible.req_atationTool(isAttention: isattion, params: dict) { succeed, result, errorModel in
        BridgeReactiveCompatible.namePlayer(isAttention: isattion, params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard succeed else { return }
            guard succeed else { return }
            //: if self.type == .attention {
            if self.type == .attention {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.delegate?.cancelAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.loadToIndex(self.seleteIndex!)
                }
                //: } else if self.type == .beLike {
            } else if self.type == .beLike {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    //: self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    //: if self.currenModel.mutualAtt! {
                    if self.currenModel.mutualAtt! {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: "btn_message_favourite_following_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: String(bytes: str_errorName.map{sizeMake(data: $0)}, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("", for: .normal)
                        self.RemoveBtn.setTitle("", for: .normal)
                        //: } else {
                    } else {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: "btn_message_favourite_follow_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.nearCounterval(name: String(bytes: str_partyData.map{titleFit(view: $0)}, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("Follow".localized, for: .normal)
                        self.RemoveBtn.setTitle((String(str_modeContent) + String(str_imageTitle)).localized, for: .normal)
                        //: self.RemoveBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
                        self.RemoveBtn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
                        //: self.RemoveBtn.setTitleColor(.white, for: .normal)
                        self.RemoveBtn.setTitleColor(.white, for: .normal)
                    }
                    //: self.delegate?.belikeAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.filmInsideIndex(self.seleteIndex!)
                }
            }
        }
    }

    //: @objc func IconBtnClick() {
    @objc func punishClick() {
        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: currenModel.uid)
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: currenModel.uid)
    }
}

// MARK: - UI

//: extension TalkingAttentionCell {
extension ClewViewCell {
    //: func layoutSubViewsConstraints() {
    func tillEmptyView() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(10)
            //: make.top.equalTo(self).offset(3)
            make.top.equalTo(self).offset(3)
            //: make.width.height.equalTo(69.6)
            make.width.height.equalTo(69.6)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(15)
            make.top.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
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
            //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
        }
        //: otherLB.snp.makeConstraints { make in
        otherLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel)
            make.leading.equalTo(nameLabel)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            //: make.size.equalTo(CGSize(width: 98, height: 16))
            make.size.equalTo(CGSize(width: 98, height: 16))
        }
        //: RemoveBtn.snp.makeConstraints { make in
        RemoveBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize(width: 74, height: 30))
            make.size.equalTo(CGSize(width: 74, height: 30))
        }
    }
}
