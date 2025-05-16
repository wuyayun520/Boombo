
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_giftTitle:[UInt8] = [0xa2,0xa5,0xa2,0xbf,0xe3,0xa8,0xa4,0xaf,0xae,0xb9,0xf1,0xe2,0xeb,0xa3,0xaa,0xb8,0xeb,0xa5,0xa4,0xbf,0xeb,0xa9,0xae,0xae,0xa5,0xeb,0xa2,0xa6,0xbb,0xa7,0xae,0xa6,0xae,0xa5,0xbf,0xae,0xaf]

/*: "Game" :*/
fileprivate let str_demonstrateName:String = "guard index minGame"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PartCompartmentGameTalkingliveRoomThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/12.
//

//: import UIKit
import UIKit

//: let GameItem_H = actualWidth(w: 113)
let kLet_barMessageQuantityValue = actualWidth(w: 113)
//: class TalkingliveRoomGameItemCell: UICollectionViewCell {
class PartCompartmentGameTalkingliveRoomThen: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.restrictionSubviews()
        //: self.setupSubViewsConstraint()
        self.coatButton()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_giftTitle.map{$0^203}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.backgroundColor = .clear
        imgV.backgroundColor = .clear
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Game".localized
        lb.text = (String(str_demonstrateName.suffix(4))).localized
        //: lb.font = UIFont.unprecedented(fontSize: 12)
        lb.font = UIFont.unprecedented(fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: Layout

//: extension TalkingliveRoomGameItemCell {
extension PartCompartmentGameTalkingliveRoomThen {
    /// 刷新cell
    /// - Parameters:
    ///   - model: 模型
    ///   - nameColor: 名称颜色
    //: func refreshView(model: TalkingGameListModel, nameColor: UIColor = .white) {
    func refreshBlock(model: LeakinessModelType, nameColor: UIColor = .white) {
        //: iconImgV.setUrlImage(urlStr: model.icon)
        iconImgV.nearSquare(urlStr: model.icon)
        //: nameLab.text = model.name
        nameLab.text = model.name
        //: nameLab.textColor = nameColor
        nameLab.textColor = nameColor
    }

    //: private func setupSubviews() {
    private func restrictionSubviews() {
        //: addSubview(iconImgV)
        addSubview(iconImgV)
        //: addSubview(nameLab)
        addSubview(nameLab)
    }

    //: private func setupSubViewsConstraint() {
    private func coatButton() {
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 66))
            make.width.height.equalTo(actualWidth(w: 66))

            //: nameLab.snp.makeConstraints { make in
            nameLab.snp.makeConstraints { make in
                //: make.top.equalTo(iconImgV.snp.bottom).offset(12)
                make.top.equalTo(iconImgV.snp.bottom).offset(12)
                //: make.width.equalToSuperview()
                make.width.equalToSuperview()
            }
        }
    }
}
