
//: Declare String Begin

/*: ".db" :*/
fileprivate let str_touchTopTitle:String = "label make number let gift.db"

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let str_appValue:[Character] = ["W","C","D","B","\u{6570}","据","库","打","\u{5f00}","失","败","：","u","s","e","r"]
fileprivate let str_makeValue:String = "Id\u{4e3a}空。"

/*: "WCDB/ :*/
fileprivate let str_videoName:[Character] = ["W","C","D","B","/"]

/*: "WCDB数据库打开失败： :*/
fileprivate let str_cellValue:[Character] = ["W","C","D","B","数","据"]
fileprivate let str_viewLabelValue:String = "库打开失败："

/*: "WCDB数据库成功打开： :*/
fileprivate let str_deadlineText:[Character] = ["W","C","D","B","数","据","库","\u{6210}","功","打","开","："]

/*: "WCDB数据库成功关闭。" :*/
fileprivate let str_modelValue:[Character] = ["W","C","D","B","数"]
fileprivate let str_cardPostText:String = "\u{636e}库成功关闭。"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let str_partyHeadValue:[Character] = ["W","C","D","B","数","据","\u{5e93}","：","创","建","\u{8868}","失"]
fileprivate let str_shareColorData:String = "败。ermake on view file"

/*: ." :*/
fileprivate let str_mediumValue:[Character] = ["."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotaleractionManager.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit

//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class TotaleractionManager: NSObject {
    //: static let shared = WCDBManager()
    static let shared = TotaleractionManager()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return WithAdministratorAppManager.share.loginUserMode.userID + ".db"
        return WithAdministratorAppManager.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.rawDatabase()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func rawDatabase() {
        //: closeDatabase()
        heritageConstraint()

        //: guard !WithAdministratorAppManager.share.loginUserMode.userID.isEmpty else {
        guard !WithAdministratorAppManager.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            QueryThen.bringInstance(msg: (String(str_appValue) + str_makeValue))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(str_videoName)) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            QueryThen.bringInstance(msg: (String(str_cellValue) + str_viewLabelValue.capitalized) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(str_deadlineText)) + "\(fileURL.path)")
        //: createTables()
        blast()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func heritageConstraint() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (String(str_modelValue) + str_cardPostText))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension TotaleractionManager {
    /// 创建表
    //: private func createTables() {
    private func blast() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: kLet_bottomValue, of: FromInfoTable.self)
            // 语音消息表
            //: try database?.create(table: MarkThenName, of: MarkThen.self)
            try database?.create(table: kLet_soundData, of: MarkThen.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            QueryThen.bringInstance(msg: (String(str_partyHeadValue) + String(str_shareColorData.prefix(4)) + "ror：") + "\(error).")
        }
    }
}
