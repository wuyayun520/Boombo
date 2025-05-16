
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_chatsettings_unchoice" :*/
fileprivate let str_titleValue:[Character] = ["b","t","n","_","c","h","a","t","s","e"]
fileprivate let str_labelData:[Character] = ["t","t"]
fileprivate let str_containerTitle:String = "INGS"
fileprivate let str_addTitle:String = "HOICE"

/*: "Free" :*/
fileprivate let str_skinName:String = "info image backgroundFree"

/*: "%@ Gold coins / Message" :*/
fileprivate let str_toTitle:String = "%@ Golview button"
fileprivate let str_dataValue:String = "return name color top makens / M"
fileprivate let str_giftValue:String = "index"

/*: "%@ Gold coins / Min" :*/
fileprivate let str_viewValue:[Character] = ["%","@"," ","G","o","l","d"," ","c"]
fileprivate let str_contentServerData:[Character] = ["o","i","n","s"," "]
fileprivate let str_startName:String = "/ Minlet success point"

/*: "btn_chatsettings_choiced" :*/
fileprivate let str_tableName:String = "color let backbtn_"
fileprivate let str_countData:String = "ettinno"
fileprivate let str_signName:String = "frame round content available nears_cho"

/*: "LV.%d" :*/
fileprivate let str_styleName:[Character] = ["L","V",".","%","d"]

/*: "#E9E9E9" :*/
fileprivate let str_messageName:String = "mode"
fileprivate let str_timeValue:String = "Eeaseease9"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NumberView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class ChatViewMeasurable: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class NumberView: UITableViewCell {
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
        //: self.setupSubviews()
        self.setupLog()
        //: self.setupSubViewsConstraint()
        self.group()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 16)
        lb.font = .liveAttention(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.alright()
        view.backgroundColor = UIColor.alright()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .liveAttention(type: .Regular, fontSize: 12)
        lb.font = .liveAttention(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.nearCounterval(name: (String(str_titleValue) + String(str_labelData) + str_containerTitle.lowercased() + "_unc" + str_addTitle.lowercased()))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension NumberView {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func pathKey(cellModel: ChatViewMeasurable, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(str_skinName.suffix(4))).localized : (String(str_toTitle.prefix(6)) + "d coi" + String(str_dataValue.suffix(6)) + "essag" + str_giftValue.replacingOccurrences(of: "index", with: "e")).localizedArguments(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(str_viewValue) + String(str_contentServerData) + String(str_startName.prefix(5))).localizedArguments(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.nearCounterval(name: "btn_chatsettings_choiced") : UIImage.nearCounterval(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.nearCounterval(name: (String(str_tableName.suffix(4)) + "chats" + str_countData.replacingOccurrences(of: "no", with: "g") + String(str_signName.suffix(5)) + "iced")) : UIImage.nearCounterval(name: (String(str_titleValue) + String(str_labelData) + str_containerTitle.lowercased() + "_unc" + str_addTitle.lowercased()))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(WithAdministratorAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(WithAdministratorAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: (str_messageName.replacingOccurrences(of: "mode", with: "#") + str_timeValue.replacingOccurrences(of: "ease", with: "9E"))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension NumberView {
    //: private func setupSubviews() {
    private func setupLog() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func group() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
