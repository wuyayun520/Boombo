
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_shareTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#FA9D33" :*/
fileprivate let str_countColorData:String = "#FA9Dreturn female break"
fileprivate let str_equalValue:[Character] = ["3","3"]

/*: "#343338" :*/
fileprivate let str_senseData:[Character] = ["#","3","4","3","3","3","8"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StartTitleThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/10/8.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomIconGiftItemCell: UICollectionViewCell {
class StartTitleThen: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        stopPosition()
        //: setupSubViewsConstraint()
        shirtButton()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_shareTitle.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.layer.cornerRadius = 21
        v.layer.cornerRadius = 21
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderWidth = 1.5
        v.layer.borderWidth = 1.5
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 18
        v.layer.cornerRadius = 18
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.behindUpRoom(fontSize: 9)
        lab.font = UIFont.behindUpRoom(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomIconGiftItemCell {
extension StartTitleThen {
    /// 刷新cell
    /// - Parameters:
    ///   - position: 麦位
    ///   - model: 麦位数据
    //: func refreshIcon(position: Int, model: TalkingMikeListItemModel) {
    func iconKey(position: Int, model: SectionModelType) {
        //: guard model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid else {
        guard model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid else {
            //: bottomView.isHidden = true
            bottomView.isHidden = true
            //: seatNumLab.isHidden = true
            seatNumLab.isHidden = true
            //: return
            return
        }
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 18)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.commentGesture(urlStr: model.headPic, options: optionsInfo)
        //: seatNumLab.text = "\(position + 1)"
        seatNumLab.text = "\(position + 1)"
        //: let color = model.needGift ? UIColor(hex: "#FA9D33") : UIColor(hex: "#343338")
        let color = model.needGift ? UIColor(hex: (String(str_countColorData.prefix(5)) + String(str_equalValue))) : UIColor(hex: (String(str_senseData)))
        //: bottomView.layer.borderColor = color?.cgColor
        bottomView.layer.borderColor = color?.cgColor
        //: seatNumLab.backgroundColor = color
        seatNumLab.backgroundColor = color
        //: bottomView.isHidden = false
        bottomView.isHidden = false
        //: seatNumLab.isHidden = false
        seatNumLab.isHidden = false
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomIconGiftItemCell {
extension StartTitleThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func stopPosition() {
        //: addSubview(bottomView)
        addSubview(bottomView)
        //: bottomView.addSubview(icon)
        bottomView.addSubview(icon)
        //: addSubview(seatNumLab)
        addSubview(seatNumLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func shirtButton() {
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(42)
            make.width.height.equalTo(42)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(36)
            make.width.height.equalTo(36)
        }

        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(12)
            make.width.height.equalTo(12)
            //: make.bottom.equalTo(bottomView.snp.bottom).offset(3)
            make.bottom.equalTo(bottomView.snp.bottom).offset(3)
        }
    }
}
