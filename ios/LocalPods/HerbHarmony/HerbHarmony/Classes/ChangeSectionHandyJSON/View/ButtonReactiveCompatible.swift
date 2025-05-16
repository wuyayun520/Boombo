
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_withName:[UInt8] = [0x34,0x39,0x34,0x3f,0xf3,0x2e,0x3a,0x2f,0x30,0x3d,0x5,0xf4,0xeb,0x33,0x2c,0x3e,0xeb,0x39,0x3a,0x3f,0xeb,0x2d,0x30,0x30,0x39,0xeb,0x34,0x38,0x3b,0x37,0x30,0x38,0x30,0x39,0x3f,0x30,0x2f]

fileprivate func makeView(inside num: UInt8) -> UInt8 {
    let value = Int(num) - 203
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingMomentTextContentView: UIView {
class ButtonReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: customUI()
        oldMake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_withName.map{makeView(inside: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func oldMake() {
        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalTo(self.snp.bottom)
            make.bottom.equalTo(self.snp.bottom)
        }
    }

    //: lazy var contentLabel: UILabel = {
    lazy var contentLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 17)
        label.font = .liveAttention(type: .Regular, fontSize: 17)
        //: label.textColor = .appValueColor()
        label.textColor = .colorPush()
        //: label.numberOfLines = 3
        label.numberOfLines = 3
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()
}

//: extension TalkingMomentTextContentView {
extension ButtonReactiveCompatible {
    //: func configText(text: String, isMomentDetail: Bool) {
    func modelDetail(text: String, isMomentDetail _: Bool) {
        //: contentLabel.text = text
        contentLabel.text = text
        //: contentLabel.numberOfLines = 0
        contentLabel.numberOfLines = 0
    }
}
