
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let str_attentionContent:String = "bg_taheight text icon leading"
fileprivate let str_inheritTempData:String = "hmenu"

/*: "bg_talk_me" :*/
fileprivate let str_viewValue:String = "lab image errorbg_ta"
fileprivate let str_turnData:[Character] = ["l","k","_","m","e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_attentionData:[UInt8] = [0xeb,0xec,0xeb,0xf6,0xaa,0xe1,0xed,0xe6,0xe7,0xf0,0xb8,0xab,0xa2,0xea,0xe3,0xf1,0xa2,0xec,0xed,0xf6,0xa2,0xe0,0xe7,0xe7,0xec,0xa2,0xeb,0xef,0xf2,0xee,0xe7,0xef,0xe7,0xec,0xf6,0xe7,0xe6]

private func sectionCancelAdd(channel num: UInt8) -> UInt8 {
    return num ^ 130
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: TUIMessageCellData {
@objcMembers public class CollectionReactiveCompatible: TUIMessageCellData {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.inwardsLoad(name: (String(str_attentionContent.prefix(5)) + "lk_ot" + str_inheritTempData.replacingOccurrences(of: "menu", with: "er")))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.inwardsLoad(name: (String(str_viewValue.suffix(5)) + String(str_turnData)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_attentionData.map{sectionCancelAdd(channel: $0)}, encoding: .utf8)!)
    }
}
