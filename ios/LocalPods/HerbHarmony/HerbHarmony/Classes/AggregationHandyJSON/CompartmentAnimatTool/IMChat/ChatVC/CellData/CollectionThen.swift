
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_upClickValue:[UInt8] = [0x9c,0x9b,0x9c,0x81,0xdd,0x96,0x9a,0x91,0x90,0x87,0xcf,0xdc,0xd5,0x9d,0x94,0x86,0xd5,0x9b,0x9a,0x81,0xd5,0x97,0x90,0x90,0x9b,0xd5,0x9c,0x98,0x85,0x99,0x90,0x98,0x90,0x9b,0x81,0x90,0x91]

private func closeSize(text num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "[未知消息]" :*/
fileprivate let str_labelTitle:[Character] = ["[","未","知","消","\u{606f}","]"]

/*: "extra" :*/
fileprivate let str_blockValue:String = "exleadingra"

/*: "rYMsgType" :*/
fileprivate let str_draftGestureData:String = "make"
fileprivate let str_userValue:[Character] = ["Y","M","s","g","T","y","p","e"]

/*: "GJ:CallCustom" :*/
fileprivate let str_requestValue:String = "GJ:CallCguard level if"
fileprivate let str_componentValue:[Character] = ["u","s","t","o","m"]

/*: "stopCall" :*/
fileprivate let str_labData:[Character] = ["s","t","o","p","C","a","l","l"]

/*: "#FF5A4D" :*/
fileprivate let str_transitionValue:[Character] = ["#","F","F","5","A","4","D"]

/*: "msgInfo" :*/
fileprivate let str_pointValue:String = "let array scalemsgInfo"

/*: "logType" :*/
fileprivate let str_playerData:[Character] = ["l","o","g","T","y"]
fileprivate let str_modelData:[Character] = ["p","e"]

/*: "  " :*/
fileprivate let str_atLabelData:String = "  "

/*: "jumps" :*/
fileprivate let str_statusVoiceData:[Character] = ["j","u","m","p","s"]

/*: "jumpKey" :*/
fileprivate let str_titleAfterValue:String = "jumpKeypath make model text"

/*: "chat_video_me" :*/
fileprivate let str_pathTitle:[UInt8] = [0xe3,0xe8,0xe1,0xf4,0xdf,0xf6,0xe9,0xe4,0xe5,0xef,0xdf,0xed,0xe5]

fileprivate func dataMy(at num: UInt8) -> UInt8 {
    let value = Int(num) - 128
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_me" :*/
fileprivate let str_equalText:String = "pair"
fileprivate let str_rowTitle:String = "hat_model indicator view normal label"

/*: "chat_video_call" :*/
fileprivate let str_kitTitle:[UInt8] = [0x9e,0xa3,0x9c,0xaf,0x9a,0xb1,0xa4,0x9f,0xa0,0xaa,0x9a,0x9e,0x9c,0xa7,0xa7]

fileprivate func decisionMaker(make num: UInt8) -> UInt8 {
    let value = Int(num) - 59
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_call" :*/
fileprivate let str_fillData:[Character] = ["c","h","a","t","_","v","o","i","c","e","_","c"]
fileprivate let str_imageName:String = "averagel"

/*: "chat_video_cancel" :*/
fileprivate let str_reportSystemText:[UInt8] = [0x6c,0x65,0x63,0x6e,0x61,0x63,0x5f,0x6f,0x65,0x64,0x69,0x76,0x5f,0x74,0x61,0x68,0x63]

/*: "chat_voice_cancel" :*/
fileprivate let str_topData:String = "cviewt"
fileprivate let str_albumValue:[Character] = ["e","_","c","a","n","c","e","l"]

/*: "#16D073" :*/
fileprivate let str_sourceText:[Character] = ["#","1","6","D","0","7"]
fileprivate let str_appearValue:String = "3"

/*: "#F95644" :*/
fileprivate let str_makeData:[Character] = ["#","F","9","5","6","4","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class CollectionThen: TalkingChatMsgBaseCellData {
@objcMembers public class CollectionThen: CollectionReactiveCompatible {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.unprecedented(fontSize: 16)
    let textFont = UIFont.unprecedented(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = re()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.occurrence()
            textColor = UIColor.occurrence()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_upClickValue.map{closeSize(text: $0)}, encoding: .utf8)!)
    }

    //: public override var msgModel: DataNameModel {
    override public var msgModel: DataNameModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = (String(str_labelTitle))
                //: } else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.of() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.misquote(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right

        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func height(ofWidth width: CGFloat) -> CGFloat {
    override public func height(ofWidth _: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离

        //: let containerSize = self.contentSize()
        let containerSize = self.contentSize() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if HandleThen.screen(self.direction,
                                            //: msgType: self.messageType,
                                            msgType: self.messageType,
                                            //: msgTime: self.innerMessage.timestamp) {
                                            msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = commonFraction(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: LikeModel) -> NSMutableAttributedString {
    func commonFraction(msgInfoModel: LikeModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic[(str_blockValue.replacingOccurrences(of: "leading", with: "t"))] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.unprecedented(fontSize: 16),
            .font: UIFont.unprecedented(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.occurrence() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.occurrence() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(str_draftGestureData.replacingOccurrences(of: "make", with: "r") + String(str_userValue))] as? String == (String(str_requestValue.prefix(8)) + String(str_componentValue)) &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(str_labData))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: (String(str_transitionValue)))!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(str_draftGestureData.replacingOccurrences(of: "make", with: "r") + String(str_userValue))] as? String == (String(str_requestValue.prefix(8)) + String(str_componentValue)) {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic[(str_blockValue.replacingOccurrences(of: "leading", with: "t"))] as? [String: Any] ?? [String: Any]()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson[(String(str_pointValue.suffix(7)))][(String(str_playerData) + String(str_modelData))].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.modelView(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains((String(str_statusVoiceData))) {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains((String(str_titleAfterValue.prefix(7)))) {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: LikeModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func modelView(msgInfoModel: LikeModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: str_pathTitle.map{dataMy(at: $0)}, encoding: .utf8)! : (str_equalText.replacingOccurrences(of: "pair", with: "c") + String(str_rowTitle.prefix(4)) + "voice_me")

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(str_labData)) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: str_kitTitle.map{decisionMaker(make: $0)}, encoding: .utf8)! : (String(str_fillData) + str_imageName.replacingOccurrences(of: "average", with: "al"))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: str_reportSystemText.reversed(), encoding: .utf8)! : (str_topData.replacingOccurrences(of: "view", with: "ha") + "_voic" + String(str_albumValue))
            }
        }
        //: callImgView.image = UIImage.nearCounterval(name: imgStr)
        callImgView.image = UIImage.nearCounterval(name: imgStr)

        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.unprecedented(fontSize: 17), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.unprecedented(fontSize: 17), alignment: .center)

        //: return attachText
        return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func re() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent
        let tempText = self.translatedContent
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: (String(str_sourceText) + str_appearValue.capitalized))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(str_makeData)))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.unprecedented(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.unprecedented(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
