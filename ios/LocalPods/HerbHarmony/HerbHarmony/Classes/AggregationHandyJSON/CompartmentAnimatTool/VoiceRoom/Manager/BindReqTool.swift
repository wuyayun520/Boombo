
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let str_modelTitle:[Character] = ["p","a","r","t","y","/","e","n","t","e","r"]

/*: "roomId" :*/
fileprivate let str_cellValue:[UInt8] = [0x8b,0x88,0x88,0x86,0x62,0x7d]

fileprivate func makeHeight(data num: UInt8) -> UInt8 {
    let value = Int(num) - 25
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/start" :*/
fileprivate let str_topValue:String = "pabluey"

/*: "party/close" :*/
fileprivate let str_modeData:[Character] = ["p","a","r","t","y","/","c","l","o","s"]
fileprivate let str_maxData:String = "share"

/*: "party/changeRoom" :*/
fileprivate let str_kitLabelText:String = "paequalty"
fileprivate let str_tapName:String = "selected guard self turneRoom"

/*: "beforeRoomId" :*/
fileprivate let str_targetName:[UInt8] = [0x81,0x86,0x85,0x8c,0x91,0x86,0xb1,0x8c,0x8c,0x8e,0xaa,0x87]

/*: "party/mikeList" :*/
fileprivate let str_makeChangeData:String = "pinfort"
fileprivate let str_withName:[Character] = ["k","e","L","i","s","t"]

/*: "uid" :*/
fileprivate let str_objectAllData:[UInt8] = [0xfa,0xee,0xe9]

fileprivate func greenbackParty(size num: UInt8) -> UInt8 {
    let value = Int(num) + 123
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let str_bringData:[UInt8] = [0xa7,0xaa,0xa3,0xb6]

/*: "pos" :*/
fileprivate let str_indexTitle:[UInt8] = [0x7,0x18,0x4]

private func toBack(empty num: UInt8) -> UInt8 {
    return num ^ 119
}

/*: "toPos" :*/
fileprivate let str_dataValue:[Character] = ["t","o","P","o","s"]

/*: "party/mike" :*/
fileprivate let str_rowEqualName:String = "pfinish"
fileprivate let str_viewAddValue:String = "rty/mikesucceed data model text size"

/*: "party/adminMike" :*/
fileprivate let str_valueData:String = "listarty"
fileprivate let str_sizeValue:String = "table to lab ifMike"

/*: "party/list" :*/
fileprivate let str_deviceContent:String = "cos view true line falseparty/li"
fileprivate let str_shareImageData:[Character] = ["s","t"]

/*: "party/onlineNum" :*/
fileprivate let str_timeValue:[Character] = ["p","a","r","t","y","/","o","n","l","i"]
fileprivate let str_closeValueData:String = "neNumout var state view"

/*: "party/onlineList" :*/
fileprivate let str_selectedData:[Character] = ["p","a","r","t","y","/","o","n","l","i"]
fileprivate let str_modelContent:[Character] = ["n","e","L","i","s","t"]

/*: "party/mute" :*/
fileprivate let str_signValue:String = "partapp"
fileprivate let str_hiddenValue:String = "table layer gesture/mute"

/*: "targetUid" :*/
fileprivate let str_loopName:[UInt8] = [0xbb,0xa8,0xb9,0xae,0xac,0xbb,0x9c,0xb0,0xab]

fileprivate func sexTo(object num: UInt8) -> UInt8 {
    let value = Int(num) - 71
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "duration" :*/
fileprivate let str_streamData:[UInt8] = [0x32,0x43,0x40,0x2f,0x42,0x37,0x3d,0x3c]

fileprivate func extraWindow(model num: UInt8) -> UInt8 {
    let value = Int(num) + 50
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "party/unmute" :*/
fileprivate let str_numberToName:String = "party/return target control var stroke"
fileprivate let str_sizeName:String = "skin"

/*: "party/kickout" :*/
fileprivate let str_eventValue:[Character] = ["p","a","r","t","y"]
fileprivate let str_haveName:[Character] = ["/","k","i","c","k","o","u","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BindReqTool.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class BindReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func telephoneMessageHidden(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (String(str_modelTitle))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (str_topValue.replacingOccurrences(of: "blue", with: "rt") + "/start")
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func imageCompletion(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(str_modeData) + str_maxData.replacingOccurrences(of: "share", with: "e"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func sprechgesangAndCompletion(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (str_kitLabelText.replacingOccurrences(of: "equal", with: "r") + "/chang" + String(str_tapName.suffix(5)))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId, String(bytes: str_targetName.map{$0^227}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func smallCompletion(roomId: String, completion: @escaping (_ data: [SectionModelType]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (str_makeChangeData.replacingOccurrences(of: "info", with: "a") + "y/mi" + String(str_withName))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        kLet_deviceName.clickLocation(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [SectionModelType] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<SectionModelType>.deserialize(from: arr as? Array) as? [SectionModelType] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func greetPath(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId, String(bytes: str_objectAllData.map{greenbackParty(size: $0)}, encoding: .utf8)!: uid, String(bytes: str_bringData.map{$0^211}, encoding: .utf8)!: type, String(bytes: str_indexTitle.map{toBack(empty: $0)}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(str_dataValue))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (str_rowEqualName.replacingOccurrences(of: "finish", with: "a") + String(str_viewAddValue.prefix(8)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func positionAdminLabChangeKindRoomAddCompletion(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (str_valueData.replacingOccurrences(of: "list", with: "p") + "/admin" + String(str_sizeValue.suffix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId, String(bytes: str_objectAllData.map{greenbackParty(size: $0)}, encoding: .utf8)!: uid, String(bytes: str_bringData.map{$0^211}, encoding: .utf8)!: type, String(bytes: str_indexTitle.map{toBack(empty: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func indexLive(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(str_deviceContent.suffix(8)) + String(str_shareImageData))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func constitutionalUnionPartyToRowQuery(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(str_timeValue) + String(str_closeValueData.prefix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func dataUpEnter(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (String(str_selectedData) + String(str_modelContent))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func adventure(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (str_signValue.replacingOccurrences(of: "app", with: "y") + String(str_hiddenValue.suffix(5)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: str_loopName.map{sexTo(object: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomID, String(bytes: str_streamData.map{extraWindow(model: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func groupImage(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(str_numberToName.prefix(6)) + "unmut" + str_sizeName.replacingOccurrences(of: "skin", with: "e"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: str_loopName.map{sexTo(object: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func equalCompletion(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (String(str_eventValue) + String(str_haveName))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: str_loopName.map{sexTo(object: $0)}, encoding: .utf8)!: targetUid, String(bytes: str_cellValue.map{makeHeight(data: $0)}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
