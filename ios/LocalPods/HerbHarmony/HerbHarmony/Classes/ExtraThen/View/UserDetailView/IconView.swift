
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_tableContent:[UInt8] = [0xe7,0xec,0xe7,0xf2,0xa6,0xe1,0xed,0xe2,0xe3,0xf0,0xb8,0xa7,0x9e,0xe6,0xdf,0xf1,0x9e,0xec,0xed,0xf2,0x9e,0xe0,0xe3,0xe3,0xec,0x9e,0xe7,0xeb,0xee,0xea,0xe3,0xeb,0xe3,0xec,0xf2,0xe3,0xe2]

fileprivate func sharePage(nearby num: UInt8) -> UInt8 {
    let value = Int(num) - 126
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_Topping_bg" :*/
fileprivate let str_equalTitle:[Character] = ["i","c","o","n","_","T","o","p","p"]
fileprivate let str_infoData:String = "ing_bgtext make path"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_tagValue:String = "image cell block self selfbtn_"
fileprivate let str_viewName:String = "ic_sbackground text element"

/*: "Reviewing" :*/
fileprivate let str_giftContent:String = "to in pop make ifRevie"

/*: "#FF506D" :*/
fileprivate let str_unprecedentedData:String = "length equal self#F"
fileprivate let str_playerNumberText:String = "F506style"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconView.swift
//  AbroadTalking
//
//  Created by young on 2023/5/23.
//

//: import UIKit
import UIKit

//: class TalkingPostItemCell: UICollectionViewCell {
class IconView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_tableContent.map{sharePage(nearby: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: setupSubviews()
        drawingLots()
        //: setupSubViewsConstraint()
        argument()
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: icon.layer.cornerRadius = 6
        icon.layer.cornerRadius = 6
        //: icon.layer.masksToBounds = true
        icon.layer.masksToBounds = true
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var topImage: UIImageView = {
    private lazy var topImage: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.nearCounterval(name: "icon_Topping_bg")
        img.image = UIImage.nearCounterval(name: (String(str_equalTitle) + String(str_infoData.prefix(6))))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.nearCounterval(name: "btn_dynamic_stop_nor")
        img.image = UIImage.nearCounterval(name: (String(str_tagValue.suffix(4)) + "dynam" + String(str_viewName.prefix(4)) + "top_nor"))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var reViewingLB: UILabel = {
    private lazy var reViewingLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_giftContent.suffix(5)) + "wing").localized
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_unprecedentedData.suffix(2)) + str_playerNumberText.replacingOccurrences(of: "style", with: "D")))
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.font = UIFont.behindUpRoom(fontSize: 12)
        lb.font = UIFont.behindUpRoom(fontSize: 12)
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingPostItemCell {
extension IconView {
    /// 刷新
    //: func refreshItem(_ model: TalkingUserInfoMomentItemModel) {
    func root(_ model: PopSignTransformable) {
        //: icon.setUrlImage(urlStr: model.thumb_url)
        icon.nearSquare(urlStr: model.thumb_url)
        //: topImage.isHidden = !model.pinStatus
        topImage.isHidden = !model.pinStatus
        //: reViewingLB.isHidden = !model.reviewing
        reViewingLB.isHidden = !model.reviewing
        //: playimageView.isHidden = model.videoUrl.count > 0 ? false:true
        playimageView.isHidden = model.videoUrl.count > 0 ? false : true
    }
}

// MARK: - Layout

//: extension TalkingPostItemCell {
extension IconView {
    /// 添加视图
    //: private func setupSubviews() {
    private func drawingLots() {
        //: contentView.addSubview(icon)
        contentView.addSubview(icon)
        //: contentView.addSubview(topImage)
        contentView.addSubview(topImage)
        //: contentView.addSubview(playimageView)
        contentView.addSubview(playimageView)
        //: contentView.addSubview(reViewingLB)
        contentView.addSubview(reViewingLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func argument() {
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.height.width.equalTo(actualWidth(w: 113))
            make.height.width.equalTo(actualWidth(w: 113))
        }

        //: topImage.snp.makeConstraints { make in
        topImage.snp.makeConstraints { make in
            //: make.leading.top.equalTo(5)
            make.leading.top.equalTo(5)
            //: make.size.equalTo(CGSize(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }

        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalTo(icon)
            make.center.equalTo(icon)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: reViewingLB.snp.makeConstraints { make in
        reViewingLB.snp.makeConstraints { make in
            //: make.leading.top.equalTo(5)
            make.leading.top.equalTo(5)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
