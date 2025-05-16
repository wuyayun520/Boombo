
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelName:[UInt8] = [0x99,0x9e,0x99,0x84,0xd8,0x93,0x9f,0x94,0x95,0x82,0xca,0xd9,0xd0,0x98,0x91,0x83,0xd0,0x9e,0x9f,0x84,0xd0,0x92,0x95,0x95,0x9e,0xd0,0x99,0x9d,0x80,0x9c,0x95,0x9d,0x95,0x9e,0x84,0x95,0x94]

/*: "gift" :*/
fileprivate let str_selectedName:String = "giparty"

/*: "iosEffect" :*/
fileprivate let str_belowText:[Character] = ["i","o","s","E","f","f","e","c","t"]

/*: "iosEmperorEffect" :*/
fileprivate let str_serverActionName:String = "nor item room model manageriosE"
fileprivate let str_tableData:String = "of view not true infoorEf"
fileprivate let str_imageValue:[Character] = ["f","e","c","t"]

/*: "fromUid" :*/
fileprivate let str_automaticallyValue:String = "fromUidactual image frame style"

/*: "fromNickname" :*/
fileprivate let str_modelTitle:String = "normalom"

/*: "fromHeadPic" :*/
fileprivate let str_atData:[Character] = ["f","r","o","m","H","e","a","d","P"]
fileprivate let str_lengthName:String = "ileading"

/*: "pid" :*/
fileprivate let str_toName:String = "squared"

/*: "num" :*/
fileprivate let str_equalSuccessName:String = "addm"

/*: "pname" :*/
fileprivate let str_pointToolText:String = "pnwindowme"

/*: "name" :*/
fileprivate let str_timeValue:[Character] = ["n","a","m","e"]

/*: "giftPic" :*/
fileprivate let str_giftTitle:String = "view stagegiftPic"

/*: "imgPreview" :*/
fileprivate let str_iconEmptyName:[Character] = ["i","m","g","P","r","e","v","i","e","w"]

/*: "comboNum" :*/
fileprivate let str_valueKeyName:String = "render modelcomboNum"

/*: "showType" :*/
fileprivate let str_rowText:[Character] = ["s","h","o","w","T","y","p","e"]

/*: "animationTimes" :*/
fileprivate let str_dataUsBeginTitle:String = "anitot"
fileprivate let str_removeInviteTitle:[Character] = ["i","m","e","s"]

/*: "id" :*/
fileprivate let str_slideText:String = "iday"

/*: "iosVapEffect" :*/
fileprivate let str_showValue:String = "iosVafor list collection label let"

/*: "giftNum" :*/
fileprivate let str_timeName:String = "to"
fileprivate let str_sourceValue:[Character] = ["i","f","t","N","u","m"]

/*: "Send to %@" :*/
fileprivate let str_arrayValue:[Character] = ["S","e","n","d"," ","t","o"," "]
fileprivate let str_topHiddenTitle:String = "make@"

/*: "all" :*/
fileprivate let str_cellCalledName:String = "totalll"

