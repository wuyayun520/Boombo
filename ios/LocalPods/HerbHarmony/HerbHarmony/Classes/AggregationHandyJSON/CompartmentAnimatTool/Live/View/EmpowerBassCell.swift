
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_rawMonthText:String = "MF:LiveCuser view super top section"
fileprivate let str_exhibitInstanceText:String = "view name selfhatWe"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_giftData:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","P","r","i","z","e","M","s","g"]

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_onlineText:String = "MF:Livname view make by selected"
fileprivate let str_backgroundTitle:String = "pingenti"
fileprivate let str_iconContent:[Character] = ["o","n","M","s","g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_collectionErrorName:String = "MF:Parintimate cell"
fileprivate let str_recordTitle:[Character] = ["l","M","s","g"]

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_imageText:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","P","r","i","z","e","M","s","g"]

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_errorName:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","A","t","t","e","n","t","i","o","n","M","s","g"]

/*: _ :*/
fileprivate let str_rangeViewName:String = "_"

/*: "UITableViewCell" :*/
fileprivate let str_collectionData:String = "UITanumber make origin data"
fileprivate let str_labName:String = "ewCellprice bean table image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmpowerBassCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class EmpowerBassCell: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = QuantityLeadingTransformable()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(kLet_noValue + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(kLet_noValue)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelValue.reversed(), encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension EmpowerBassCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func equalCoin(tableView: UITableView, msg: QuantityLeadingTransformable, indexPath _: IndexPath) -> EmpowerBassCell {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: EmpowerBassCell?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(str_rawMonthText.prefix(8)) + String(str_exhibitInstanceText.suffix(5)) + "lMsg") ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(str_giftData)) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(str_onlineText.prefix(6)) + "eChatA" + str_backgroundTitle.replacingOccurrences(of: "ping", with: "tt") + String(str_iconContent)) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(str_collectionErrorName.prefix(6)) + "tyChatWe" + String(str_recordTitle)) ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(str_imageText)) ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(str_errorName))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(TalkingReactiveCompatible.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(TalkingReactiveCompatible.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = TalkingReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_collectionData.prefix(4)) + "bleVi" + String(str_labName.prefix(6)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = EmpowerBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! EmpowerBassCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
