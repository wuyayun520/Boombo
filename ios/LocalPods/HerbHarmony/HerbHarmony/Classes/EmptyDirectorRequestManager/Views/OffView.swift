
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_valueContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "bg_medals_podium" :*/
fileprivate let str_ofDataName:String = "var lab var forbg_med"
fileprivate let str_captureValue:[Character] = ["u","m"]

/*: "icon_rank_first_bg" :*/
fileprivate let str_modelData:String = "icosign"
fileprivate let str_cellColorName:[Character] = ["_","r","a","n","k","_","f","i","r","s","t","_","b","g"]

/*: "icon_rank_first" :*/
fileprivate let str_mValue:String = "icon_rview let view"
fileprivate let str_normalValue:String = "IRST"

/*: "icon_ammount_points" :*/
fileprivate let str_playerValue:[Character] = ["i","c","o","n","_","a"]
fileprivate let str_acrossData:String = "show selfmmount_"
fileprivate let str_dataValue:[Character] = ["p","o","i","n","t","s"]

/*: "icon_lounge" :*/
fileprivate let str_listData:String = "icon_louheight equal person view cell"
fileprivate let str_talkRequestClickValue:[Character] = ["n","g","e"]

/*: "icon_rank_coin" :*/
fileprivate let str_intervalBehindText:[Character] = ["i","c","o","n","_","r","a","n","k","_","c","o","i","n"]

/*: "icon_rank_coin2" :*/
fileprivate let str_listName:String = "ICON"
fileprivate let str_onName:[Character] = ["i","n","2"]

/*: "icon_rank_second" :*/
fileprivate let str_handleWillText:String = "icon_rpath greet on temp self"
fileprivate let str_momentName:String = "econdata"

