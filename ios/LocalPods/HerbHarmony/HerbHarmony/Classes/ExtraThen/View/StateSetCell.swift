
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_officialData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_me_edit" :*/
fileprivate let str_nameValue:String = "make to text inbtn_me"
fileprivate let str_textName:String = "self from add var text_edit"

/*: "%@ Gold coins / Message" :*/
fileprivate let str_indexData:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i"]
fileprivate let str_pendingValue:String = "ns above size"
fileprivate let str_actionMakeTouchData:[Character] = ["/"," ","M","e","s","s","a","g","e"]

/*: "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points." :*/
fileprivate let str_mediumCommentViewData:[UInt8] = [0x6f,0x8a,0x3b,0x8e,0x83,0x8a,0x92,0x3b,0x8e,0x84,0x89,0x7e,0x80,0x8d,0x80,0x3b,0x84,0x89,0x8f,0x80,0x8d,0x80,0x8e,0x8f,0x47,0x3b,0x6f,0x83,0x80,0x3b,0x8a,0x8f,0x83,0x80,0x8d,0x3b,0x8b,0x7c,0x8d,0x8f,0x94,0x3b,0x89,0x80,0x80,0x7f,0x8e,0x3b,0x8f,0x8a,0x3b,0x8b,0x7c,0x94,0x3b,0x8f,0x8a,0x3b,0x7e,0x83,0x7c,0x8f,0x3b,0x92,0x84,0x8f,0x83,0x3b,0x94,0x8a,0x90,0x47,0x3b,0x7c,0x89,0x7f,0x3b,0x94,0x8a,0x90,0x3b,0x92,0x84,0x87,0x87,0x3b,0x82,0x80,0x8f,0x3b,0x8d,0x80,0x7f,0x80,0x80,0x88,0x7c,0x7d,0x87,0x80,0x3b,0x8b,0x8a,0x84,0x89,0x8f,0x8e,0x49]

