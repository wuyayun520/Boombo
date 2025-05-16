
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labData:[UInt8] = [0x6e,0x69,0x6e,0x73,0x2f,0x64,0x68,0x63,0x62,0x75,0x3d,0x2e,0x27,0x6f,0x66,0x74,0x27,0x69,0x68,0x73,0x27,0x65,0x62,0x62,0x69,0x27,0x6e,0x6a,0x77,0x6b,0x62,0x6a,0x62,0x69,0x73,0x62,0x63]

private func priceTop(color num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "btn_report_selected_nor" :*/
fileprivate let str_popData:[Character] = ["b","t","n","_","r","e","p","o","r","t","_","s"]
fileprivate let str_makeResultGiftText:[Character] = ["e"]
fileprivate let str_equalValue:String = "ldatactdata"

/*: "· %@" :*/
fileprivate let str_infoData:String = "· %bottom"

/*: "btn_report_selected_pre" :*/
fileprivate let str_giftClickTitle:String = "if type playerbtn_r"
fileprivate let str_makeData:[Character] = ["s","e","l","e","c","t","e","d","_","p","r","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingReportViewCell: UITableViewCell {
class FrameThen: UITableViewCell {
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
        self.error()
        //: self.setupSubViewsConstraint()
        self.economicAid()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labData.map{priceTop(color: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.occurrence()
        $0.textColor = UIColor.occurrence()
        //: $0.font = .liveAttention(type: .Medium, fontSize: 16)
        $0.font = .liveAttention(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.nearCounterval(name: "btn_report_selected_nor")
        $0.image = UIImage.nearCounterval(name: (String(str_popData) + String(str_makeResultGiftText) + str_equalValue.replacingOccurrences(of: "data", with: "e") + "d_nor"))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension FrameThen {
    //: func updateReportCell(model: TalkingReportModel) {
    func imageCreate(model: StackReactiveCompatible) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.nearCounterval(name: "btn_report_selected_nor")
        var image = UIImage.nearCounterval(name: (String(str_popData) + String(str_makeResultGiftText) + str_equalValue.replacingOccurrences(of: "data", with: "e") + "d_nor"))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.nearCounterval(name: "btn_report_selected_pre").withTintColor(UIColor.alright())
            image = UIImage.nearCounterval(name: (String(str_giftClickTitle.suffix(5)) + "eport_" + String(str_makeData))).withTintColor(UIColor.alright())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension FrameThen {
    //: private func setupSubviews() {
    private func error() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func economicAid() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
