
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let str_qualityValue:String = "report session custo"
fileprivate let str_actualValue:String = "view"
fileprivate let str_coverData:[Character] = [" ","i","s"," ","e","r","r","o","r"]

/*: "extra" :*/
fileprivate let str_donContent:String = "topxtra"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let str_viewData:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","S","y","s","M","s","g"]

/*: "opType" :*/
fileprivate let str_userName:String = "opTypesend if aspect"

/*: "roomLogout" :*/
fileprivate let str_arrayData:[Character] = ["r","o","o","m","L","o","g","o","u","t"]

/*: "MF:PartyChatWelMsg" :*/
fileprivate let str_modelTitle:[Character] = ["M","F",":","P","a"]
fileprivate let str_fileValue:[Character] = ["r","t","y","C"]
fileprivate let str_currentShareText:String = "create andhatWelMsg"

/*: "startLive" :*/
fileprivate let str_toText:String = "stastyle"
fileprivate let str_whiteName:[Character] = ["t","L","i","v","e"]

/*: "floatingScreen" :*/
fileprivate let str_cleanHiddenForData:[UInt8] = [0x6e,0x65,0x65,0x72,0x63,0x53,0x67,0x6e,0x69,0x74,0x61,0x6f,0x6c,0x66]

/*: "mute" :*/
fileprivate let str_valueName:String = "mutmodel"

/*: "uid" :*/
fileprivate let str_userValue:String = "uito"

