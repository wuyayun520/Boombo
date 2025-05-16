
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_changeContent:[UInt8] = [0xcc,0xcb,0xcc,0xd1,0x8d,0xc6,0xca,0xc1,0xc0,0xd7,0x9f,0x8c,0x85,0xcd,0xc4,0xd6,0x85,0xcb,0xca,0xd1,0x85,0xc7,0xc0,0xc0,0xcb,0x85,0xcc,0xc8,0xd5,0xc9,0xc0,0xc8,0xc0,0xcb,0xd1,0xc0,0xc1]

private func addressLength(size num: UInt8) -> UInt8 {
    return num ^ 165
}

/*: "All Numbers" :*/
fileprivate let str_resultMessageValue:String = "user handle resultAll Nu"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/4/6.
//

//: import UIKit
import UIKit

//: class DropMemberMenuCell: UITableViewCell {
class EnableThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupUI()
        pickings()
        //: layoutSubViewsConstraints()
        layoutEqualConstraints()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_changeContent.map{addressLength(size: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 34/2
        btn.layer.cornerRadius = 34 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
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
        //: label.font = .liveAttention(type: .Regular, fontSize: 14)
        label.font = .liveAttention(type: .Regular, fontSize: 14)
        //: label.textColor = UIColor.appValueColor()
        label.textColor = UIColor.colorPush()
        //: return label
        return label
        //: }()
    }()
}

//: extension DropMemberMenuCell {
extension EnableThen {
    //: func setDropMemberMenuCell(model: TalkingChatRoomMemberModel) {
    func nameEnd(model: PopScaleReactiveCompatible) {
        //: if model.nickname == "All Numbers".localized {
        if model.nickname == (String(str_resultMessageValue.suffix(6)) + "mbers").localized {
            //: IconBtn.setImage(UIImage.nearCounterval(name: model.headPic), for: .normal)
            IconBtn.setImage(UIImage.nearCounterval(name: model.headPic), for: .normal)
            //: }else {
        } else {
            //: IconBtn.setUrlImage(urlStr: model.headPic)
            IconBtn.howeverFinish(urlStr: model.headPic)
        }

        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
    }
}

//: extension DropMemberMenuCell {
extension EnableThen {
    //: private func setupUI() {
    private func pickings() {
        //: backgroundColor = .white
        backgroundColor = .white
        //: addSubview(IconBtn)
        addSubview(IconBtn)
        //: addSubview(nameLB)
        addSubview(nameLB)
    }

    //: func layoutSubViewsConstraints() {
    func layoutEqualConstraints() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(3)
            make.leading.equalTo(self).offset(3)
            //: make.top.equalTo(self).offset(3)
            make.top.equalTo(self).offset(3)
            //: make.width.height.equalTo(34)
            make.width.height.equalTo(34)
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(6)
            make.leading.equalTo(IconBtn.snp.trailing).offset(6)
            //: make.trailing.equalTo(self).offset(-6)
            make.trailing.equalTo(self).offset(-6)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.height.height.equalTo(16)
            make.height.height.equalTo(16)
        }
    }
}
