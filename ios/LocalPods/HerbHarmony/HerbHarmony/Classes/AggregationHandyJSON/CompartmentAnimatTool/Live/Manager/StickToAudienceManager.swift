
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let str_infoValue:String = "true backlive/e"
fileprivate let str_managerData:String = "targetter"

/*: "streamerUid" :*/
fileprivate let str_secondValue:[UInt8] = [0x91,0x96,0x90,0x87,0x83,0x8f,0x87,0x90,0xb7,0x8b,0x86]

/*: "live/userNum" :*/
fileprivate let str_matchData:String = "live/birth online range sure"
fileprivate let str_messageData:String = "userNumgift on lab layer"

/*: "chatGroupId" :*/
fileprivate let str_colorValue:[UInt8] = [0x3f,0x44,0x3d,0x50,0x23,0x4e,0x4b,0x51,0x4c,0x25,0x40]

fileprivate func draftCopy(manager num: UInt8) -> UInt8 {
    let value = Int(num) - 220
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "live/members" :*/
fileprivate let str_withName:String = "mode celllive/"
fileprivate let str_viewText:String = "M"
fileprivate let str_colorContent:String = "emimagers"

/*: "live/mute" :*/
fileprivate let str_frameName:[Character] = ["l","i","v","e","/","m","u","t","e"]

/*: "targetUid" :*/
fileprivate let str_viewValue:[UInt8] = [0xc7,0xd2,0xc1,0xd4,0xd6,0xc7,0xe6,0xda,0xd7]

/*: "duration" :*/
fileprivate let str_yellowValue:[UInt8] = [0xeb,0xfa,0xfd,0xee,0xfb,0xe6,0xe0,0xe1]

private func playerMember(row num: UInt8) -> UInt8 {
    return num ^ 143
}

/*: "live/unmute" :*/
fileprivate let str_makeData:[Character] = ["l","i"]
fileprivate let str_memoryName:[Character] = ["v","e","/","u","n","m","u","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StickToAudienceManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class StickToAudienceManager: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func errorInPush(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(str_infoValue.suffix(6)) + str_managerData.replacingOccurrences(of: "target", with: "n"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: str_secondValue.map{$0^226}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func demonstrateUp(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(str_matchData.prefix(5)) + String(str_messageData.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_colorValue.map{draftCopy(manager: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func completionTapLanthanoidOpenlineRoomListTent(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (String(str_withName.suffix(5)) + str_viewText.lowercased() + str_colorContent.replacingOccurrences(of: "image", with: "be"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: str_colorValue.map{draftCopy(manager: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func themeScreen(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(str_frameName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: str_viewValue.map{$0^179}, encoding: .utf8)!: targetUid, String(bytes: str_yellowValue.map{playerMember(row: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func remote(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(str_makeData) + String(str_memoryName))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_viewValue.map{$0^179}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
