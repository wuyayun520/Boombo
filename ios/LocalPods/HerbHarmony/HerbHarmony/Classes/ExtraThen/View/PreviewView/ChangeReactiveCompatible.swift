
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_networkDutyValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_male_default" :*/
fileprivate let str_userName:[UInt8] = [0x7c,0x76,0x82,0x81,0x72,0x80,0x74,0x7f,0x78,0x72,0x77,0x78,0x79,0x74,0x88,0x7f,0x87]

fileprivate func textVisual(info num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_female_default" :*/
fileprivate let str_managerValue:String = "iceventn"
fileprivate let str_reportAddDetailText:String = "ale_dthan automatically data let image"
fileprivate let str_labValue:String = "back"
fileprivate let str_rowTitle:String = "fautitle"

/*: "level_%@" :*/
fileprivate let str_imageMakeTopContent:[Character] = ["l","e","v","e","l","_","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TPreviewUserInfoView: UIView {
class ChangeReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.rubric()
        //: self.setupSubViewsConstraint()
        self.photoAdd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_networkDutyValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var headerPic = UIImageView().then {
    lazy var headerPic = UIImageView().then {
        //: $0.image = UIImage.placeImgSquare()
        $0.image = UIImage.currentPop()
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 5
        $0.layer.cornerRadius = 5
        //: $0.isUserInteractionEnabled = true
        $0.isUserInteractionEnabled = true
    }

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.font = .liveAttention(type: .Medium, fontSize: 17)
        $0.font = .liveAttention(type: .Medium, fontSize: 17)
        //: $0.textColor = .white
        $0.textColor = .white
    }

    //: lazy var cardImgView = UIImageView().then {
    lazy var cardImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
        //: $0.isHidden = true
        $0.isHidden = true
    }

    //: lazy var sexImgView = UIImageView().then {
    lazy var sexImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
    }

    //: lazy var ageLabel = UILabel().then {
    lazy var ageLabel = UILabel().then {
        //: $0.font = .liveAttention(type: .Regular, fontSize: 10)
        $0.font = .liveAttention(type: .Regular, fontSize: 10)
        //: $0.textColor = .white
        $0.textColor = .white
    }

    //: lazy var levelImgView = UIImageView().then {
    lazy var levelImgView = UIImageView().then {
        //: $0.image = UIImage(named: "")
        $0.image = UIImage(named: "")
    }
}

// MARK: - update

//: extension TPreviewUserInfoView {
extension ChangeReactiveCompatible {
    //: func updateContentWithModel(model: TPreviewInfoModel) {
    func loadArray(model: PreviewInfoModel) {
        //: headerPic.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.placeImgSquare())
        headerPic.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.currentPop())
        //: nickLabel.text = model.nickname
        nickLabel.text = model.nickname
        //: cardImgView.isHidden = !model.isTPAuth
        cardImgView.isHidden = !model.isTPAuth
        //: ageLabel.text = model.age
        ageLabel.text = model.age
        //: let imgStr = model.sex == Gender.male.rawValue ? "icon_male_default" : "icon_female_default"
        let imgStr = model.sex == MiniSubqueryConvertible.male.rawValue ? String(bytes: str_userName.map{textVisual(info: $0)}, encoding: .utf8)! : (str_managerValue.replacingOccurrences(of: "event", with: "o") + "_fem" + String(str_reportAddDetailText.prefix(5)) + str_labValue.replacingOccurrences(of: "back", with: "e") + str_rowTitle.replacingOccurrences(of: "title", with: "lt"))
        //: sexImgView.image = UIImage(named: imgStr)
        sexImgView.image = UIImage(named: imgStr)
        //: let levelStr = String(format: "level_%@", model.level)
        let levelStr = String(format: (String(str_imageMakeTopContent)), model.level)
        //: levelImgView.image = UIImage(named: levelStr)
        levelImgView.image = UIImage(named: levelStr)
    }
}

// MARK: Layout

//: extension TPreviewUserInfoView {
extension ChangeReactiveCompatible {
    //: private func setupSubviews() {
    private func rubric() {
        //: self.addSubview(headerPic)
        self.addSubview(headerPic)
        //: self.addSubview(nickLabel)
        self.addSubview(nickLabel)
        //: self.addSubview(cardImgView)
        self.addSubview(cardImgView)
        //: self.addSubview(sexImgView)
        self.addSubview(sexImgView)
        //: self.addSubview(ageLabel)
        self.addSubview(ageLabel)
        //: self.addSubview(levelImgView)
        self.addSubview(levelImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func photoAdd() {
        //: headerPic.snp.makeConstraints { make in
        headerPic.snp.makeConstraints { make in
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 41)))
            make.size.equalTo(CGSize(width: actualWidth(w: 41), height: actualWidth(w: 41)))
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(headerPic.snp.trailing).offset(actualWidth(w: 7))
            make.leading.equalTo(headerPic.snp.trailing).offset(actualWidth(w: 7))
            //: make.top.equalTo(headerPic.snp.top)
            make.top.equalTo(headerPic.snp.top)
        }
        //: cardImgView.snp.makeConstraints { make in
        cardImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nickLabel.snp.trailing).offset(actualWidth(w: 3))
            make.leading.equalTo(nickLabel.snp.trailing).offset(actualWidth(w: 3))
            //: make.centerY.equalTo(nickLabel.snp.centerY)
            make.centerY.equalTo(nickLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 20), height: actualWidth(w: 16)))
            make.size.equalTo(CGSize(width: actualWidth(w: 20), height: actualWidth(w: 16)))
        }
        //: sexImgView.snp.makeConstraints { make in
        sexImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(nickLabel.snp.leading)
            make.leading.equalTo(nickLabel.snp.leading)
            //: make.top.equalTo(nickLabel.snp.bottom).offset(actualHeight(h: 3))
            make.top.equalTo(nickLabel.snp.bottom).offset(actualHeight(h: 3))
            //: make.height.equalTo(actualHeight(h: 17))
            make.height.equalTo(actualHeight(h: 17))
        }
        //: ageLabel.snp.makeConstraints { make in
        ageLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(sexImgView.snp.leading).offset(actualWidth(w: 15))
            make.leading.equalTo(sexImgView.snp.leading).offset(actualWidth(w: 15))
            //: make.trailing.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: -5))
            make.trailing.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: -5))
            //: make.centerY.equalTo(sexImgView.snp.centerY)
            make.centerY.equalTo(sexImgView.snp.centerY)
        }
        //: levelImgView.snp.makeConstraints { make in
        levelImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: 4))
            make.leading.equalTo(sexImgView.snp.trailing).offset(actualWidth(w: 4))
            //: make.centerY.equalTo(sexImgView.snp.centerY)
            make.centerY.equalTo(sexImgView.snp.centerY)
            //: make.width.equalTo(actualWidth(w: 35))
            make.width.equalTo(actualWidth(w: 35))
            //: make.height.equalTo(actualHeight(h: 17))
            make.height.equalTo(actualHeight(h: 17))
        }
    }
}
