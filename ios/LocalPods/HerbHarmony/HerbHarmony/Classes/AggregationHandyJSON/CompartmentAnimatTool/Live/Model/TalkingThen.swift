
//: Declare String Begin

/*: "MF:LiveChatWelMsg" :*/
fileprivate let str_messageText:[Character] = ["M","F",":","L","i","v","e","C","h","a","t","W","e","l","M","s"]
fileprivate let str_interactionName:[Character] = ["g"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_senseText:String = "MF:Parself make"
fileprivate let str_arrayText:[Character] = ["t","y","C","h","a","t","W","e","l","M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_errorData:String = "handle view successMF:Liv"
fileprivate let str_itemData:String = "lab input makerizeMsg"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let str_plusTitle:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","P","r"]
fileprivate let str_listData:[Character] = ["i"]
fileprivate let str_pageName:[Character] = ["z","e","M","s","g"]

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let str_makeName:[Character] = ["M","F",":","L","i","v"]
fileprivate let str_contentData:[Character] = ["e","C","h","a","t","A","t","t"]
fileprivate let str_toTitle:String = "listti"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let str_momentCountContent:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","A","t","t","e","n","t","i","o","n","M","s","g"]

/*: ：" :*/
fileprivate let str_frameName:[Character] = ["\u{ff1a}"]

/*: "#BAFBFF" :*/
fileprivate let str_indexTitle:String = "#"
fileprivate let str_succeedValue:String = "BAmodelBmodelmodel"

/*: "uid" :*/
fileprivate let str_nearText:String = "uroom"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_colorName:[Character] = ["<","a","t",">","@","[","\\","S","\\","s","]","+","?"]
fileprivate let str_girlNorValue:[Character] = ["<","/","a","t",">"]

/*: "Sent " :*/
fileprivate let str_videoValue:[Character] = ["S","e","n","t"," "]

/*:  " :*/
fileprivate let str_labName:[Character] = [" "]

/*: "#FFA4CF" :*/
fileprivate let str_bubbleData:String = "#FFA4CFplayer var"

/*: "* :*/
fileprivate let str_sizeData:[Character] = ["*"]

/*: "Here comes " :*/
fileprivate let str_tableName:[Character] = ["H","e","r","e"," ","c"]
fileprivate let str_popText:String = "table foromes "

/*: "#FFE386" :*/
fileprivate let str_indexModelPartyData:[Character] = ["#","F","F","E","3","8","6"]

/*:   :*/
fileprivate let str_matchValue:String = " "

/*: "followed the anchor" :*/
fileprivate let str_bringValue:String = "changell"
fileprivate let str_putReplyData:String = " the anchmanager group"
fileprivate let str_recordingName:[Character] = ["o","r"]

/*: "party_seat_host" :*/
fileprivate let str_upName:String = "palastty"
fileprivate let str_sharedName:[Character] = ["s","t"]

/*: "level_ :*/
fileprivate let str_roomTitle:[Character] = ["l","e","v","e","l","_"]

/*: "icon_lounge" :*/
fileprivate let str_blockName:String = "icon_right app interaction"
fileprivate let str_petName:[Character] = ["g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/11.
//

//: import UIKit
import UIKit

//: typealias ActionUserBlock = (_ atUid: String?) -> Void
typealias ActionUserBlock = (_ atUid: String?) -> Void

//: class TalkingLiveRoomDammuCellData: NSObject {
class TalkingThen: NSObject {
    //: var actionUserBlock: ActionUserBlock?
    var actionUserBlock: ActionUserBlock?
    //: var longUserBlock: ActionUserBlock?
    var longUserBlock: ActionUserBlock?

    //: var model = TalkingLiveRoomDanmuModel.init()
    var model = QuantityLeadingTransformable()

    //: func caculateMsgHeight(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func afterResource(model: QuantityLeadingTransformable) -> QuantityLeadingTransformable {
        //: self.model = model
        self.model = model
        /// 普通文本消息,礼物消息
        //: if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
        if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
            //: caculateComment()
            rangeMake()
            /// 欢迎消息
            //: } else if self.model.MsgExtension == "MF:LiveChatWelMsg" || self.model.MsgExtension == "MF:PartyChatWelMsg" {
        } else if self.model.MsgExtension == (String(str_messageText) + String(str_interactionName)) || self.model.MsgExtension == (String(str_senseText.prefix(6)) + String(str_arrayText)) {
            //: caculateWelMsg()
            enlist()
            /// 中奖消息
            //: } else if self.model.MsgExtension == "MF:LiveChatPrizeMsg" || self.model.MsgExtension == "MF:PartyChatPrizeMsg" {
        } else if self.model.MsgExtension == (String(str_errorData.suffix(6)) + "eChatP" + String(str_itemData.suffix(7))) || self.model.MsgExtension == (String(str_plusTitle) + String(str_listData) + String(str_pageName)) {
            //: self.model.bgColor = UIColor.init(rgb: 0x8C7BFD, alpha: 0.4)
            self.model.bgColor = UIColor(rgb: 0x8C7BFD, alpha: 0.4)
            //: caculatewinningMsg()
            towardAdd()
            /// 关注消息
            //: } else if self.model.MsgExtension == "MF:LiveChatAttentionMsg" || self.model.MsgExtension == "MF:PartyChatAttentionMsg"  {
        } else if self.model.MsgExtension == (String(str_makeName) + String(str_contentData) + str_toTitle.replacingOccurrences(of: "list", with: "en") + "onMsg") || self.model.MsgExtension == (String(str_momentCountContent)) {
            //: caculAttionMsg()
            result()
        }
        //: return self.model
        return self.model
    }

    /// 弹幕消息
    //: func caculateComment() {
    func rangeMake() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = toBorder()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let totalAttr = getImagesAttributedString()
        let totalAttr = incur()
        // 名字
        //: let firstStr = "\(self.model.user?.nickname ?? "")："
        let firstStr = "\(self.model.user?.nickname ?? "")："
        //: let nameAttr = getAttributed(text: firstStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameAttr = theLevel(text: firstStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (str_indexTitle.capitalized + str_succeedValue.replacingOccurrences(of: "model", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))

        //: if self.model.msgInfo?.messageType == 1 {
        if self.model.msgInfo?.messageType == 1 {
            // 内容
            //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let content = theLevel(text: self.model.msgInfo?.content ?? "", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(content)
            nameAttr.append(content)

            //: } else if self.model.msgInfo?.messageType == 2 {
        } else if self.model.msgInfo?.messageType == 2 {
            //: let jumps = self.model.msgInfo?.jumps.first
            let jumps = self.model.msgInfo?.jumps.first
            //: let atUid = jumps?["uid"] as? Int ?? 0
            let atUid = jumps?[(str_nearText.replacingOccurrences(of: "room", with: "id"))] as? Int ?? 0
            //: let text = self.model.msgInfo?.content ?? ""
            let text = self.model.msgInfo?.content ?? ""
            //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
            let regex = try! NSRegularExpression(pattern: (String(str_colorName) + String(str_girlNorValue)), options: [])
            //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            //: let matchRange =  result.first?.range
            let matchRange = result.first?.range
            //: if  matchRange?.length ?? 0 > 9 {
            if matchRange?.length ?? 0 > 9 {
                //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                //: let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count )
                let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count)
                //: let atName = getAttributed(text: subStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: "\(atUid)")
                let atName = theLevel(text: subStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (str_indexTitle.capitalized + str_succeedValue.replacingOccurrences(of: "model", with: "F")))!, isTap: true, atUid: "\(atUid)")
                //: let content = getAttributed(text: contentStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                let content = theLevel(text: contentStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                //: nameAttr.append(atName)
                nameAttr.append(atName)
                //: nameAttr.append(content)
                nameAttr.append(content)
            }

            //: } else if self.model.msgInfo?.messageType == 3 {
        } else if self.model.msgInfo?.messageType == 3 {
            //: guard self.model.gift != nil else { return }
            guard self.model.gift != nil else { return }
            //: let sentAttr = getAttributed(text:  "Sent ".localized, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let sentAttr = theLevel(text: (String(str_videoValue)).localized, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(sentAttr)
            nameAttr.append(sentAttr)
            //: if let toUser = self.model.toUser {
            if let toUser = self.model.toUser { // 送礼接收人
                //: let nickNameAttr = getAttributed(text: "\(toUser.nickname) ", font: UIFont.liveAttention(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: true, atUid: String(toUser.uid))
                let nickNameAttr = theLevel(text: "\(toUser.nickname) ", font: UIFont.liveAttention(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_bubbleData.prefix(7))))!, isTap: true, atUid: String(toUser.uid))
                //: nameAttr.append(nickNameAttr)
                nameAttr.append(nickNameAttr)
            }
            //: let giftnameStr = changeGiftName(giftmodel: self.model.gift!)
            let giftnameStr = exceptCreateTransaction(giftmodel: self.model.gift!)
            //: let giftAttr = getAttributed(text: giftnameStr, font: UIFont.liveAttention(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let giftAttr = theLevel(text: giftnameStr, font: UIFont.liveAttention(type: .Medium, fontSize: 14), color: UIColor(hex: (String(str_bubbleData.prefix(7))))!, isTap: false, atUid: nil)
            //: nameAttr.append(giftAttr)
            nameAttr.append(giftAttr)

            //: let size = CGSize(width: 24, height: 24)
            let size = CGSize(width: 24, height: 24)
            //: let imag = self.model.gift?.giftImg?.resize(with: size)
            let imag = self.model.gift?.giftImg?.beforeCustom(with: size)
            //: let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.behindUpRoom(fontSize: 14), alignment: .center)
            let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.behindUpRoom(fontSize: 14), alignment: .center)
            //: giftIcon.yy_paragraphStyle = paragraphStyle()
            giftIcon.yy_paragraphStyle = toBorder()
            //: nameAttr.append(giftIcon)
            nameAttr.append(giftIcon)

            //: let numAttr = self.getAttributed(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let numAttr = self.theLevel(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (String(str_bubbleData.prefix(7))))!, isTap: false, atUid: nil)
            //: nameAttr.append(numAttr)
            nameAttr.append(numAttr)
        }

        //: totalAttr.append(nameAttr)
        totalAttr.append(nameAttr)
        //: nameAttr.yy_paragraphStyle = paraStyle
        nameAttr.yy_paragraphStyle = paraStyle
        //: self.model.msgAttribText = totalAttr
        self.model.msgAttribText = totalAttr
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        equalUser(attribText: self.model.msgAttribText)
    }

    /// 公告富文本
    //: func showAnnouncementMsg(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func groupAction(model: QuantityLeadingTransformable) -> QuantityLeadingTransformable {
        //: self.model = model
        self.model = model
        // 内容
        //: let paraStyle = paragraphStyle()
        let paraStyle = toBorder()
        //: let attachText = NSMutableAttributedString.init()
        let attachText = NSMutableAttributedString()
        //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: false, atUid: nil)
        let content = theLevel(text: self.model.msgInfo?.content ?? "", font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (str_indexTitle.capitalized + str_succeedValue.replacingOccurrences(of: "model", with: "F")))!, isTap: false, atUid: nil)
        //: attachText.append(content)
        attachText.append(content)

        //: attachText.yy_paragraphStyle = paraStyle
        attachText.yy_paragraphStyle = paraStyle

        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText

        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        equalUser(attribText: self.model.msgAttribText)

        //: return self.model
        return self.model
    }

    /// 欢迎消息
    //: func caculateWelMsg() {
    func enlist() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = toBorder()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = incur()
        //: let strnor = "Here comes ".localized
        let strnor = (String(str_tableName) + String(str_popText.suffix(5))).localized
        //: let strc =  "\(self.model.user?.nickname ?? "")"
        let strc = "\(self.model.user?.nickname ?? "")"
        //: let content = getAttributed(text: strnor, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#FFE386")!, isTap: false, atUid: nil)
        let content = theLevel(text: strnor, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (String(str_indexModelPartyData)))!, isTap: false, atUid: nil)
        //: let attachText = getAttributed(text: strc, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let attachText = theLevel(text: strc, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (str_indexTitle.capitalized + str_succeedValue.replacingOccurrences(of: "model", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: textView.append(attachText)
        textView.append(attachText)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        equalUser(attribText: self.model.msgAttribText)
    }

    /// 中奖消息
    //: func caculatewinningMsg() {
    func towardAdd() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = toBorder()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = incur()
        // 内容
        //: let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        //: let content = getAttributed(text: firstStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let content = theLevel(text: firstStr, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        equalUser(attribText: self.model.msgAttribText)
    }

    /// 关注消息
    //: func caculAttionMsg() {
    func result() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = toBorder()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let attachText = NSMutableAttributedString()
        let attachText = NSMutableAttributedString()
        // 内容
        //: let strnor = "followed the anchor".localized
        let strnor = (str_bringValue.replacingOccurrences(of: "change", with: "fo") + "owed" + String(str_putReplyData.prefix(9)) + String(str_recordingName)).localized
        //: let strc =  "\(self.model.user?.nickname ?? "") "
        let strc = "\(self.model.user?.nickname ?? "") "
        //: let content = getAttributed(text: strnor, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        let content = theLevel(text: strnor, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        //: let nameText = getAttributed(text: strc, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameText = theLevel(text: strc, font: UIFont.behindUpRoom(fontSize: 14), color: UIColor(hex: (str_indexTitle.capitalized + str_succeedValue.replacingOccurrences(of: "model", with: "F")))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: attachText.append(nameText)
        attachText.append(nameText)
        //: attachText.append(content)
        attachText.append(content)
        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        equalUser(attribText: self.model.msgAttribText)
    }

    //: func paragraphStyle()-> NSMutableParagraphStyle {
    func toBorder() -> NSMutableParagraphStyle {
        //: let paraStyle = NSMutableParagraphStyle.init()
        let paraStyle = NSMutableParagraphStyle()
        //: paraStyle.lineSpacing = 0.0
        paraStyle.lineSpacing = 0.0 // 行间距
        //: paraStyle.alignment = .left
        paraStyle.alignment = .left
        //: paraStyle.baseWritingDirection = .leftToRight
        paraStyle.baseWritingDirection = .leftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: paraStyle.baseWritingDirection = .rightToLeft
            paraStyle.baseWritingDirection = .rightToLeft
            //: paraStyle.alignment = .right
            paraStyle.alignment = .right
        }

        //: return paraStyle
        return paraStyle
    }

    /**
     字符串生成富文本
     @param isTap 是否添加点击事件
     */
    //: func getAttributed(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
    func theLevel(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
        //: let attribute = NSMutableAttributedString.init(string: text)
        let attribute = NSMutableAttributedString(string: text)
        //: attribute.yy_font = font
        attribute.yy_font = font
        //: attribute.yy_color = color
        attribute.yy_color = color
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
//            attribute.yy_writingDirection = [3]
            //: } else {
        } else {
            //: attribute.yy_baseWritingDirection = .leftToRight
            attribute.yy_baseWritingDirection = .leftToRight
        }
        //: attribute.yy_paragraphStyle = paragraphStyle()
        attribute.yy_paragraphStyle = toBorder()

        //: if isTap == true {
        if isTap == true {
            //: guard text.count > 0 else {
            guard text.count > 0 else {
                //: return NSMutableAttributedString.init()
                return NSMutableAttributedString()
            }
            //: let range = NSRange(location: 0, length: text.count)
            let range = NSRange(location: 0, length: text.count)
            //: attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) {  containerView, text, range, rect in
            attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) { _, _, _, _ in
                //: if self.actionUserBlock != nil {
                if self.actionUserBlock != nil {
                    //: self.actionUserBlock!(atUid)
                    self.actionUserBlock!(atUid)
                }
                //: } longPressAction: { containerView, text, range, rect in
            } longPressAction: { _, _, _, _ in
                /// 不能@自己
                //: if atUid != WithAdministratorAppManager.share.loginUserMode.userID {
                if atUid != WithAdministratorAppManager.share.loginUserMode.userID {
                    //: if self.longUserBlock != nil {
                    if self.longUserBlock != nil {
                        //: self.longUserBlock!(atUid)
                        self.longUserBlock!(atUid)
                    }
                }
            }
        }

        //: return attribute
        return attribute
    }

    /// 获取cell高度
    //: func YYTextLayoutSize(attribText: NSMutableAttributedString) {
    func equalUser(attribText: NSMutableAttributedString) {
        // 距离左边8  距离右边也为8
        //: let maxWidth = MsgTableViewWidth - 16
        let maxWidth = kLet_viewBarTitle - 16

        //: let layout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        let layout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        //: let layoutSize = layout?.textBoundingRect.size ?? .zero
        let layoutSize = layout?.textBoundingRect.size ?? .zero
        //: var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))
        var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))

        //: if  size.height < 28 {
        if size.height < 28 {
            //: size.height = 28
            size.height = 28
            //: } else {
        } else {
            // 再加上6=文字距离上下的间距
            //: size.height += 6
            size.height += 6
        }

        //: self.model.msgHeight = Double(size.height)
        self.model.msgHeight = Double(size.height)
        //: self.model.msgWidth = Double(size.width)
        self.model.msgWidth = Double(size.width)
    }

    //: private func changeGiftName(giftmodel: TalkingGiftMsgAnimatModel) -> String {
    private func exceptCreateTransaction(giftmodel: AggregationHandyJSON) -> String {
        //: var gameName = giftmodel.pname
        var gameName = giftmodel.pname
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if DoingAddrTool.share.interfaceLang == ConditionCollection.en.rawValue {
            //: gameName = giftmodel.nameI18n.en
            gameName = giftmodel.nameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
            //: gameName = giftmodel.nameI18n.ar
            gameName = giftmodel.nameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
            //: gameName = giftmodel.nameI18n.es
            gameName = giftmodel.nameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
            //: gameName = giftmodel.nameI18n.pt
            gameName = giftmodel.nameI18n.pt
        }
        //: return gameName
        return gameName
    }
}

