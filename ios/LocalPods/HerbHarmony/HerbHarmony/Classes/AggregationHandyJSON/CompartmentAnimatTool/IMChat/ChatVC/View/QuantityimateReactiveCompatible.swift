
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_minimumViewSelectedText:[UInt8] = [0x97,0x90,0x97,0x8a,0xd6,0x9d,0x91,0x9a,0x9b,0x8c,0xc4,0xd7,0xde,0x96,0x9f,0x8d,0xde,0x90,0x91,0x8a,0xde,0x9c,0x9b,0x9b,0x90,0xde,0x97,0x93,0x8e,0x92,0x9b,0x93,0x9b,0x90,0x8a,0x9b,0x9a]

private func roomText(image num: UInt8) -> UInt8 {
    return num ^ 254
}

/*: "group_someoneatme" :*/
fileprivate let str_modelName:[Character] = ["g","r","o","u","p","_","s","o","m","e","o","n","e","a","t","m","e"]

/*: "Someone@ me" :*/
fileprivate let str_areaValue:String = "position status if equalSomeo"
fileprivate let str_addContent:String = "you add self playerne@ me"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityimateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class QuantityimateReactiveCompatible: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        beatificationSubviews()
        //: setupSubViewsConstraint()
        standIn()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_minimumViewSelectedText.map{roomText(image: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_modelName))), for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_modelName))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(str_areaValue.suffix(5)) + String(str_addContent.suffix(6))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.userError(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension QuantityimateReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func beatificationSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func standIn() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
