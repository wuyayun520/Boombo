
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftName:[UInt8] = [0x28,0x2f,0x28,0x35,0x69,0x22,0x2e,0x25,0x24,0x33,0x7b,0x68,0x61,0x29,0x20,0x32,0x61,0x2f,0x2e,0x35,0x61,0x23,0x24,0x24,0x2f,0x61,0x28,0x2c,0x31,0x2d,0x24,0x2c,0x24,0x2f,0x35,0x24,0x25]

private func backColor(value num: UInt8) -> UInt8 {
    return num ^ 65
}

/*: "icon_ziliao_id_default" :*/
fileprivate let str_streamName:String = "icon_zilself primary view true finish"
fileprivate let str_makeName:[Character] = ["i","a","o","_","i","d"]
fileprivate let str_stopData:[Character] = ["_","d","e","f","a","u","l","t"]

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let str_sizeData:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","x","i"]
fileprivate let str_cellImageRefuseData:String = "ngzubutton"

/*: "icon_ziliao_qianming_default" :*/
fileprivate let str_tableNumberData:[Character] = ["i","c","o","n","_","z","i","l","i","a","o","_","q","i","a","n","m","i","n","g","_","d","e","f","a","u","l","t"]

/*: "btn_me_copy" :*/
fileprivate let str_equalActualContent:String = "device layer model title indexbtn_m"
fileprivate let str_toData:[Character] = ["p","y"]

/*: "icon_data_man" :*/
fileprivate let str_partyContent:[Character] = ["i","c","o","n","_","d","a","t","a","_"]
fileprivate let str_messageData:String = "mpushn"

/*: "icon_data_position" :*/
fileprivate let str_sizeContent:[Character] = ["i","c","o","n","_","d","a","t","a","_","p","o","s","i","t","i"]
fileprivate let str_borderName:[Character] = ["o","n"]

/*: "UID Copied" :*/
fileprivate let str_insertText:[Character] = ["U","I","D"," ","C","o","p","i","e","d"]

/*: "icon_data_woman" :*/
fileprivate let str_frameData:[UInt8] = [0x11,0x1b,0x17,0x16,0x27,0x1c,0x19,0xc,0x19,0x27,0xf,0x17,0x15,0x19,0x16]

private func succeedGift(limit num: UInt8) -> UInt8 {
    return num ^ 120
}

/*: "  :*/
fileprivate let str_makeTitle:String = "head"

/*: "666666" :*/
fileprivate let str_liveData:String = "leadingleadingleading"

/*: "No personal signature was completed" :*/
fileprivate let str_atPathValue:[UInt8] = [0xe3,0xc2,0x8d,0xdd,0xc8,0xdf,0xde,0xc2,0xc3,0xcc,0xc1,0x8d,0xde,0xc4,0xca,0xc3,0xcc,0xd9,0xd8,0xdf,0xc8,0x8d,0xda,0xcc,0xde,0x8d,0xce,0xc2,0xc0,0xdd,0xc1,0xc8,0xd9,0xc8,0xc9]

private func ptolemaicSystem(lab num: UInt8) -> UInt8 {
    return num ^ 173
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class TalkingViewCell: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.headContent()
        //: self.setupSubViewsConstraint()
        self.bar()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftName.map{backColor(value: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "icon_ziliao_id_default")
        imgV.image = UIImage.nearCounterval(name: (String(str_streamName.prefix(8)) + String(str_makeName) + String(str_stopData)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.nearCounterval(name: (String(str_sizeData) + str_cellImageRefuseData.replacingOccurrences(of: "button", with: "o") + "_default"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.nearCounterval(name: (String(str_tableNumberData)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_equalActualContent.suffix(5)) + "e_co" + String(str_toData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "icon_data_man")
        imgV.image = UIImage.nearCounterval(name: (String(str_partyContent) + str_messageData.replacingOccurrences(of: "push", with: "a")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: RoomThen = {
        //: let btn = TalkingButton(type: .custom)
        let btn = RoomThen(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.nearCounterval(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_sizeContent) + String(str_borderName))), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.titleLabel?.font = UIFont.unprecedented(fontSize: 15)
        btn.titleLabel?.font = UIFont.unprecedented(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension TalkingViewCell {
    //: @objc func clickCopyButtonAction() {
    @objc func buttonTo() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        StandardProgressHUD.slot((String(str_insertText)).localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension TalkingViewCell {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func serration(userModel: MModelType) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == MiniSubqueryConvertible.female.rawValue) ? String(bytes: str_frameData.map{succeedGift(limit: $0)}, encoding: .utf8)! : (String(str_partyContent) + str_messageData.replacingOccurrences(of: "push", with: "a"))
        //: sexIcon.image = UIImage.nearCounterval(name: sexImgStr)
        sexIcon.image = UIImage.nearCounterval(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.liveAttention(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (str_liveData.replacingOccurrences(of: "leading", with: "66")))!, .font: UIFont.liveAttention(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: str_atPathValue.map{ptolemaicSystem(lab: $0)}, encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension TalkingViewCell {
    //: private func setupSubviews() {
    private func headContent() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func bar() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
