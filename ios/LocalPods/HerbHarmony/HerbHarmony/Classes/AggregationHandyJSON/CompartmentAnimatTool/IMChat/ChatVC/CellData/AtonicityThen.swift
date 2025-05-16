
//: Declare String Begin

/*: "title" :*/
fileprivate let str_lineViewContent:[Character] = ["t","i","t","l","e"]

/*: "content" :*/
fileprivate let str_locationContent:String = "CONTENT"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataName:[UInt8] = [0x3a,0x3d,0x3a,0x27,0x7b,0x30,0x3c,0x37,0x36,0x21,0x69,0x7a,0x73,0x3b,0x32,0x20,0x73,0x3d,0x3c,0x27,0x73,0x31,0x36,0x36,0x3d,0x73,0x3a,0x3e,0x23,0x3f,0x36,0x3e,0x36,0x3d,0x27,0x36,0x37]

private func itemSession(text num: UInt8) -> UInt8 {
    return num ^ 83
}

/*: "img" :*/
fileprivate let str_makeData:String = "ipic"

/*: "jumpKey" :*/
fileprivate let str_iconName:String = "jumpKesquare let height self"
fileprivate let str_eventLabelTitle:String = "user"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtonicityThen.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: @objcMembers public class AtonicityThen: TalkingChatMsgBaseCellData {
@objcMembers public class AtonicityThen: CollectionReactiveCompatible {
    // 数据
    //: var extraJson: JSON {
    var extraJson: JSON {
        //: return JSON(extraDict)
        return JSON(extraDict)
    }

    // banner size
    //: var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    var bannerSize = CGSize(width: actualWidth(w: 210), height: actualWidth(w: 50))
    // 是否有标题
    //: var hasBanner = false
    var hasBanner = false
    // 标题高度
    //: var titleHeight = 0.0
    var titleHeight = 0.0
    // 内容高度
    //: var contentHeight = 0.0
    var contentHeight = 0.0
    // 跳转高度
    //: var jumpHeight = 0.0
    var jumpHeight = 0.0
    // 标题富文本
    //: public lazy var titleAttrStr: NSMutableAttributedString = {
    public lazy var titleAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["title"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(String(str_lineViewContent))].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    // 内容富文本
    //: public lazy var contentAttrStr: NSMutableAttributedString = {
    public lazy var contentAttrStr: NSMutableAttributedString = {
        //: let attributes = [.foregroundColor: UIColor.appValueColor(), .font: UIFont.liveAttention(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.colorPush(), .font: UIFont.liveAttention(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
        //: let attributeStr = NSMutableAttributedString(string: extraJson["content"].stringValue)
        let attributeStr = NSMutableAttributedString(string: extraJson[(str_locationContent.lowercased())].stringValue)
        //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
        //: return attributeStr
        return attributeStr
        //: }()
    }()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataName.map{itemSession(text: $0)}, encoding: .utf8)!)
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: override public func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let height = self.height(ofWidth: 0)-20
        let height = self.height(ofWidth: 0) - 20
        //: return CGSize(width: bannerSize.width, height: height)
        return CGSize(width: bannerSize.width, height: height)
    }

    //: override public func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth width: CGFloat) -> CGFloat {
        //: var height = 0.0
        var height = 0.0
        //: if extraJson["img"].stringValue.count > 0 {
        if extraJson[(str_makeData.replacingOccurrences(of: "pic", with: "mg"))].stringValue.count > 0 {
            //: height += bannerSize.height
            height += bannerSize.height
            //: hasBanner = true
            hasBanner = true
        }
        //: height += 10
        height += 10
        //: if extraJson["title"].stringValue.count > 0 {
        if extraJson[(String(str_lineViewContent))].stringValue.count > 0 {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.titleAttrStr)
            //: if let titleH = yyLayout?.textBoundingSize.height {
            if let titleH = yyLayout?.textBoundingSize.height {
                //: titleHeight = titleH
                titleHeight = titleH
                //: height += titleHeight
                height += titleHeight
            }
        }
        //: if extraJson["content"].stringValue.count > 0 {
        if extraJson[(str_locationContent.lowercased())].stringValue.count > 0 {
            //: height += 4
            height += 4
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: bannerSize.width-20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: bannerSize.width - 20, height: CGFLOAT_MAX), text: self.contentAttrStr)
            //: if let contentH = yyLayout?.textBoundingSize.height {
            if let contentH = yyLayout?.textBoundingSize.height {
                //: contentHeight = contentH
                contentHeight = contentH
                //: height += contentHeight
                height += contentHeight
            }
        }
        //: height += 10
        height += 10
        //: if extraJson["jumpKey"].stringValue.count > 0 {
        if extraJson[(String(str_iconName.prefix(6)) + str_eventLabelTitle.replacingOccurrences(of: "user", with: "y"))].stringValue.count > 0 {
            //: jumpHeight = 35
            jumpHeight = 35
            //: height += jumpHeight
            height += jumpHeight
        }
        // cell间距
        //: height += 20
        height += 20

        //: return height
        return height
    }
}
