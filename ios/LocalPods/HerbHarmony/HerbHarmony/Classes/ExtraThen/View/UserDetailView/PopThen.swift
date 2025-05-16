
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_requestContent:[UInt8] = [0x33,0x38,0x33,0x3e,0xf2,0x2d,0x39,0x2e,0x2f,0x3c,0x4,0xf3,0xea,0x32,0x2b,0x3d,0xea,0x38,0x39,0x3e,0xea,0x2c,0x2f,0x2f,0x38,0xea,0x33,0x37,0x3a,0x36,0x2f,0x37,0x2f,0x38,0x3e,0x2f,0x2e]

fileprivate func inviteAdd(face num: UInt8) -> UInt8 {
    let value = Int(num) + 54
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagItemCell: UICollectionViewCell {
class PopThen: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.observerAdd()
        //: self.setupSubViewsConstraint()
        self.towardVoice()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_requestContent.map{inviteAdd(face: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var bgView: UIView = {
    lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .RGBA(0.92, 0.91, 1, 1)
        view.backgroundColor = .equalRgba(0.92, 0.91, 1, 1)
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: lazy var tagLabel: UILabel = {
    lazy var tagLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 14)
        lb.font = .liveAttention(type: .Regular, fontSize: 14)
        //: lb.textColor = .RGBA(0.92, 0.91, 1, 1)
        lb.textColor = .equalRgba(0.92, 0.91, 1, 1)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: Layout

//: extension TalkingUserDetailTagItemCell {
extension PopThen {
    //: private func setupSubviews() {
    private func observerAdd() {
        //: contentView.addSubview(bgView)
        contentView.addSubview(bgView)
        //: bgView.addSubview(tagLabel)
        bgView.addSubview(tagLabel)
    }

    //: private func setupSubViewsConstraint() {
    private func towardVoice() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }

        //: tagLabel.snp.makeConstraints { make in
        tagLabel.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
