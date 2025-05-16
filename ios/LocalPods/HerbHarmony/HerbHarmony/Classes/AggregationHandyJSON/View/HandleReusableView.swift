
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_startValue:[UInt8] = [0x2,0x5,0x2,0x1f,0x43,0x8,0x4,0xf,0xe,0x19,0x51,0x42,0x4b,0x3,0xa,0x18,0x4b,0x5,0x4,0x1f,0x4b,0x9,0xe,0xe,0x5,0x4b,0x2,0x6,0x1b,0x7,0xe,0x6,0xe,0x5,0x1f,0xe,0xf]

private func modelSizeImage(array num: UInt8) -> UInt8 {
    return num ^ 107
}

/*: "#30D00B" :*/
fileprivate let str_pathName:[Character] = ["#","3","0","D","0","0","B"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleReusableView.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListViewItemCell: UICollectionViewCell {
class HandleReusableView: UICollectionViewCell {
    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_startValue.map{modelSizeImage(array: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        noUp()
        //: setupSubViewsConstraint()
        toMain()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.layer.cornerRadius = 35
        v.layer.cornerRadius = 35
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var onlineStatus: UIView = {
    private lazy var onlineStatus: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#30D00B")
        v.backgroundColor = UIColor(hex: (String(str_pathName)))
        //: v.layer.cornerRadius = 5
        v.layer.cornerRadius = 5
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListViewItemCell {
extension HandleReusableView {
    /// 刷新cell
    //: func refreshItem(_ model: ILikeListModel) {
    func turn(_ model: ListLeadingHandyJSON) {
        //: headImgView.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeHolderImage(sex: model.sex))
        headImgView.commentGesture(urlStr: model.headPic, placeImg: UIImage.footnoteSex(sex: model.sex))
        //: onlineStatus.isHidden = (model.onlineStatus == 0)
        onlineStatus.isHidden = (model.onlineStatus == 0)
    }
}

// MARK: - Layout

//: extension ILikeListViewItemCell {
extension HandleReusableView {
    /// 添加视图
    //: private func setupSubviews() {
    private func noUp() {
        //: contentView.addSubview(headImgView)
        contentView.addSubview(headImgView)
        //: contentView.addSubview(onlineStatus)
        contentView.addSubview(onlineStatus)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func toMain() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }

        //: onlineStatus.snp.makeConstraints { make in
        onlineStatus.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            make.trailing.equalTo(headImgView.snp.trailing).offset(-3)
            //: make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            make.bottom.equalTo(headImgView.snp.bottom).offset(-3)
            //: make.width.height.equalTo(10)
            make.width.height.equalTo(10)
        }
    }
}