/*: "icon_rank_third" :*/
fileprivate let str_screenData:String = "from"
fileprivate let str_maleValue:[Character] = ["c","o","n","_","r","a","n","k","_","t","h","i","r","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class SocialRankHeaderView: UIView {
class OffView: UIView {
    //: var  index = 0
    var index = 0

    // MARK: param

    //: var dataArray: [SocialRankItemModel] = [] {
    var dataArray: [EndManMeasurable] = [] {
        //: didSet {
        didSet {
            //: self.updateSubviewsWithData()
            self.rawDataWith()
        }
    }

    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.targetRemindDismiss()
        //: self.setupSubViewsConstraint()
        self.coequal()
        //: self.bindInteraction()
        self.makeCreate()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueContent.reversed(), encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var medalsView = UIImageView().then {
    lazy var medalsView = UIImageView().then {
        //: $0.image = UIImage.nearCounterval(name: "bg_medals_podium")
        $0.image = UIImage.nearCounterval(name: (String(str_ofDataName.suffix(6)) + "als_podi" + String(str_captureValue)))
    }

    //: lazy var firstView = SocialRankHeaderItemView.init(frame: .zero, rankType: .firstRankType).then {
    lazy var firstView = IconClickThen(frame: .zero, rankType: .firstRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 0
        $0.tag = 0
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(nip))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var secondView = SocialRankHeaderItemView.init(frame: .zero, rankType: .secondRankType).then {
    lazy var secondView = IconClickThen(frame: .zero, rankType: .secondRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 1
        $0.tag = 1
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(nip))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }

    //: lazy var thirdView = SocialRankHeaderItemView.init(frame: .zero, rankType: .thirdRankType).then {
    lazy var thirdView = IconClickThen(frame: .zero, rankType: .thirdRankType).then {
        //: $0.backgroundColor = .clear
        $0.backgroundColor = .clear
        //: $0.tag = 2
        $0.tag = 2
        //: let tap = UITapGestureRecognizer.init(target: self, action: #selector(registTapAction))
        let tap = UITapGestureRecognizer(target: self, action: #selector(nip))
        //: $0.addGestureRecognizer(tap)
        $0.addGestureRecognizer(tap)
    }
}

// MARK: - Bind && Event

//: extension SocialRankHeaderView {
extension OffView {
    //: private func bindInteraction() {
    private func makeCreate() {}

    //: private func updateSubviewsWithData() {
    private func rawDataWith() {
        //: firstView.updateItemWithModel(model: dataArray[0], type: self.index)
        firstView.hideType(model: dataArray[0], type: self.index)
        //: secondView.updateItemWithModel(model: dataArray.count>1 ? dataArray[1]: nil, type: self.index)
        secondView.hideType(model: dataArray.count > 1 ? dataArray[1] : nil, type: self.index)
        //: thirdView.updateItemWithModel(model: dataArray.count>2 ? dataArray[2]: nil, type: self.index)
        thirdView.hideType(model: dataArray.count > 2 ? dataArray[2] : nil, type: self.index)
    }

    //: @objc func registTapAction(tapGesture: UITapGestureRecognizer) {
    @objc func nip(tapGesture: UITapGestureRecognizer) {
        //: let viewTag = tapGesture.view?.tag
        let viewTag = tapGesture.view?.tag
        //: let model = dataArray[viewTag ?? 0]
        let model = dataArray[viewTag ?? 0]
        //: guard model.uid != 0 else {
        guard model.uid != 0 else {
            //: return
            return
        }

        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: "\(model.uid)")
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: "\(model.uid)")
    }
}

// MARK: Layout

//: extension SocialRankHeaderView {
extension OffView {
    //: private func setupSubviews() {
    private func targetRemindDismiss() {
        //: addSubview(medalsView)
        addSubview(medalsView)
        //: addSubview(firstView)
        addSubview(firstView)
        //: addSubview(secondView)
        addSubview(secondView)
        //: addSubview(thirdView)
        addSubview(thirdView)
    }

    //: private func setupSubViewsConstraint() {
    private func coequal() {
        //: let firstWidth = (ScreenWidth - actualWidth(w: 68)) / 3 + actualWidth(w: 10)
        let firstWidth = (kLet_senseContent - actualWidth(w: 68)) / 3 + actualWidth(w: 10)
        //: let itemWidth = (ScreenWidth - actualWidth(w: 68)) / 3 - actualWidth(w: 10)
        let itemWidth = (kLet_senseContent - actualWidth(w: 68)) / 3 - actualWidth(w: 10)
        //: let firstHeight = actualHeight(h: 140)
        let firstHeight = actualHeight(h: 140)
        //: let itemHeight = actualHeight(h: 120)
        let itemHeight = actualHeight(h: 120)

        //: secondView.snp.makeConstraints { make in
        secondView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34+5))
            make.leading.equalTo(actualWidth(w: 34 + 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -60))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -60))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: firstView.snp.makeConstraints { make in
        firstView.snp.makeConstraints { make in
            //: make.centerX.equalTo(medalsView.snp.centerX)
            make.centerX.equalTo(medalsView.snp.centerX)
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -94))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -94))
            //: make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
            make.size.equalTo(CGSize(width: firstWidth, height: firstHeight))
        }

        //: thirdView.snp.makeConstraints { make in
        thirdView.snp.makeConstraints { make in
            //: make.trailing.equalTo(actualWidth(w: -34-5))
            make.trailing.equalTo(actualWidth(w: -34 - 5))
            //: make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -54))
            make.bottom.equalTo(medalsView.snp.bottom).offset(actualHeight(h: -54))
            //: make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
            make.size.equalTo(CGSize(width: itemWidth, height: itemHeight))
        }

        //: medalsView.snp.makeConstraints { make in
        medalsView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 34))
            make.leading.equalTo(actualWidth(w: 34))
            //: make.trailing.equalTo(actualWidth(w: -34))
            make.trailing.equalTo(actualWidth(w: -34))
            //: make.top.equalTo(actualHeight(h: 20))
            make.top.equalTo(actualHeight(h: 20))
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
        }
    }
}

// MARK: - IconClickThen

//: class SocialRankHeaderItemView: UIView {
class IconClickThen: UIView {
    //: enum SRankHeaderItemType: Int {
    enum ToPriceType: Int {
        //: case firstRankType
        case firstRankType
        //: case secondRankType
        case secondRankType
        //: case thirdRankType
        case thirdRankType
    }

    // MARK: Life