/*: "Send to All Numbers" :*/
fileprivate let str_levelData:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"," "]
fileprivate let str_dataMakeName:[Character] = ["N","u","m","b","e","r","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class PopView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.allQuantityerrupt()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelName.map{$0^240}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: OptionAnimatView = {
        //: let view = TalkingGiftAnimatView.init()
        let view = OptionAnimatView()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension PopView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func blockMessage(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_selectedName.replacingOccurrences(of: "party", with: "ft"))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(str_belowText))) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_serverActionName.suffix(4)) + "mper" + String(str_tableData.suffix(4)) + String(str_imageValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_serverActionName.suffix(4)) + "mper" + String(str_tableData.suffix(4)) + String(str_imageValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_belowText))] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
                dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
                dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
                dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = giftInfo?[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = giftInfo?[(String(str_timeValue))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_giftTitle.suffix(7)))] = giftInfo?[(String(str_iconEmptyName))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_valueKeyName.suffix(8)))] = giftInfo?[(String(str_valueKeyName.suffix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_belowText))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_rowText))] = giftInfo?[(String(str_rowText))]
                //: dictM["animationTimes"] = "1"
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
            dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
            dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
            dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = giftInfo?[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = giftInfo?[(String(str_timeValue))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_giftTitle.suffix(7)))] = giftInfo?[(String(str_iconEmptyName))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_valueKeyName.suffix(8)))] = giftInfo?[(String(str_valueKeyName.suffix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_belowText))] = giftInfo?[(String(str_belowText))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_rowText))] = giftInfo?[(String(str_rowText))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_showValue.prefix(5)) + "pEffect")] = giftInfo?[(String(str_showValue.prefix(5)) + "pEffect")]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = giftInfo?[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        adjudicate()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func successDict(dict: [String: Any]) -> AggregationHandyJSON? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(str_selectedName.replacingOccurrences(of: "party", with: "ft"))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(str_serverActionName.suffix(4)) + "mper" + String(str_tableData.suffix(4)) + String(str_imageValue))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(str_serverActionName.suffix(4)) + "mper" + String(str_tableData.suffix(4)) + String(str_imageValue))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(str_belowText))] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
                dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
                dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
                dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = giftInfo?[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = giftInfo?[(String(str_timeValue))]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(str_giftTitle.suffix(7)))] = giftInfo?[(String(str_iconEmptyName))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(str_valueKeyName.suffix(8)))] = giftInfo?[(String(str_valueKeyName.suffix(8)))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(str_belowText))] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(str_rowText))] = giftInfo?[(String(str_rowText))]
                //: dictM["animationTimes"] = "1"
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
            dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
            dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
            dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = giftInfo?[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = giftInfo?[(String(str_timeValue))]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(str_giftTitle.suffix(7)))] = giftInfo?[(String(str_iconEmptyName))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(str_valueKeyName.suffix(8)))] = giftInfo?[(String(str_valueKeyName.suffix(8)))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(str_belowText))] = giftInfo?[(String(str_belowText))]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(str_rowText))] = giftInfo?[(String(str_rowText))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(str_showValue.prefix(5)) + "pEffect")] = giftInfo?[(String(str_showValue.prefix(5)) + "pEffect")]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = giftInfo?[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func freebie(giftMessageDic: [String: Any], model: PopScaleReactiveCompatible) -> AggregationHandyJSON? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((str_selectedName.replacingOccurrences(of: "party", with: "ft"))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<ContainerAnimatModel>.deserializeFrom(dict: giftMessageDic[(str_selectedName.replacingOccurrences(of: "party", with: "ft"))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(str_selectedName.replacingOccurrences(of: "party", with: "ft"))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(str_timeName.replacingOccurrences(of: "to", with: "g") + String(str_sourceValue))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
                    dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
                    //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
                    dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
                    dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = (String(str_arrayValue) + str_topHiddenTitle.replacingOccurrences(of: "make", with: "%")).localizedArguments(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (str_cellCalledName.replacingOccurrences(of: "total", with: "a")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = (String(str_levelData) + String(str_dataMakeName)).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(str_giftTitle.suffix(7)))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(str_valueKeyName.suffix(8)))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(str_belowText))] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(str_rowText))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
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
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = WithAdministratorAppManager.share.loginUserMode.userID
                dictM[(String(str_automaticallyValue.prefix(7)))] = WithAdministratorAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = WithAdministratorAppManager.share.loginUserMode.nickname
                dictM[(str_modelTitle.replacingOccurrences(of: "normal", with: "fr") + "Nickname")] = WithAdministratorAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = WithAdministratorAppManager.share.loginUserMode.headPic
                dictM[(String(str_atData) + str_lengthName.replacingOccurrences(of: "leading", with: "c"))] = WithAdministratorAppManager.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(str_toName.replacingOccurrences(of: "square", with: "pi"))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = (String(str_arrayValue) + str_topHiddenTitle.replacingOccurrences(of: "make", with: "%")).localizedArguments(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (str_cellCalledName.replacingOccurrences(of: "total", with: "a")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(str_pointToolText.replacingOccurrences(of: "window", with: "a"))] = (String(str_levelData) + String(str_dataMakeName)).localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(str_giftTitle.suffix(7)))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(str_valueKeyName.suffix(8)))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(str_belowText))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(str_showValue.prefix(5)) + "pEffect")] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(str_rowText))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(str_dataUsBeginTitle.replacingOccurrences(of: "to", with: "ma") + "ionT" + String(str_removeInviteTitle))] = dictM[(str_equalSuccessName.replacingOccurrences(of: "add", with: "nu"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<AggregationHandyJSON>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func nameFinish(model: AggregationHandyJSON) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        adjudicate()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func giftExecuteEnable(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        adjudicate()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func textTo() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func dataName(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        adjudicate()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func taget(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = CompartmentAnimatTool.shared.cacheTo(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        adjudicate()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func adjudicate() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            roomPull()
        }
    }

    /// 播放
    //: func playNext() {
    func roomPull() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: AggregationHandyJSON = obj as! AggregationHandyJSON
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == ExamineVarArg.myStery.rawValue || model.showType == ExamineVarArg.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.share(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                adjudicate()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension PopView {
    // 添加视图
    //: private func setupSubviews() {
    private func allQuantityerrupt() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.roomPull()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.roomPull()
            }
        }
    }
}
