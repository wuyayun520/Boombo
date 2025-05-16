
//: Declare String Begin

/*: "id" :*/
fileprivate let str_textName:[Character] = ["i","d"]

/*: "reply" :*/
fileprivate let str_toShowValue:String = "repcontent"

/*: :  :*/
fileprivate let str_inputData:[Character] = [":"," "]

/*:  : :*/
fileprivate let str_frameValue:String = " device"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopCellHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/23.
//

//: import UIKit
import UIKit

//: struct TalkingCommentModel: HandyJSON {
struct PopCellHandyJSON: HandyJSON {
    //: var cid: String?
    var cid: String? // 评论的id
    //: var uid: String?
    var uid: String?
    //: var age: Int?
    var age: Int?
    //: var headPic: String?
    var headPic: String?
    //: var nickname: String?
    var nickname: String?
    //: var sex: String?
    var sex: String?
    //: var content: String?
    var content: String?
    //: var replyId: String?
    var replyId: String? // 被回复id
    //: var replyUser: String?
    var replyUser: String? // 被回复用户
    //: var addTime: String?
    var addTime: String?
    //: var totalReply: Int = 0
    var totalReply: Int = 0
    //: var itemHeight: CGFloat?
    var itemHeight: CGFloat?
    //: var isTPAuth = false
    var isTPAuth = false
    //: var level: Int?
    var level: Int?
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame = ""    // 头像框
    var headPicFrame = "" // 头像框

    //: var comment = [TalkingCommentReplyModel]()
    var comment = [ChangeSectionHandyJSON]()

    //: mutating func mapping(mapper: HelpingMapper) {
    mutating func mapping(mapper: HelpingMapper) {
        //: mapper <<<
        mapper <<<
            //: self.cid <-- "id"
            self.cid <-- "id"
    }
}

//: extension TalkingCommentModel {
extension PopCellHandyJSON {
    //: mutating func caculateCommentItemHeight() {
    mutating func prototypicalHeight() {
        //: var tempContent = ""
        var tempContent = ""
        //: if replyUser?.count ?? 0>0 {
        if replyUser?.count ?? 0 > 0 {
            //: if LanguageManager.shared.direction == .leftToRight {
            if MeanSunLanguageManager.shared.direction == .leftToRight {
                //: tempContent = "reply".localized + "\(replyUser!): \(content!)"
                tempContent = (str_toShowValue.replacingOccurrences(of: "content", with: "ly")).localized + "\(replyUser!): \(content!)"
                //: } else {
            } else {
                //: tempContent = "\(content!) :\(replyUser!)" + "reply".localized
                tempContent = "\(content!) :\(replyUser!)" + (str_toShowValue.replacingOccurrences(of: "content", with: "ly")).localized
            }

            //: } else {
        } else {
            //: tempContent = content!
            tempContent = content!
        }

        //: let sizeheight =  Int(TalkingMomentTextSizeView.caculateSizeWithText(text: tempContent, size: CGSize.init(width: ScreenWidth-70, height: CGFloat(MAXFLOAT)), font: UIFont.liveAttention(type: .Regular, fontSize: 16), lineNumber: 0).height)
        let sizeheight = Int(ButtonBackSizeView.level(text: tempContent, size: CGSize(width: kLet_senseContent - 70, height: CGFloat(MAXFLOAT)), font: UIFont.liveAttention(type: .Regular, fontSize: 16), lineNumber: 0).height)

        //: itemHeight = 58+CGFloat(sizeheight)
        itemHeight = 58 + CGFloat(sizeheight)
    }
}
