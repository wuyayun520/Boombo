
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let str_onlineText:[Character] = ["D","B","U","s","e","r","V","o","i","c","e","T","a","b","l","e"]

/*: "msgId" :*/
fileprivate let str_layerName:String = "msgIdfragment name"

/*: "toUid" :*/
fileprivate let str_sectionValue:String = "text accept layertoUid"

/*: "senderId" :*/
fileprivate let str_aspectValue:String = "secolorer"
fileprivate let str_imageCenterTitle:[Character] = ["I","d"]

/*: "audioSandbox" :*/
fileprivate let str_viewName:String = "audsucceed"
fileprivate let str_lengthData:[Character] = ["x"]

/*: "audioLength" :*/
fileprivate let str_maxData:[Character] = ["a","u","d","i","o","L","e","n","g","t","h"]

/*: "audioData" :*/
fileprivate let str_targetValue:[Character] = ["a","u","d","i","o","D","a","t","a"]

/*: "audioUri" :*/
fileprivate let str_errorValue:[Character] = ["a","u","d","i","o","U","r","i"]

/*: "isRead" :*/
fileprivate let str_dateValue:[Character] = ["i","s","R","e","a","d"]

/*: "WCDB表 :*/
fileprivate let str_behindName:String = "WCDB表party view view video"

/*: : 批量插入数据失败。error： :*/
fileprivate let str_playData:String = ": 批量image"
fileprivate let str_cardOfData:String = "入数据失败"

/*: ." :*/
fileprivate let str_hiddenData:[Character] = ["."]

/*: : 更新数据失败。error： :*/
fileprivate let str_playTitle:String = ": 更with数"
fileprivate let str_countData:[Character] = ["r","r","o","r","："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MarkThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

/// 表名
//: let MarkThenName = "DBUserVoiceTable"
let kLet_soundData = (String(str_onlineText))
//: @objcMembers
@objcMembers
//: public final class MarkThen: NSObject, TableCodable {
public final class MarkThen: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = MarkThen
        public typealias Root = MarkThen
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension MarkThen {
extension MarkThen {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> MarkThen {
    public class func inserSmall(_ dic: [AnyHashable: Any]) -> MarkThen {
        //: let cache = MarkThen()
        let cache = MarkThen()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(str_layerName.prefix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(str_sectionValue.suffix(5)))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(str_aspectValue.replacingOccurrences(of: "color", with: "nd") + String(str_imageCenterTitle))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(str_viewName.replacingOccurrences(of: "succeed", with: "i") + "oSandbo" + String(str_lengthData))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(String(str_maxData))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((String(str_targetValue))) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(String(str_targetValue))] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((String(str_errorValue))) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(String(str_errorValue))] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(String(str_dateValue))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        flushWithVoiceOver(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: MarkThen) {
    class func instill(_ voiceMsg: MarkThen) {
        //: MarkThen.db_insertVoiceMsgs([voiceMsg])
        MarkThen.placeView([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [MarkThen]) {
    class func placeView(_ voiceMsgs: [MarkThen]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TotaleractionManager.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: MarkThenName)
                try TotaleractionManager.shared.database?.insert(voiceMsgs, intoTable: kLet_soundData)
                //: } catch {
            } catch {
                QueryThen.bringInstance(msg: "WCDB表\(kLet_soundData): 批量插入数据失败。error：\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> MarkThen? {
    public class func find(with msgId: String) -> MarkThen? {
        //: if let voiceMsgs = MarkThen.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = MarkThen.voiceWith(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [MarkThen]? {
    class func voiceWith(with msgIds: [String]) -> [MarkThen]? {
        //: do {
        do {
            //: let condition = MarkThen.Properties.msgId.in(msgIds)
            let condition = MarkThen.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [MarkThen]? = try WCDBManager.shared.database?.getObjects(on: MarkThen.Properties.all, fromTable: MarkThenName, where: condition)
            let voiceMsgs: [MarkThen]? = try TotaleractionManager.shared.database?.getObjects(on: MarkThen.Properties.all, fromTable: kLet_soundData, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: MarkThen) {
    class func flushWithVoiceOver(_ voiceMsg: MarkThen) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TotaleractionManager.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if MarkThen.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if MarkThen.find(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = MarkThen.Properties.msgId == voiceMsg.msgId
                    let condition = MarkThen.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: MarkThenName,
                    try TotaleractionManager.shared.database?.update(table: kLet_soundData,
                                                            //: on: MarkThen.Properties.all,
                                                            on: MarkThen.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(MarkThenName): 更新数据失败。error：\(error).")
                    QueryThen.bringInstance(msg: (String(str_behindName.prefix(5))) + "\(kLet_soundData)" + (str_playTitle.replacingOccurrences(of: "with", with: "新") + "据失\u{8d25}。e" + String(str_countData)) + "\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: MarkThen.db_insertVoiceMsg(voiceMsg)
                MarkThen.instill(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func refreshOfPath(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = MarkThen.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = MarkThen.find(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: MarkThen.db_updateVoiceMsg(dbModel)
        MarkThen.flushWithVoiceOver(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func resource(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TotaleractionManager.shared.database?.run(transaction: { _ in
            //: let condition = MarkThen.Properties.msgId == msgId
            let condition = MarkThen.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: MarkThenName,
            try? TotaleractionManager.shared.database?.delete(fromTable: kLet_soundData,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func communicationMenu(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? TotaleractionManager.shared.database?.run(transaction: { _ in
            //: let condition = MarkThen.Properties.db_senduid == userId && MarkThen.Properties.db_touid == toUid
            let condition = MarkThen.Properties.db_senduid == userId && MarkThen.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: MarkThenName,
            try? TotaleractionManager.shared.database?.delete(fromTable: kLet_soundData,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
