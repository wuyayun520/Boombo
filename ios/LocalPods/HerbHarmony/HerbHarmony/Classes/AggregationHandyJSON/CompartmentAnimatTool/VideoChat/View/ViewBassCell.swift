
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameTitle:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

private func partyName(share num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let str_giftTitle:String = "to actualicon_vi"
fileprivate let str_imageData:[Character] = ["d","e","o","C","a","l","l","_","t"]
fileprivate let str_touchContent:[Character] = ["r","a","n","s","l","a","t","e","_","n","o","r"]

/*: "icon_videoCall_translate_pre" :*/
fileprivate let str_cardName:[Character] = ["i","c","o","n","_","v","i"]
fileprivate let str_videoPlayerValue:String = "empty self builddeoCal"
fileprivate let str_normalSizeRawData:String = "nmakeat"

/*: "targetText" :*/
fileprivate let str_timePicCenterName:[Character] = ["t","a","r","g","e","t","T"]
fileprivate let str_userEqualContent:[Character] = ["e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewBassCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class ViewBassCell: MessageBassCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: SumMeasurable {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            menuWith()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameTitle.map{partyName(share: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_giftTitle.suffix(7)) + String(str_imageData) + String(str_touchContent))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_cardName) + String(str_videoPlayerValue.suffix(6)) + "l_tra" + str_normalSizeRawData.replacingOccurrences(of: "make", with: "sl") + "e_pre")), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension ViewBassCell {
    //: func setCell() {
    func menuWith() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func addTo() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = ChangeManagerThen()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.dataModel(model: self.msgModel)
                //: self.setCell()
                self.menuWith()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: BridgeReactiveCompatible.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                BridgeReactiveCompatible.toSection(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(String(str_timePicCenterName) + String(str_userEqualContent))].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = ChangeManagerThen()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.dataModel(model: self.msgModel)
                        //: self.setCell()
                        self.menuWith()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = ChangeManagerThen()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.caculateWithoutStochasticProcess(model: self.msgModel)
            //: self.setCell()
            self.menuWith()
        }
    }
}
