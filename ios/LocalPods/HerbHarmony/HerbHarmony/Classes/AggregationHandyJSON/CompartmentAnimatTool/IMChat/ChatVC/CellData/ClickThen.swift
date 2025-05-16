
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_iconName:[UInt8] = [0x8e,0x89,0x8e,0x93,0xcf,0x84,0x88,0x83,0x82,0x95,0xdd,0xce,0xc7,0x8f,0x86,0x94,0xc7,0x89,0x88,0x93,0xc7,0x85,0x82,0x82,0x89,0xc7,0x8e,0x8a,0x97,0x8b,0x82,0x8a,0x82,0x89,0x93,0x82,0x83]

private func fromView(intimate num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "My interests：%@" :*/
fileprivate let str_timeName:String = "wrap"
fileprivate let str_failData:[Character] = ["y"," ","i","n","t","e","r","e","s","t","s","：","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class ClickThen: TalkingChatMsgBaseCellData {
@objcMembers public class ClickThen: CollectionReactiveCompatible {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_iconName.map{fromView(intimate: $0)}, encoding: .utf8)!)
    }

    //: override public func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: var contentHeight = 85
        var contentHeight = 85
        /// 为空时必须初始化
        //: let userInfoModel = self.msgModel.userInfoModel ?? CoverThen.init()
        let userInfoModel = self.msgModel.userInfoModel ?? CoverThen()
        //: if !userInfoModel.uid.isEmptyString {
        if !userInfoModel.uid.isEmptyString {
            //: contentHeight += 80
            contentHeight += 80
            //: if userInfoModel.interest.count > 0 {
            if userInfoModel.interest.count > 0 {
                //: let arr_1: NSArray = userInfoModel.interest as NSArray
                let arr_1: NSArray = userInfoModel.interest as NSArray
                //: let str_1 = arr_1.componentsJoined(by: "，") as String
                let str_1 = arr_1.componentsJoined(by: "，") as String
                //: let str: String = "My interests：%@".localizedArguments(str_1)
                let str = (str_timeName.replacingOccurrences(of: "wrap", with: "M") + String(str_failData)).localizedArguments(str_1)
                //: let attributes = [.font: UIFont.behindUpRoom(fontSize: 15)] as [NSAttributedString.Key: Any]
                let attributes = [.font: UIFont.behindUpRoom(fontSize: 15)] as [NSAttributedString.Key: Any]

                //: let attributedStr = NSAttributedString(string: str, attributes: attributes)
                let attributedStr = NSAttributedString(string: str, attributes: attributes)
                //: let contentSize = attributedStr.boundingRect(with: CGSize.init(width: ScreenWidth-54, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil ).size
                let contentSize = attributedStr.boundingRect(with: CGSize(width: kLet_senseContent - 54, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size
                //: contentHeight += 8 + Int(contentSize.height)
                contentHeight += 8 + Int(contentSize.height)
            }
            //: if userInfoModel.picture.count > 0 {
            if userInfoModel.picture.count > 0 {
                //: contentHeight += 92
                contentHeight += 92
            }
        }
        //: return CGSize(width: ScreenWidth, height: CGFloat(contentHeight))
        return CGSize(width: kLet_senseContent, height: CGFloat(contentHeight))
    }
}
