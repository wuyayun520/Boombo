
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let str_calendarValue:String = "msgIntab mask"
fileprivate let str_objectText:String = "fservice"

/*: "jumps" :*/
fileprivate let str_viewName:String = "jcellmps"

/*: "uid" :*/
fileprivate let str_userContent:[Character] = ["u","i","d"]

/*: "roomId" :*/
fileprivate let str_dataName:[UInt8] = [0x64,0x49,0x6d,0x6f,0x6f,0x72]

/*: "msgId" :*/
fileprivate let str_equalViewText:[UInt8] = [0x64,0x49,0x67,0x73,0x6d]

/*: "time" :*/
fileprivate let str_statusData:[UInt8] = [0x97,0x8c,0x90,0x88]

fileprivate func logExecute(make num: UInt8) -> UInt8 {
    let value = Int(num) - 35
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardClearReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class StandardClearReactiveCompatible: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: CustomViewController?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = StandardClearReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension StandardClearReactiveCompatible {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func received(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(str_calendarValue.prefix(5)) + str_objectText.replacingOccurrences(of: "service", with: "o"))][(str_viewName.replacingOccurrences(of: "cell", with: "u"))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == WithAdministratorAppManager.share.loginUid {
            if dict[(String(str_userContent))].stringValue == WithAdministratorAppManager.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if IconThen.isGroupChat(msg.groupID) {
        if IconThen.barSinisterConversation(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: str_dataName.reversed(), encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: str_equalViewText.reversed(), encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: str_statusData.map{logExecute(make: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.readout(info: dict)
        }
    }
}
