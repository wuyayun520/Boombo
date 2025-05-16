
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_mainModeValue:[UInt8] = [0x1e,0x19,0x1e,0x3,0x5f,0x14,0x18,0x13,0x12,0x5,0x4d,0x5e,0x57,0x1f,0x16,0x4,0x57,0x19,0x18,0x3,0x57,0x15,0x12,0x12,0x19,0x57,0x1e,0x1a,0x7,0x1b,0x12,0x1a,0x12,0x19,0x3,0x12,0x13]

private func rewardImage(collection num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "icon_home_boy" :*/
fileprivate let str_labelManagerTitle:[Character] = ["i","c","o","n","_","h","o"]
fileprivate let str_modelData:[Character] = ["m","e","_","b","o","y"]

/*: "icon_home_girl" :*/
fileprivate let str_backText:String = "usercon"
fileprivate let str_messageTitle:String = "head if user viewe_girl"

/*: "   " :*/
fileprivate let str_shareValue:[Character] = [" "," "," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FastenerViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/10.
//

//: import UIKit
import UIKit

//: class TalkingChatRoomOnlineListCell: UITableViewCell {
class FastenerViewCell: UITableViewCell {
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
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: createCellUI()
        alongUi()
        //: layoutSubViewsConstraints()
        makeSubConstraintsViewsCurrent()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_mainModeValue.map{rewardImage(collection: $0)}, encoding: .utf8)!)
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
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
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

    //: lazy var signLB: UILabel = {
    lazy var signLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: return label
        return label
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
}

// MARK: - Event

//: extension TalkingChatRoomOnlineListCell {
extension FastenerViewCell {
    //: func setOnlineListCell(model: TalkingChatRoomMemberModel, type: TitleType) {
    func imageBreed(model: PopScaleReactiveCompatible, type: MagnituderyKeyRepresentable) {
        //: IconBtn.setUrlImage(urlStr: model.headPic)
        IconBtn.howeverFinish(urlStr: model.headPic)
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: signLB.text = model.signature
        signLB.text = model.signature

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.nearCounterval(name: "icon_home_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_labelManagerTitle) + String(str_modelData))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.nearCounterval(name: "icon_home_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.nearCounterval(name: (str_backText.replacingOccurrences(of: "user", with: "i") + "_hom" + String(str_messageTitle.suffix(6)))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age), for: .normal)
        sexBtn.setTitle("   " + String(model.age), for: .normal)

        //: switch type {
        switch type {
        //: case .normal:
        case .normal:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(16)
                make.top.equalTo(self).offset(16)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = false
            signLB.isHidden = false

        //: case .callNumber:
        case .callNumber:
            //: nameLB.snp.remakeConstraints { make in
            nameLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                make.leading.equalTo(IconBtn.snp.trailing).offset(10)
                //: make.top.equalTo(self).offset(26)
                make.top.equalTo(self).offset(26)
                //: make.height.equalTo(21)
                make.height.equalTo(21)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
                make.trailing.lessThanOrEqualToSuperview().offset(-50)
            }
            //: signLB.isHidden = true
            signLB.isHidden = true
        }
    }
}

// MARK: - UI

//: extension TalkingChatRoomOnlineListCell {
extension FastenerViewCell {
    //: func createCellUI() {
    func alongUi() {
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(nameLB)
        self.contentView.addSubview(nameLB)
        //: self.contentView.addSubview(signLB)
        self.contentView.addSubview(signLB)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
    }

    //: func layoutSubViewsConstraints() {
    func makeSubConstraintsViewsCurrent() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(16)
            make.top.equalTo(self).offset(16)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-50)
            make.trailing.lessThanOrEqualToSuperview().offset(-50)
        }

        //: signLB.snp.makeConstraints { make in
        signLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.trailing.equalTo(self).offset(-10)
            make.trailing.equalTo(self).offset(-10)
        }

        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(3)
            make.leading.equalTo(nameLB.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
        }
    }
}