// MARK: - 弹幕消息拼接图片

//: extension TalkingLiveRoomDammuCellData {
extension TalkingThen {
    /// 获取弹幕富文本图片
    //: func getImagesAttributedString() -> NSMutableAttributedString {
    func incur() -> NSMutableAttributedString {
        //: let mAttrStr = NSMutableAttributedString(string: "")
        let mAttrStr = NSMutableAttributedString(string: "")
        // 语聊房房主
        //: if TalkingVoiceRoomManager.shared().isParty, model.user?.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid {
        if StackMThen.estimated().isParty, model.user?.uid == StackMThen.estimated().partyModel.streamerInfo.uid {
            //: let hostImgV = UIImageView()
            let hostImgV = UIImageView()
            //: hostImgV.size = CGSize(width: 16, height: 16)
            hostImgV.size = CGSize(width: 16, height: 16)
            //: hostImgV.image = UIImage.nearCounterval(name: "party_seat_host")
            hostImgV.image = UIImage.nearCounterval(name: (str_upName.replacingOccurrences(of: "last", with: "r") + "_seat_ho" + String(str_sharedName)))
            //: let hostAttr = getAttachText(imageView: hostImgV)
            let hostAttr = upMore(imageView: hostImgV)
            //: mAttrStr.append(hostAttr)
            mAttrStr.append(hostAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }

        // 等级
        //: let levelImgV = UIImageView()
        let levelImgV = UIImageView()
        //: levelImgV.size = CGSize(width: 35, height: 16)
        levelImgV.size = CGSize(width: 35, height: 16)
        //: levelImgV.image = UIImage.nearCounterval(name: "level_\(self.model.user?.level ?? 1)")
        levelImgV.image = UIImage.nearCounterval(name: (String(str_roomTitle)) + "\(self.model.user?.level ?? 1)")
        //: let levelAttr = getAttachText(imageView: levelImgV)
        let levelAttr = upMore(imageView: levelImgV)
        //: mAttrStr.append(levelAttr)
        mAttrStr.append(levelAttr)
        //: mAttrStr.append(NSAttributedString.init(string: " "))
        mAttrStr.append(NSAttributedString(string: " "))

        // 会员
        //: if self.model.user?.loungePlus == true {
        if self.model.user?.loungePlus == true {
            //: let vipImgV = UIImageView()
            let vipImgV = UIImageView()
            //: vipImgV.size = CGSize(width: 16, height: 16)
            vipImgV.size = CGSize(width: 16, height: 16)
            //: vipImgV.image = UIImage.nearCounterval(name: "icon_lounge")
            vipImgV.image = UIImage.nearCounterval(name: (String(str_blockName.prefix(5)) + "loun" + String(str_petName)))
            //: let vipAttr = getAttachText(imageView: vipImgV)
            let vipAttr = upMore(imageView: vipImgV)
            //: mAttrStr.append(vipAttr)
            mAttrStr.append(vipAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }
        //: return mAttrStr
        return mAttrStr
    }

    // 图片、view生成富文本
    //: func getAttachText(imageView: UIImageView) -> NSMutableAttributedString {
    func upMore(imageView: UIImageView) -> NSMutableAttributedString {
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.unprecedented(fontSize: 12), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.unprecedented(fontSize: 12), alignment: .center)
        //: attachText.yy_paragraphStyle = paragraphStyle()
        attachText.yy_paragraphStyle = toBorder()
        //: return attachText
        return attachText
    }
}
