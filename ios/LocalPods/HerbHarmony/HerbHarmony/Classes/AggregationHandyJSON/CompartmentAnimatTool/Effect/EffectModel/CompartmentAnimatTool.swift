
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let str_labelText:String = "unarclayer"
fileprivate let str_locationData:String = "AILU"
fileprivate let str_touchValue:String = "make medium selfre i"

/*: "App" :*/
fileprivate let str_makeData:String = "to case color topApp"

/*: "privateChatEffect%@" :*/
fileprivate let str_errorDisableContent:String = "PRIVAT"
fileprivate let str_resultTitle:String = "guard in in message dataEffect%@"

/*: "extra" :*/
fileprivate let str_messageData:String = "egesturetra"

/*: "user" :*/
fileprivate let str_contextSizeValue:[Character] = ["u","s","e","r"]

/*: "%@" :*/
fileprivate let str_remoteData:[Character] = ["%","@"]

/*: "id" :*/
fileprivate let str_spaceUserData:[Character] = ["i","d"]

/*: "gift" :*/
fileprivate let str_shareName:String = "gaddft"

/*: "fromUid" :*/
fileprivate let str_currentContent:[Character] = ["f","r","o","m","U"]
fileprivate let str_succeedTitle:String = "labd"

/*: "fromNickname" :*/
fileprivate let str_equalAddValue:String = "fmainom"
fileprivate let str_playerText:String = "business"

/*: "name" :*/
fileprivate let str_menuName:String = "namakee"

/*: "fromHeadPic" :*/
fileprivate let str_interactionTitle:String = "fromHsize application at error"
fileprivate let str_editName:[Character] = ["i","c"]

/*: "icon" :*/
fileprivate let str_sharedName:String = "icomax"

/*: "pid" :*/
fileprivate let str_indexValue:String = "pconvert"

/*: "num" :*/
fileprivate let str_timeUserName:String = "ngesture"

/*: "pname" :*/
fileprivate let str_backTitle:[Character] = ["p","n","a","m","e"]

/*: "giftPic" :*/
fileprivate let str_topData:String = "giftPicsize actual"

/*: "comboNum" :*/
fileprivate let str_labAreaData:String = "COMBO"
fileprivate let str_dateTitle:String = "Numuser open hidden"

/*: "iosEffect" :*/
fileprivate let str_nearText:String = "model selfiosEff"
fileprivate let str_managerText:String = "ECT"

/*: "showType" :*/
fileprivate let str_endFatalBottomContent:String = "as match equalshowType"

/*: "animationTimes" :*/
fileprivate let str_modelData:[Character] = ["a","n","i","m","a","t","i","o"]
fileprivate let str_cellRouteData:[Character] = ["n","T","i","m","e","s"]

/*: "iosVapEffect" :*/
fileprivate let str_appValue:String = "iocount"
fileprivate let str_throughValue:[Character] = ["V","a","p","E","f","f","e","c","t"]

/*: "msgInfo" :*/
fileprivate let str_areaTitle:String = "msgInfolab var white"

/*: "mfBean" :*/
fileprivate let str_availableName:[UInt8] = [0x1d,0x16,0x32,0x15,0x11,0x1e]

private func selfIndex(style num: UInt8) -> UInt8 {
    return num ^ 112
}

/*: "toUser" :*/
fileprivate let str_equalSizeText:[Character] = ["t","o","U","s","e","r"]

/*: "uid" :*/
fileprivate let str_skinData:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let str_limitData:[Character] = ["g","i","f","t","N","u","m"]

/*: "nickname" :*/
fileprivate let str_labelWindowServiceData:[Character] = ["n","i","c","k","n","a","m"]
fileprivate let str_topListName:String = "value"

/*: "Send to %@" :*/
fileprivate let str_youData:String = "toward case let double toSend"
fileprivate let str_mediumData:[Character] = ["%","@"]

/*: "Send to All Numbers" :*/
fileprivate let str_tipData:[Character] = ["S","e","n","d"," ","t"]
fileprivate let str_cellName:String = "count text sizeo A"
fileprivate let str_equalAppData:String = "ll Numimage title sense view"

/*: "headPic" :*/
fileprivate let str_userData:String = "intimate task to iconheadPic"

/*: "LiveGift_%@" :*/
fileprivate let str_giftStyleText:[Character] = ["L","i","v","e","G"]
fileprivate let str_cellValue:String = "ift_%@send for let target date"

/*: "toUid" :*/
fileprivate let str_userValue:String = "self to to bytoUid"

