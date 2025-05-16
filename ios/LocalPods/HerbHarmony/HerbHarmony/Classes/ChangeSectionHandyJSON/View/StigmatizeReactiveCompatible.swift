
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toValue:[UInt8] = [0xd0,0xd7,0xd0,0xcd,0x91,0xda,0xd6,0xdd,0xdc,0xcb,0x83,0x90,0x99,0xd1,0xd8,0xca,0x99,0xd7,0xd6,0xcd,0x99,0xdb,0xdc,0xdc,0xd7,0x99,0xd0,0xd4,0xc9,0xd5,0xdc,0xd4,0xdc,0xd7,0xcd,0xdc,0xdd]

private func noModel(information num: UInt8) -> UInt8 {
    return num ^ 185
}

/*: "#F0F0F0" :*/
fileprivate let str_sharedData:[Character] = ["#"]
fileprivate let str_targetValue:[Character] = ["F","0","F","0","F","0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let str_leadingTitle:String = "momentcon"
fileprivate let str_conversationText:String = "ts_noticeclick event return page name"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let str_labName:[UInt8] = [0x1,0x2a,0x2b,0xa7,0xc5,0xdc,0x31,0x65,0x35,0x2a,0x36,0x31,0x65,0x26,0x2a,0x2b,0x31,0x20,0x2b,0x31,0x65,0x31,0x2d,0x24,0x31,0x65,0x2c,0x2b,0x21,0x30,0x26,0x20,0x36,0x65,0x2a,0x31,0x2d,0x20,0x37,0x36,0x65,0x31,0x2a,0x65,0x36,0x20,0x2b,0x21,0x65,0x22,0x2c,0x23,0x31,0x36,0x65,0x2a,0x37,0x65,0x2a,0x31,0x2d,0x20,0x37,0x65,0x28,0x2a,0x2b,0x20,0x3c,0x68,0x37,0x20,0x29,0x24,0x31,0x20,0x21,0x65,0x26,0x2c,0x2b,0x31,0x20,0x2b,0x31,0x6b]

private func sizeList(track num: UInt8) -> UInt8 {
    return num ^ 69
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StigmatizeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class StigmatizeReactiveCompatible: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toValue.map{noModel(information: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        caseEqual()
        //: setupSubViewsConstraint()
        doingUser()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(str_sharedData) + String(str_targetValue)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearCounterval(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.nearCounterval(name: (str_leadingTitle.replacingOccurrences(of: "moment", with: "i") + "_fbmomen" + String(str_conversationText.prefix(9)))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: str_labName.map{sizeList(track: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.liveAttention(type: .Regular, fontSize: 13)
        lab.font = UIFont.liveAttention(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.colorPush()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension StigmatizeReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func caseEqual() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func doingUser() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: kLet_senseContent - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: kLet_senseContent - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