    //: public init(frame: CGRect, rankType: SRankHeaderItemType) {
    public init(frame: CGRect, rankType: ToPriceType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupItemViews(type: rankType)
        self.itemIn(type: rankType)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_valueContent.reversed(), encoding: .utf8)!)
    }

    //: lazy var headPicBgView = UIImageView().then {
    lazy var headPicBgView = UIImageView().then {
        //: $0.image = UIImage.nearCounterval(name: "icon_rank_first_bg")
        $0.image = UIImage.nearCounterval(name: (str_modelData.replacingOccurrences(of: "sign", with: "n") + String(str_cellColorName)))
    }

    //: lazy var headPic = UIImageView().then {
    lazy var headPic = UIImageView().then {
        //: $0.contentMode = .scaleAspectFill
        $0.contentMode = .scaleAspectFill
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.borderWidth = 3
        $0.layer.borderWidth = 3
    }

    //: lazy var crownImgView = UIImageView().then {
    lazy var crownImgView = UIImageView().then {
        //: $0.image = UIImage.nearCounterval(name: "icon_rank_first")
        $0.image = UIImage.nearCounterval(name: (String(str_mValue.prefix(6)) + "ank_f" + str_normalValue.lowercased()))
    }

    //: lazy var nickLabel = UILabel().then {
    lazy var nickLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .liveAttention(type: .Medium, fontSize: 18)
        $0.font = .liveAttention(type: .Medium, fontSize: 18)
        //: $0.textAlignment = .center
        $0.textAlignment = .center
    }

    //: lazy var coinButton = TalkingButton().then {
    lazy var coinButton = RoomThen().then {
        //: $0.isUserInteractionEnabled = false
        $0.isUserInteractionEnabled = false
        //: $0.setImage(UIImage.nearCounterval(name: "icon_ammount_points"), for: .normal)
        $0.setImage(UIImage.nearCounterval(name: (String(str_playerValue) + String(str_acrossData.suffix(7)) + String(str_dataValue))), for: .normal)
        //: $0.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 13)
        $0.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 13)
        //: $0.setTitle("0", for: .normal)
        $0.setTitle("0", for: .normal)
        //: $0.imageView?.contentMode = .scaleAspectFill
        $0.imageView?.contentMode = .scaleAspectFill
        //: $0.imageAlignment = .left
        $0.imageAlignment = .left
        //: $0.spaceBetweenTitleAndImage = 2
        $0.spaceBetweenTitleAndImage = 2
    }

    //: lazy var loungeImgV = UIImageView().then {
    lazy var loungeImgV = UIImageView().then {
        //: $0.image = UIImage.nearCounterval(name: "icon_lounge")
        $0.image = UIImage.nearCounterval(name: (String(str_listData.prefix(8)) + String(str_talkRequestClickValue)))
    }
}

// MARK: - Event

//: extension SocialRankHeaderItemView {
extension IconClickThen {
    //: func updateItemWithModel(model: SocialRankItemModel?, type: Int) {
    func hideType(model: EndManMeasurable?, type: Int) {
        //: guard model != nil && model?.isEmpty == false else {
        guard model != nil, model?.isEmpty == false else {
            //: self.isHidden = true
            self.isHidden = true
            //: return
            return
        }
        //: headPic.setUrlImage(urlStr: model!.headPic, placeImg: UIImage.placeHolderImage(sex: model!.sex))
        headPic.commentGesture(urlStr: model!.headPic, placeImg: UIImage.footnoteSex(sex: model!.sex))
        //: nickLabel.text = model!.nickname
        nickLabel.text = model!.nickname
        //: coinButton.setTitle("\(model!.value)", for: .normal)
        coinButton.setTitle("\(model!.value)", for: .normal)

        //: loungeImgV.isHidden = !model!.loungePlus
        loungeImgV.isHidden = !model!.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: nickLabel.snp.remakeConstraints({ make in
            nickLabel.snp.remakeConstraints { make in
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(actualHeight(h: 18))
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: })
            }
            //: loungeImgV.snp.remakeConstraints { make in
            loungeImgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                make.leading.equalTo(nickLabel.snp.trailing).offset(2)
                //: make.centerY.equalTo(nickLabel)
                make.centerY.equalTo(nickLabel)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualToSuperview().offset(-2)
                make.trailing.lessThanOrEqualToSuperview().offset(-2)
            }
            //: } else {
        } else {
            //: nickLabel.snp.remakeConstraints { make in
            nickLabel.snp.remakeConstraints { make in
                //: make.leading.equalTo(2)
                make.leading.equalTo(2)
                //: make.trailing.equalTo(-2)
                make.trailing.equalTo(-2)
                //: make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                make.top.equalTo(headPic.snp.bottom).offset(actualHeight(h: 6))
                //: make.height.equalTo(actualHeight(h: 18))
                make.height.equalTo(actualHeight(h: 18))
            }
        }

        //: if type == 0 {
        if type == 0 {
            //: coinButton.setImage(UIImage.nearCounterval(name: "icon_rank_coin"), for: .normal)
            coinButton.setImage(UIImage.nearCounterval(name: (String(str_intervalBehindText))), for: .normal)
            //: } else {
        } else {
            //: coinButton.setImage(UIImage.nearCounterval(name: "icon_rank_coin2"), for: .normal)
            coinButton.setImage(UIImage.nearCounterval(name: (str_listName.lowercased() + "_rank_co" + String(str_onName))), for: .normal)
        }
    }
}

