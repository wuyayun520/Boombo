
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_awakeValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_me_edit" :*/
fileprivate let str_barText:String = "view"
fileprivate let str_sizeData:[Character] = ["t","n","_","m","e","_","e","d","i","t"]

/*: "Add" :*/
fileprivate let str_likeValue:String = "view view center selfAdd"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetingSetTableCell: UITableViewCell {
class ShowReactiveCompatible: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

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
        //: setupSubviews()
        targetSubviews()
        //: setupSubViewsConstraint()
        changeConstraint()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_awakeValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var iconImg: UIImageView = {
    lazy var iconImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var editImag: UIImageView = {
    lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.nearCounterval(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.nearCounterval(name: (str_barText.replacingOccurrences(of: "view", with: "b") + String(str_sizeData))))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var detailLB: UILabel = {
    lazy var detailLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueColor()
        lb.textColor = UIColor.colorPush()
        //: lb.textAlignment = .right
        lb.textAlignment = .right
        //: lb.text = "Add".localized
        lb.text = (String(str_likeValue.suffix(3))).localized
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetingSetTableCell {
extension ShowReactiveCompatible {
    //: func setCellMessage(titile: String, iconStr: String, isShowDet:Bool) {
    func topDet(titile: String, iconStr: String, isShowDet: Bool) {
        //: titleBLB.text = titile
        titleBLB.text = titile
        //: iconImg.image = UIImage.nearCounterval(name: iconStr)
        iconImg.image = UIImage.nearCounterval(name: iconStr)
        //: detailLB.isHidden = isShowDet
        detailLB.isHidden = isShowDet
    }
}

//: extension TalkingGreetingSetTableCell {
extension ShowReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func targetSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(iconImg)
        backView.addSubview(iconImg)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(detailLB)
        backView.addSubview(detailLB)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func changeConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }
        //: iconImg.snp.makeConstraints { make in
        iconImg.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.size.equalTo(25)
            make.size.equalTo(25)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImg.snp.trailing).offset(7)
            make.leading.equalTo(iconImg.snp.trailing).offset(7)
            //: make.centerY.equalTo(iconImg)
            make.centerY.equalTo(iconImg)
            //: make.trailing.equalTo(detailLB.snp.leading).offset(-5)
            make.trailing.equalTo(detailLB.snp.leading).offset(-5)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.width.equalTo(12)
            make.width.equalTo(12)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: detailLB.snp.makeConstraints { make in
        detailLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(titleBLB)
            make.centerY.equalTo(titleBLB)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-27)
            make.trailing.equalTo(backView.snp.trailing).offset(-27)
        }
    }
}