fileprivate func toCell(from num: UInt8) -> UInt8 {
    let value = Int(num) - 27
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "%@ Gold coins / Min" :*/
fileprivate let str_customOnContent:String = "%@ Gscreen year if"
fileprivate let str_actionName:String = "model label make viewins / "
fileprivate let str_modelUpName:[Character] = ["M","i","n"]

/*: "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let str_labValue:[UInt8] = [0x8e,0xa2,0x9f,0x5a,0xaa,0xac,0xa3,0x9d,0x9f,0x5a,0xad,0x9f,0xae,0xae,0xa3,0xa8,0xa1,0x5a,0xa0,0xa9,0xac,0x5a,0xb0,0xa3,0x9e,0x9f,0xa9,0x5a,0x9d,0x9b,0xa6,0xa6,0xad,0x5a,0x9e,0xa9,0x9f,0xad,0x5a,0xa8,0xa9,0xae,0x5a,0xb1,0xa9,0xac,0xa5,0x5a,0xa0,0xa9,0xac,0x5a,0xae,0xa2,0x9f,0x5a,0x8c,0x9b,0xa8,0x9e,0xa9,0xa7,0x5a,0x90,0xa3,0x9e,0x9f,0xa9,0x5a,0xa0,0x9f,0x9b,0xae,0xaf,0xac,0x9f,0x68,0x83,0xa0,0x5a,0xb3,0xa9,0xaf,0x5a,0xa2,0x9b,0xa8,0xa1,0x5a,0xaf,0xaa,0x5a,0xb1,0xa3,0xae,0xa2,0xa3,0xa8,0x5a,0x6c,0x6a,0x5a,0xad,0x9f,0x9d,0xa9,0xa8,0x9e,0xad,0x5a,0xa9,0xa0,0x5a,0x9b,0xa8,0xad,0xb1,0x9f,0xac,0xa3,0xa8,0xa1,0x5a,0xae,0xa2,0x9f,0x5a,0xaa,0xa2,0xa9,0xa8,0x9f,0x66,0x5a,0xb3,0xa9,0xaf,0x5a,0xb1,0xa3,0xa6,0xa6,0x5a,0xa8,0xa9,0xae,0x5a,0xa1,0x9f,0xae,0x5a,0x8a,0xa9,0xa3,0xa8,0xae,0xad,0x68]

fileprivate func sizeTap(table num: UInt8) -> UInt8 {
    let value = Int(num) + 198
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let str_pointData:[UInt8] = [0x9,0x3f,0x25,0x70,0x3e,0x35,0x35,0x34,0x70,0x24,0x3f,0x70,0x20,0x31,0x29,0x70,0x35,0x28,0x24,0x22,0x31,0x70,0x31,0x24,0x24,0x35,0x3e,0x24,0x39,0x3f,0x3e,0x70,0x24,0x38,0x31,0x24,0x70,0x39,0x36,0x70,0x29,0x3f,0x25,0x70,0x38,0x31,0x3e,0x37,0x70,0x25,0x20,0x70,0x27,0x39,0x24,0x38,0x39,0x3e,0x70,0x62,0x60,0x70,0x23,0x35,0x33,0x3f,0x3e,0x34,0x23,0x70,0x3f,0x36,0x70,0x31,0x3e,0x23,0x27,0x35,0x22,0x39,0x3e,0x37,0x70,0x24,0x38,0x35,0x70,0x20,0x38,0x3f,0x3e,0x35,0x7c,0x70,0x29,0x3f,0x25,0x70,0x27,0x39,0x3c,0x3c,0x70,0x3e,0x3f,0x24,0x70,0x37,0x35,0x24,0x70,0x0,0x3f,0x39,0x3e,0x24,0x23,0x7e]

private func shareBag(view num: UInt8) -> UInt8 {
    return num ^ 80
}

/*: "LV.%d" :*/
fileprivate let str_playerName:String = "LV.%dmodel make data self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StateSetCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: class TalkingFemalePriceSetCell: UITableViewCell {
class StateSetCell: UITableViewCell {
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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.eraseSetup()
        //: self.setupSubViewsConstraint()
        self.current()
        //: self.bindInteraction()
        self.note()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_officialData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var priceTitleLB: UILabel = {
    lazy var priceTitleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
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

    //: lazy var arrowsImageView: UIImageView = {
    lazy var arrowsImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "btn_me_edit")
        imgView.image = UIImage.nearCounterval(name: (String(str_nameValue.suffix(6)) + String(str_textName.suffix(5))))
        //: imgView.contentMode = .scaleAspectFit
        imgView.contentMode = .scaleAspectFit
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var messageLab: UILabel = {
    lazy var messageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingFemalePriceSetCell {
extension StateSetCell {
    //: func setCellData(index: Int, price: Int, leve: Int) {
    func of(index: Int, price: Int, leve: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: priceTitleLB.text = "%@ Gold coins / Message".localizedArguments(price)
            priceTitleLB.text = (String(str_indexData) + String(str_pendingValue.prefix(3)) + String(str_actionMakeTouchData)).localizedArguments(price)
            //: messageLab.text =  "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points.".localized
            messageLab.text = String(bytes: str_mediumCommentViewData.map{toCell(from: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 1:
        case 1:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(str_customOnContent.prefix(4)) + "old co" + String(str_actionName.suffix(6)) + String(str_modelUpName)).localizedArguments(price)
            //: messageLab.text =  "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: str_labValue.map{sizeTap(table: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 2:
        case 2:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(str_customOnContent.prefix(4)) + "old co" + String(str_actionName.suffix(6)) + String(str_modelUpName)).localizedArguments(price)
            //: messageLab.text =  "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: str_pointData.map{shareBag(view: $0)}, encoding: .utf8)!.localized
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: levelLab.text = String(format: "LV.%d", leve)
        levelLab.text = String(format: "LV.%d", leve)
        //: levelView.isHidden = leve == 0
        levelView.isHidden = leve == 0
        //: levelLab.isHidden = leve == 0
        levelLab.isHidden = leve == 0
    }
}

//: extension TalkingFemalePriceSetCell {
extension StateSetCell {
    // 添加视图
    //: private func setupSubviews() {
    private func eraseSetup() {
        //: self.addSubview(priceTitleLB)
        self.addSubview(priceTitleLB)
        //: self.addSubview(levelView)
        self.addSubview(levelView)
        //: self.addSubview(levelLab)
        self.addSubview(levelLab)
        //: self.addSubview(arrowsImageView)
        self.addSubview(arrowsImageView)
        //: self.addSubview(messageLab)
        self.addSubview(messageLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func current() {
        //: priceTitleLB.snp.makeConstraints { make in
        priceTitleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
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
        //: arrowsImageView.snp.makeConstraints { make in
        arrowsImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
            //: make.size.equalTo(CGSize(width: 12, height: 12))
            make.size.equalTo(CGSize(width: 12, height: 12))
        }
        //: messageLab.snp.makeConstraints { make in
        messageLab.snp.makeConstraints { make in
            //: make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            //: make.leading.equalTo(priceTitleLB)
            make.leading.equalTo(priceTitleLB)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func note() {}
}