//: extension SocialRankHeaderItemView {
extension IconClickThen {
    //: func setupItemViews(type: SRankHeaderItemType) {
    func itemIn(type: ToPriceType) {
        //: addSubview(headPicBgView)
        addSubview(headPicBgView)
        //: addSubview(crownImgView)
        addSubview(crownImgView)
        //: addSubview(headPic)
        addSubview(headPic)
        //: addSubview(nickLabel)
        addSubview(nickLabel)
        //: addSubview(coinButton)
        addSubview(coinButton)
        //: addSubview(loungeImgV)
        addSubview(loungeImgV)

        //: var size = CGSize(width: actualWidth(w: 35), height: actualWidth(w: 29))
        var size = CGSize(width: actualWidth(w: 35), height: actualWidth(w: 29))
        //: var headWidth = actualWidth(w: 62)
        var headWidth = actualWidth(w: 62)
        //: var topMargin = actualHeight(h: 6)
        var topMargin = actualHeight(h: 6)
//        var topCrownMargin = actualHeight(h: 4)

        //: switch type {
        switch type {
        //: case .firstRankType:
        case .firstRankType:
            //: headPicBgView.isHidden = false
            headPicBgView.isHidden = false
            //: crownImgView.image = UIImage.nearCounterval(name: "icon_rank_first")
            crownImgView.image = UIImage.nearCounterval(name: (String(str_mValue.prefix(6)) + "ank_f" + str_normalValue.lowercased()))
            //: headPic.layer.borderColor = UIColor.RGBA(255, 224, 58, 1).cgColor
            headPic.layer.borderColor = UIColor.equalRgba(255, 224, 58, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 40)
            headPic.layer.cornerRadius = actualWidth(w: 40)
            //: size = CGSize(width: actualWidth(w: 43), height: actualWidth(w: 36))
            size = CGSize(width: actualWidth(w: 43), height: actualWidth(w: 36))
            //: headWidth = actualWidth(w: 80)
            headWidth = actualWidth(w: 80)
            //: topMargin = actualHeight(h: 6)
            topMargin = actualHeight(h: 6)
//            topCrownMargin = actualHeight(h: 10)
        //: break
        //: case .secondRankType:
        case .secondRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.nearCounterval(name: "icon_rank_second")
            crownImgView.image = UIImage.nearCounterval(name: (String(str_handleWillText.prefix(6)) + "ank_s" + str_momentName.replacingOccurrences(of: "data", with: "d")))
            //: headPic.layer.borderColor = UIColor.RGBA(182, 199, 254, 1).cgColor
            headPic.layer.borderColor = UIColor.equalRgba(182, 199, 254, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = actualWidth(w: 31)
        //: break
        //: case .thirdRankType:
        case .thirdRankType:
            //: headPicBgView.isHidden = true
            headPicBgView.isHidden = true
            //: crownImgView.image = UIImage.nearCounterval(name: "icon_rank_third")
            crownImgView.image = UIImage.nearCounterval(name: (str_screenData.replacingOccurrences(of: "from", with: "i") + String(str_maleValue)))
            //: headPic.layer.borderColor = UIColor.RGBA(251, 166, 109, 1).cgColor
            headPic.layer.borderColor = UIColor.equalRgba(251, 166, 109, 1).cgColor
            //: headPic.layer.cornerRadius = actualWidth(w: 31)
            headPic.layer.cornerRadius = actualWidth(w: 31)
            //: break
        }

        //: headPicBgView.snp.makeConstraints { make in
        headPicBgView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.centerY.equalTo(headPic.snp.centerY).offset(7)
            make.centerY.equalTo(headPic.snp.centerY).offset(7)
            //: make.width.height.equalTo(headWidth+28)
            make.width.height.equalTo(headWidth + 28)
        }
        //: headPic.snp.makeConstraints { make in
        headPic.snp.makeConstraints { make in
            //: make.centerX.equalTo(self.snp.centerX)
            make.centerX.equalTo(self.snp.centerX)
            //: make.top.equalTo(size.height*0.8)
            make.top.equalTo(size.height * 0.8)
            //: make.width.height.equalTo(headWidth)
            make.width.height.equalTo(headWidth)
        }
        //: crownImgView.snp.makeConstraints { make in
        crownImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(headPic.snp.leading).offset(1)
            make.leading.equalTo(headPic.snp.leading).offset(1)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.size.equalTo(size)
            make.size.equalTo(size)
        }
        //: nickLabel.snp.makeConstraints { make in
        nickLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            make.top.equalTo(headPic.snp.bottom).offset(topMargin)
            //: make.height.equalTo(actualHeight(h: 18))
            make.height.equalTo(actualHeight(h: 18))
        }
        //: coinButton.snp.makeConstraints { make in
        coinButton.snp.makeConstraints { make in
            //: make.leading.equalTo(2)
            make.leading.equalTo(2)
            //: make.trailing.equalTo(-2)
            make.trailing.equalTo(-2)
            //: make.top.equalTo(nickLabel.snp.bottom).offset(2)
            make.top.equalTo(nickLabel.snp.bottom).offset(2)
            //: make.height.equalTo(actualHeight(h: 21))
            make.height.equalTo(actualHeight(h: 21))
        }
    }
}
