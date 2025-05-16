
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftName:[UInt8] = [0xb7,0xb0,0xb7,0xaa,0xf6,0xbd,0xb1,0xba,0xbb,0xac,0xe4,0xf7,0xfe,0xb6,0xbf,0xad,0xfe,0xb0,0xb1,0xaa,0xfe,0xbc,0xbb,0xbb,0xb0,0xfe,0xb7,0xb3,0xae,0xb2,0xbb,0xb3,0xbb,0xb0,0xaa,0xbb,0xba]

private func profitSharing(photo num: UInt8) -> UInt8 {
    return num ^ 222
}

/*: _ :*/
fileprivate let str_intimateName:String = "_"

/*: "UITableViewCell" :*/
fileprivate let str_mapProgressValue:[Character] = ["U","I","T","a","b"]
fileprivate let str_deviceTitle:String = "leViecontent error camera"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageBassCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgBassCell: UITableViewCell {
class MessageBassCell: UITableViewCell {
    //: var msgModel = TalkingVideoCallDanmuModel.init()
    var msgModel = SumMeasurable()

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
            //: make.top.equalTo(VideocellLineSpeing+2)
            make.top.equalTo(kLet_displayTitle + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-32)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(VideocellLineSpeing)
            make.top.equalTo(kLet_displayTitle)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftName.map{profitSharing(photo: $0)}, encoding: .utf8)!)
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
        // 强制排版(从左到右)
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

//: extension TalkingVideoDanmuMsgBassCell {
extension MessageBassCell {
    //: class func initTableView(tableView: UITableView, msg: TalkingVideoCallDanmuModel, indexPath: IndexPath ) -> TalkingVideoDanmuMsgBassCell {
    class func windowDoingDesign(tableView: UITableView, msg: SumMeasurable, indexPath _: IndexPath) -> MessageBassCell {
        //: var cell: TalkingVideoDanmuMsgBassCell?
        var cell: MessageBassCell?

        //: if msg.messageType == 1 {
        if msg.messageType == 1 {
            //: let identifier = "\(TalkingVideoDanmuMsgTextCell.className())_\(msg.messageType)"
            let identifier = "\(ViewBassCell.className())_\(msg.messageType)"
            //: tableView.register(TalkingVideoDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(ViewBassCell.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingVideoDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ViewBassCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingVideoDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = ViewBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(str_mapProgressValue) + String(str_deviceTitle.prefix(5)) + "wCell")
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingVideoDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = MessageBassCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingVideoDanmuMsgBassCell
            return cell as! MessageBassCell
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
