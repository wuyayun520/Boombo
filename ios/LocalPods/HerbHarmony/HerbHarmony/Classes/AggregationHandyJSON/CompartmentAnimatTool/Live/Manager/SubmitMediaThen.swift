
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let str_fromMoreTitle:[Character] = ["c","a","l","l","/","s","e","n"]
fileprivate let str_blockModelValue:String = "gift false senddMsg"

/*: "logId" :*/
fileprivate let str_indexName:String = "logIdvar model view equal make"

/*: "content" :*/
fileprivate let str_cornerData:String = "coeventteeventt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubmitMediaThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol ConditionThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func balance(Msg: SumMeasurable)
}

//: class TalkingVideoDanmuManager: NSObject {
class SubmitMediaThen: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: SubmitMediaThen? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: ConditionThen?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func toIcon() -> SubmitMediaThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = SubmitMediaThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension SubmitMediaThen {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func addMsg(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = SumMeasurable.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = ChangeManagerThen()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.caculateWithoutStochasticProcess(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.balance(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func areaCompletion(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(str_fromMoreTitle) + String(str_blockModelValue.suffix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(str_indexName.prefix(5)))] = logId
        //: dict["content"] = content
        dict[(str_cornerData.replacingOccurrences(of: "event", with: "n"))] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension SubmitMediaThen {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func clout() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if SubmitMediaThen._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            SubmitMediaThen._instance = nil
        }
    }
}
