
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_picValue:[UInt8] = [0xdf,0xd8,0xdf,0xc2,0x9e,0xd5,0xd9,0xd2,0xd3,0xc4,0x8c,0x9f,0x96,0xde,0xd7,0xc5,0x96,0xd8,0xd9,0xc2,0x96,0xd4,0xd3,0xd3,0xd8,0x96,0xdf,0xdb,0xc6,0xda,0xd3,0xdb,0xd3,0xd8,0xc2,0xd3,0xd2]

/*: "System notification" :*/
fileprivate let str_titleData:[Character] = ["S","y","s","t","e","m"," "]
fileprivate let str_styleContent:String = "nwhitei"

/*: "http://static. :*/
fileprivate let str_willData:String = "httlive"
fileprivate let str_targetTitle:String = "tatgift"
fileprivate let str_logName:String = "bottom action block size selfc."

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let str_imageSenseValue:[UInt8] = [0xe1,0xac,0xa0,0xa2,0xe0,0xae,0xbf,0xbf,0xe0,0xa6,0xa2,0xa8,0xe0,0xa2,0xaa,0xbc,0xbc,0xae,0xa8,0xaa,0xe0,0xb7,0xa6,0xbb,0xa0,0xa1,0xa8,0xe2,0xb9,0xfd,0xe1,0xbf,0xa1,0xa8]

/*: "Customer Care Center" :*/
fileprivate let str_toName:String = "Custcolor lab i layer self"
fileprivate let str_bubbleName:String = "extension var pathre Center"

/*: .com/app/img/message/cs.png" :*/
fileprivate let str_tableContent:[Character] = [".","c","o","m","/","a","p","p","/","i","m","g","/","m","e","s","s","a","g","e","/","c","s","."]
fileprivate let str_imageName:String = "PNG"

/*: "Public Chat Room" :*/
fileprivate let str_byName:[Character] = ["P","u","b","l","i"]
fileprivate let str_requestData:[Character] = ["c"," ","C","h","a","t"," ","R","o","o","m"]

/*: "icon_chats_pcr" :*/
fileprivate let str_topStyleText:[Character] = ["i","c","o","n","_","c","h","a","t","s"]
fileprivate let str_buttonValue:String = "_pcrvar make return greet index"

/*: "New friends" :*/
fileprivate let str_colorName:String = "New fstring array"
fileprivate let str_succeedShareInValue:[Character] = ["r","i","e","n","d","s"]

/*: "icon_chats_mm" :*/
fileprivate let str_titleCenterData:[Character] = ["i","c","o","n","_","c","h","a"]
fileprivate let str_progressValue:String = "add datets_mm"

/*: " customElem.data is error" :*/
fileprivate let str_layerName:String = " cuscenter as only if"
fileprivate let str_itemData:[Character] = ["l","e","m",".","d","a","t","a"," ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_messageName:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let str_allowBlockData:[Character] = ["m","s","g","I","n","f","o"]

/*: "messageType" :*/
fileprivate let str_sendValue:[Character] = ["m","e","s","s","a","g","e","T","y","p","e"]

/*: "msgType" :*/
fileprivate let str_modelMakeTitle:String = "if ifmsgType"

/*: "tips" :*/
fileprivate let str_delayContent:[Character] = ["t","i","p","s"]

/*: "totalIntimate" :*/
fileprivate let str_dataName:String = "totalIend title height model count"
fileprivate let str_inputName:String = "N"
fileprivate let str_instanceData:[Character] = ["t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaConversationModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class MediaConversationModel: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: CoverThen?
    var gj_userInfo: CoverThen? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == IconThen.getXiaoMiID() {
            if conv.userID == IconThen.finishBy() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == IconThen.getCustomerServiceID() {
            } else if conv.userID == IconThen.motivation() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.addOn(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.makeTo()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_picValue.map{$0^182}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension MediaConversationModel {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func explain(chatType: TalkingIMChatType) -> MediaConversationModel {
        //: let model = TalkingConversationModel()
        let model = MediaConversationModel()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = IconThen.getXiaoMiID()
            model.userID = IconThen.finishBy()
            //: model.targetId = IconThen.getXiaoMiID()
            model.targetId = IconThen.finishBy()
            //: model.showName = "System notification".localized
            model.showName = (String(str_titleData) + str_styleContent.replacingOccurrences(of: "white", with: "ot") + "fication").localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (str_willData.replacingOccurrences(of: "live", with: "p") + "://s" + str_targetTitle.replacingOccurrences(of: "gift", with: "i") + String(str_logName.suffix(2))) + "\(kLet_clickValue)" + String(bytes: str_imageSenseValue.map{$0^207}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = IconThen.getCustomerServiceID()
            model.userID = IconThen.motivation()
            //: model.targetId = IconThen.getCustomerServiceID()
            model.targetId = IconThen.motivation()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(str_toName.prefix(4)) + "omer Ca" + String(str_bubbleName.suffix(9))).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (str_willData.replacingOccurrences(of: "live", with: "p") + "://s" + str_targetTitle.replacingOccurrences(of: "gift", with: "i") + String(str_logName.suffix(2))) + "\(kLet_clickValue)" + (String(str_tableContent) + str_imageName.lowercased())

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(str_byName) + String(str_requestData)).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(str_topStyleText) + String(str_buttonValue.prefix(4)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(str_colorName.prefix(5)) + String(str_succeedShareInValue)).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(str_titleCenterData) + String(str_progressValue.suffix(5)))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension MediaConversationModel {
    //: func func__updateLastShowMsg() {
    func makeTo() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.addOn(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.addOn(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func addOn(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_layerName.prefix(4)) + "tomE" + String(str_itemData)))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(str_messageName))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(str_allowBlockData))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(str_sendValue))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(str_modelMakeTitle.suffix(7)))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(str_sendValue))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (String(str_delayContent))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func allViewModel(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.addOn(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.inflectTotalConv(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.makeTo()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension MediaConversationModel {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func inflectTotalConv(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        let dic = TUIMsgChatManager.parseTXMessageData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(String(str_messageName))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(str_allowBlockData))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(String(str_dataName.prefix(6)) + str_inputName.lowercased() + String(str_instanceData))]?.int {
            //: if let model = ChiefThen.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = ChiefThen.cached(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: ChiefThen.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    ChiefThen.accountTime(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