/*: "expireAt" :*/
fileprivate let str_succeedText:[Character] = ["e","x","p","i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let str_videoHandleText:String = "livemute"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let str_appearContent:String = "MF:Livmake pop put range self"
fileprivate let str_insideValue:[Character] = ["G","i"]
fileprivate let str_tableValue:String = "share self max hiddenftMsg"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let str_photoName:String = "let returnMF:Pa"
fileprivate let str_managerData:String = "background content letatGi"
fileprivate let str_fromValue:[Character] = ["f","t","M","s","g"]

/*: "gift" :*/
fileprivate let str_recordValue:[Character] = ["g","i","f","t"]

/*: "id" :*/
fileprivate let str_hiddenSendValue:[Character] = ["i","d"]

/*: "imgPreview" :*/
fileprivate let str_firstData:[Character] = ["i","m","g","P"]
fileprivate let str_equalFlagValue:[Character] = ["r","e","v","i","e","w"]

/*: "name" :*/
fileprivate let str_stopData:[Character] = ["n","a","m","e"]

/*: "num" :*/
fileprivate let str_rawName:[Character] = ["n","u","m"]

/*: "mfBean" :*/
fileprivate let str_toLeadingElseTitle:[UInt8] = [0x0,0xb,0x2f,0x8,0xc,0x3]

private func listMainRoom(title num: UInt8) -> UInt8 {
    return num ^ 109
}

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let str_databaseValue:String = "normal true modelMF:Liv"
fileprivate let str_labUserValue:String = "PrizeMsgview right"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let str_toValue:String = "view info data self<at>@"
fileprivate let str_imageNextText:[Character] = ["[","\\","S","\\","s","]","+","?","<","/","a","t",">"]

/*: "加入弹幕房间" :*/
fileprivate let str_refuseName:String = "\u{52a0}入弹\u{5e55}\u{623f}间"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let str_eventValue:[UInt8] = [0x96,0xb1,0xb9,0xbc,0xb5,0xb4,0xf0,0xa4,0xbf,0xf0,0xb5,0xbe,0xa4,0xb5,0xa2,0xf0,0xa4,0xb8,0xb5,0xf0,0xb3,0xb8,0xb1,0xa4,0xf0,0xa2,0xbf,0xbf,0xbd,0xfe,0xf0,0x80,0xbc,0xb5,0xb1,0xa3,0xb5,0xf0,0xa4,0xa2,0xa9,0xf0,0xb1,0xb7,0xb1,0xb9,0xbe,0xf0,0xbc,0xb1,0xa4,0xb5,0xa2]

private func visualImage(input num: UInt8) -> UInt8 {
    return num ^ 208
}

/*: "live/sendMsg" :*/
fileprivate let str_makePhotoData:[Character] = ["l","i","v","e","/","s","e","n","d"]
fileprivate let str_meContent:String = "Msgload tag star"

/*: "groupId" :*/
fileprivate let str_viewText:String = "managerr"
fileprivate let str_onlineUserData:String = "oupIdmanager var"

/*: "message" :*/
fileprivate let str_callAddTitle:String = "messatoe"

/*: "toUid" :*/
fileprivate let str_effectName:[Character] = ["t","o","U","i","d"]

/*: "party/sendMsg" :*/
fileprivate let str_sharedName:String = "parvideo"
fileprivate let str_femaleValue:String = "make self up modeldMsg"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SumeractionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol SetOutReactiveCompatible: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func transform(Msg: QuantityLeadingTransformable)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func roundLocation(Msg: QuantityLeadingTransformable)

    //: func func__actionUserNewModel(pushUid: String?)
    func digitiserUid(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func visualizationUid(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func login()
    // 用户退出房间
    //: func func__userLogout()
    func describeLogout()
}

//: class TalkingDanmuManager: NSObject {
class SumeractionReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: SumeractionReactiveCompatible? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: SetOutReactiveCompatible?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func playerFor() -> SumeractionReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = SumeractionReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension SumeractionReactiveCompatible {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func headEqual(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = QuantityLeadingTransformable()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = DanmuTalkingInfoTransformable()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = TalkingThen()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.groupAction(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.transform(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func showMsg(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(str_qualityValue.suffix(6)) + "mElem.da" + str_actualValue.replacingOccurrences(of: "view", with: "ta") + String(str_coverData)))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(str_donContent.replacingOccurrences(of: "top", with: "e"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(str_viewData)), extraDic?[(String(str_userName.prefix(6)))] as? String == (String(str_arrayData)) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.describeLogout()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(str_modelTitle) + String(str_fileValue) + String(str_currentShareText.suffix(9))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.login()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(str_userName.prefix(6)))], opType as? String == (str_toText.replacingOccurrences(of: "style", with: "r") + String(str_whiteName)) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_formalData, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(str_userName.prefix(6)))], opType as? String == String(bytes: str_cleanHiddenForData.reversed(), encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: str_cleanHiddenForData.reversed(), encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: kLet_skipLicenseData, object: nil, userInfo: [String(bytes: str_cleanHiddenForData.reversed(), encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(str_userName.prefix(6)))], opType as? String == (str_valueName.replacingOccurrences(of: "model", with: "e")) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(str_userValue.replacingOccurrences(of: "to", with: "d"))] as? Int {
                //: if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(str_viewData)) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        StackMThen.estimated().partyModel.muteExpireAt = extraDic?[(String(str_succeedText))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        SectionPushListener.cover().liveRoomModel.muteExpireAt = extraDic?[(String(str_succeedText))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(str_userName.prefix(6)))], opType as? String == (str_videoHandleText.replacingOccurrences(of: "live", with: "un")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(str_userValue.replacingOccurrences(of: "to", with: "d"))] as? Int {
                //: if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                    if WithAdministratorAppManager.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(str_viewData)) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            StackMThen.estimated().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            SectionPushListener.cover().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = QuantityLeadingTransformable.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(str_appearContent.prefix(6)) + "eChat" + String(str_insideValue) + String(str_tableValue.suffix(5))) || model.MsgExtension == (String(str_photoName.suffix(5)) + "rtyCh" + String(str_managerData.suffix(4)) + String(str_fromValue)) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(String(str_recordValue))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(str_firstData) + String(str_equalFlagValue))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(String(str_stopData))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(String(str_rawName))] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if SectionPushListener.cover().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if SectionPushListener.cover().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        CompartmentAnimatTool.shared.theTotal(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.roundLocation(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if StackMThen.estimated().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if StackMThen.estimated().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        CompartmentAnimatTool.shared.theTotal(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.roundLocation(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: kLet_conversationName, object: nil, userInfo: [String(bytes: str_toLeadingElseTitle.map{listMainRoom(title: $0)}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: kLet_clickValue) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.untilVideo(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.untilVideo(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue, model.MsgExtension == (String(str_databaseValue.suffix(6)) + "eChat" + String(str_labUserValue.prefix(8))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            untilVideo(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func untilVideo(danmuModel: QuantityLeadingTransformable) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = TalkingThen()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.afterResource(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.digitiserUid(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != WithAdministratorAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != WithAdministratorAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(str_toValue.suffix(5)) + String(str_imageNextText)), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.visualizationUid(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.transform(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension SumeractionReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func oddmentState() {
        //: if TalkingDanmuManager._instance != nil {
        if SumeractionReactiveCompatible._instance != nil {
            //: TalkingDanmuManager._instance = nil
            SumeractionReactiveCompatible._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func liveDownCompletion(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (str_refuseName))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                SumeractionReactiveCompatible.playerFor().headEqual(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if SumeractionReactiveCompatible.playerFor().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                SumeractionReactiveCompatible.playerFor().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                liveDownCompletion(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                SumeractionReactiveCompatible.playerFor().atShow(showMsg: String(bytes: str_eventValue.map{visualImage(input: $0)}, encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func liveManager(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension SumeractionReactiveCompatible {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func equalDataConverter(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(str_makePhotoData) + String(str_meContent.prefix(3)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(str_viewText.replacingOccurrences(of: "manager", with: "g") + String(str_onlineUserData.prefix(5)))] = groupId
        //: dict["message"] = message
        dict[(str_callAddTitle.replacingOccurrences(of: "to", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_effectName))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func daily(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (str_sharedName.replacingOccurrences(of: "video", with: "t") + "y/sen" + String(str_femaleValue.suffix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(str_viewText.replacingOccurrences(of: "manager", with: "g") + String(str_onlineUserData.prefix(5)))] = groupId
        //: dict["message"] = message
        dict[(str_callAddTitle.replacingOccurrences(of: "to", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(str_effectName))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