/*: "PartyGift_%@" :*/
fileprivate let str_lastMessageValue:[Character] = ["P","a","r","t","y","G","i","f"]
fileprivate let str_rangeData:String = "section to viewt_%@"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentAnimatTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class CompartmentAnimatTool: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = CompartmentAnimatTool()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        targetValue()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension CompartmentAnimatTool {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func targetValue() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: societalDevice()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (str_labelText.replacingOccurrences(of: "layer", with: "h") + "ive f" + str_locationData.lowercased() + String(str_touchValue.suffix(4)) + "n init"))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.societalDevice()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func face() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: societalDevice()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.societalDevice())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func societalDevice() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(str_makeData.suffix(3))))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", WithAdministratorAppManager.share.loginUserMode.userID)
        let name = String(format: (str_errorDisableContent.lowercased() + "eChat" + String(str_resultTitle.suffix(8))), WithAdministratorAppManager.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func cacheTo(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.face()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func statusImage(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.face()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func shouldLoad(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_messageData.replacingOccurrences(of: "gesture", with: "x"))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(String(str_contextSizeValue))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((str_shareName.replacingOccurrences(of: "add", with: "i"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ContainerAnimatModel>.deserializeFrom(dict: extraDict![(str_shareName.replacingOccurrences(of: "add", with: "i"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(str_currentContent) + str_succeedTitle.replacingOccurrences(of: "lab", with: "i"))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_equalAddValue.replacingOccurrences(of: "main", with: "r") + "Nicknam" + str_playerText.replacingOccurrences(of: "business", with: "e"))] = user?[(str_menuName.replacingOccurrences(of: "make", with: "m"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_interactionTitle.prefix(5)) + "eadP" + String(str_editName))] = user?[(str_sharedName.replacingOccurrences(of: "max", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_indexValue.replacingOccurrences(of: "convert", with: "id"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(String(str_backTitle))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_topData.prefix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labAreaData.lowercased() + String(str_dateTitle.prefix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_nearText.suffix(6)) + str_managerText.lowercased())] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_endFatalBottomContent.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(str_currentContent) + str_succeedTitle.replacingOccurrences(of: "lab", with: "i"))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(str_equalAddValue.replacingOccurrences(of: "main", with: "r") + "Nicknam" + str_playerText.replacingOccurrences(of: "business", with: "e"))] = user?[(str_menuName.replacingOccurrences(of: "make", with: "m"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(String(str_interactionTitle.prefix(5)) + "eadP" + String(str_editName))] = user?[(str_sharedName.replacingOccurrences(of: "max", with: "n"))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_indexValue.replacingOccurrences(of: "convert", with: "id"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(String(str_backTitle))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_topData.prefix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labAreaData.lowercased() + String(str_dateTitle.prefix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_nearText.suffix(6)) + str_managerText.lowercased())] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(str_appValue.replacingOccurrences(of: "count", with: "s") + String(str_throughValue))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_endFatalBottomContent.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.actionController() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if SectionPushListener.cover().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_areaTitle.prefix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_availableName.map{selfIndex(style: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_conversationName, object: nil, userInfo: [String(bytes: str_availableName.map{selfIndex(style: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? SubmitExtraObjectProtocol {
                    // 音视频通话时，只展示通话人的礼物
                    //: if WithAdministratorAppManager.share.loginUserMode.userID != targetId,
                    if WithAdministratorAppManager.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.doingReply(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? CoverMessageCallerDelegate {
                    // 音视频通话时，只展示通话人的礼物
                    //: if WithAdministratorAppManager.share.loginUserMode.userID != targetId,
                    if WithAdministratorAppManager.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.meet(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? ClassTipsProtocol {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.imageReport() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.welt(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: ManagerClickViewController.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: UserViewController.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: ClassTipsProtocol.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! ClassTipsProtocol
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.imageReport() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.welt(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.face()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func dropTo(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_messageData.replacingOccurrences(of: "gesture", with: "x"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_contextSizeValue))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(str_equalSizeText))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(str_skinData))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((str_shareName.replacingOccurrences(of: "add", with: "i"))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<ContainerAnimatModel>.deserializeFrom(dict: extraDict![(str_shareName.replacingOccurrences(of: "add", with: "i"))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(str_shareName.replacingOccurrences(of: "add", with: "i"))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(str_limitData))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(str_currentContent) + str_succeedTitle.replacingOccurrences(of: "lab", with: "i"))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(str_equalAddValue.replacingOccurrences(of: "main", with: "r") + "Nicknam" + str_playerText.replacingOccurrences(of: "business", with: "e"))] = user?[(str_menuName.replacingOccurrences(of: "make", with: "m"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(String(str_interactionTitle.prefix(5)) + "eadP" + String(str_editName))] = user?[(str_sharedName.replacingOccurrences(of: "max", with: "n"))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(str_indexValue.replacingOccurrences(of: "convert", with: "id"))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(String(str_labelWindowServiceData) + str_topListName.replacingOccurrences(of: "value", with: "e"))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(String(str_backTitle))] = (String(str_youData.suffix(4)) + " to " + String(str_mediumData)).localizedArguments(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(String(str_backTitle))] = (String(str_tipData) + String(str_cellName.suffix(3)) + String(str_equalAppData.prefix(6)) + "bers").localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(str_topData.prefix(7)))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(str_labAreaData.lowercased() + String(str_dateTitle.prefix(3)))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(str_nearText.suffix(6)) + str_managerText.lowercased())] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(str_endFatalBottomContent.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(str_currentContent) + str_succeedTitle.replacingOccurrences(of: "lab", with: "i"))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(str_equalAddValue.replacingOccurrences(of: "main", with: "r") + "Nicknam" + str_playerText.replacingOccurrences(of: "business", with: "e"))] = user?[(String(str_labelWindowServiceData) + str_topListName.replacingOccurrences(of: "value", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(String(str_interactionTitle.prefix(5)) + "eadP" + String(str_editName))] = user?[(String(str_userData.suffix(7)))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(str_indexValue.replacingOccurrences(of: "convert", with: "id"))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(String(str_labelWindowServiceData) + str_topListName.replacingOccurrences(of: "value", with: "e"))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(String(str_backTitle))] = (String(str_youData.suffix(4)) + " to " + String(str_mediumData)).localizedArguments(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(str_backTitle))] = (String(str_tipData) + String(str_cellName.suffix(3)) + String(str_equalAppData.prefix(6)) + "bers").localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_topData.prefix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(str_labAreaData.lowercased() + String(str_dateTitle.prefix(3)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(str_nearText.suffix(6)) + str_managerText.lowercased())] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(str_appValue.replacingOccurrences(of: "count", with: "s") + String(str_throughValue))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_endFatalBottomContent.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(str_modelData) + String(str_cellRouteData))] = dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(str_skinData))] as? Int
                //: if TalkingLiveManager.shared().isLive, WithAdministratorAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if SectionPushListener.cover().isLive, WithAdministratorAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(str_areaTitle.prefix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: str_availableName.map{selfIndex(style: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: kLet_conversationName, object: nil, userInfo: [String(bytes: str_availableName.map{selfIndex(style: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if LeadingEqualReactiveCompatible.share.getEqualVc()!.isKind(of: CustomViewController.self) {
                    //: let chatVC = LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = LeadingEqualReactiveCompatible.share.getEqualVc() as! CustomViewController
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.possibility(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func theTotal(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(str_messageData.replacingOccurrences(of: "gesture", with: "x"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(String(str_contextSizeValue))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(str_skinData))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if SectionPushListener.cover().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_giftStyleText) + String(str_cellValue.prefix(6))), extraDict?[(String(str_userValue.suffix(5)))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if StackMThen.estimated().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(str_lastMessageValue) + String(str_rangeData.suffix(4))), extraDict?[(String(str_userValue.suffix(5)))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(str_shareName.replacingOccurrences(of: "add", with: "i"))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((str_shareName.replacingOccurrences(of: "add", with: "i"))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<ContainerAnimatModel>.deserializeFrom(dict: extraDict![(str_shareName.replacingOccurrences(of: "add", with: "i"))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(str_currentContent) + str_succeedTitle.replacingOccurrences(of: "lab", with: "i"))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(str_equalAddValue.replacingOccurrences(of: "main", with: "r") + "Nicknam" + str_playerText.replacingOccurrences(of: "business", with: "e"))] = user?[(String(str_labelWindowServiceData) + str_topListName.replacingOccurrences(of: "value", with: "e"))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(String(str_interactionTitle.prefix(5)) + "eadP" + String(str_editName))] = user?[(String(str_userData.suffix(7)))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(str_indexValue.replacingOccurrences(of: "convert", with: "id"))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] = gift?[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(String(str_backTitle))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_topData.prefix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(str_labAreaData.lowercased() + String(str_dateTitle.prefix(3)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_nearText.suffix(6)) + str_managerText.lowercased())] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(str_appValue.replacingOccurrences(of: "count", with: "s") + String(str_throughValue))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_endFatalBottomContent.suffix(8)))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(str_modelData) + String(str_cellRouteData))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(str_modelData) + String(str_cellRouteData))] = dictM[(str_timeUserName.replacingOccurrences(of: "gesture", with: "um"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.face()
            }
        }
    }
}
