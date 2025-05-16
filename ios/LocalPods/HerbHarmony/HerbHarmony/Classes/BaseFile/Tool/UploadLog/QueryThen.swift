
//: Declare String Begin

/*: "There is no data to upload" :*/
fileprivate let str_statusSumData:String = "There equal manager less"
fileprivate let str_cellColorText:String = "o databag post view"
fileprivate let str_textTitle:String = "OAD"

/*: "Upload Log successfully!" :*/
fileprivate let str_constraintValue:String = "indicator title me to clickUploa"
fileprivate let str_voiceName:String = "self protocol title height mode suc"
fileprivate let str_rawTitle:String = "ully!lab to view let"

/*: "UID:  :*/
fileprivate let str_frameSectionIndexValue:String = "UID: response in behind to to"

/*: "/com_tencent_imsdk_log" :*/
fileprivate let str_upData:String = "/comat view guard approximate share"
fileprivate let str_rangeGestureTitle:[Character] = ["t","_","i","m","s","d","k","_","l","o","g"]

/*: "/log" :*/
fileprivate let str_popTitle:String = "input equal app string/log"

/*: "/TempLogZip" :*/
fileprivate let str_countValue:String = "/Tetype user self string inside"
fileprivate let str_styleInsideValue:[Character] = ["m","p","L","o","g","Z","i","p"]

/*: "/LogZip.zip" :*/
fileprivate let str_runData:[Character] = ["/","L","o","g","Z","i","p",".","z","i"]
fileprivate let str_liveData:[Character] = ["p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QueryThen.swift
//  Adjust
//
//  Created by DouXiu on 2024/5/22.
//

//: import UIKit
import UIKit

//: import DXMarsXlog
import DXMarsXlog

//: class UploadLogTool: NSObject {
class QueryThen: NSObject {
    /// 上传7天内
    //: private let uploadDay = 7
    private let uploadDay = 7
    //: static let shared = UploadLogTool()
    static let shared = QueryThen()

    /// 上传日志
    /// - Parameter showTips: 是否展示提示
    //: func uploadLog(_ showTips: Bool = true) {
    func atMake(_ showTips: Bool = true) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            atShow(showMsg: kLet_detailMessageValue)
            //: return
            return
        }
        //: if showTips {
        if showTips {
            //: ProgressHUD.show()
            StandardProgressHUD.indexRoom()
        }
        // im
        //: if let path = UploadLogTool.getIMSDKLogPath() {
        if let path = QueryThen.faculty() {
            //: copyLogToTempPath(logPath: path)
            withPath(logPath: path)
        }
        // trtc
        //: if let path = UploadLogTool.getTRTCLogPath() {
        if let path = QueryThen.toSearchAt() {
            //: copyLogToTempPath(logPath: path)
            withPath(logPath: path)
        }
        // xlog
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
        //: copyLogToTempPath(logPath: DXMarsXLogger.getLogPath())
        withPath(logPath: DXMarsXLogger.getLogPath())

        // 压缩上传
        //: if let tempPath = UploadLogTool.getTempUploadLogPath(), let zipPath = UploadLogTool.getZipLogPath() {
        if let tempPath = QueryThen.appButton(), let zipPath = QueryThen.incurMediumKey() {
            //: SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            //: if let file = NSData(contentsOfFile: zipPath) {
            if let file = NSData(contentsOfFile: zipPath) {
                //: if file.length < 10 {
                if file.length < 10 {
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarErrorMsg(showMsg: "There is no data to upload".localized)
                        self.atShow(showMsg: (String(str_statusSumData.prefix(6)) + "is n" + String(str_cellColorText.prefix(6)) + " to upl" + str_textTitle.lowercased()).localized)
                    }
                    //: return
                    return
                }
                // cos上传
                //: TalkingMomentVideoManager.shared.cos_uploadLog(filePath: zipPath) { succeed, errorMsg in
                AssociatedStateDirectorSignatureProvider.shared.tableStyle(filePath: zipPath) { succeed, errorMsg in
                    //: ProgressHUD.dismiss()
                    StandardProgressHUD.giftTo()
                    //: guard succeed else {
                    guard succeed else {
                        //: if showTips, errorMsg?.isEmpty == false {
                        if showTips, errorMsg?.isEmpty == false {
                            //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                            self.atShow(showMsg: errorMsg!)
                        }
                        //: return
                        return
                    }

                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Upload Log successfully!".localized)
                        self.successMsg(showMsg: (String(str_constraintValue.suffix(5)) + "d Log" + String(str_voiceName.suffix(4)) + "cessf" + String(str_rawTitle.prefix(5))).localized)
                    }

                    // 移除缓存
                    //: try? FileManager.default.removeItem(atPath: zipPath)
                    try? FileManager.default.removeItem(atPath: zipPath)
                    //: try? FileManager.default.removeItem(atPath: tempPath)
                    try? FileManager.default.removeItem(atPath: tempPath)
                    //: self.clearContentsOfDirectory(atPath: DXMarsXLogger.getLogPath())
                    self.everyCounteraction(atPath: DXMarsXLogger.getLogPath())
                }
            }
        }
    }
}

// MARK: - 写入用户行为日志到本地文件

//: extension UploadLogTool {
extension QueryThen {
    /// 写入用户行为日志到本地文件
    /// - Parameter msg: 日志
    //: static func writeLog<T>(msg: T,
    static func bringInstance<T>(msg: T,
                                 //: file: String = #file,
                                 file: String = #file,
                                 //: method: String = #function,
                                 method: String = #function,
                                 //: line: Int = #line) {
                                 line: Int = #line)
    {
        //: DXMarsXLogger.logInfo("UID: \(WithAdministratorAppManager.share.loginUserMode.userID)",
        DXMarsXLogger.logInfo((String(str_frameSectionIndexValue.prefix(5))) + "\(WithAdministratorAppManager.share.loginUserMode.userID)",
                              //: message: "\(msg)",
                              message: "\(msg)",
                              //: file: file,
                              file: file,
                              //: line: line,
                              line: line,
                              //: function: method)
                              function: method)
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
    }
}

// MARK: - 日志路径操作

//: extension UploadLogTool {
extension QueryThen {
    /// Copy符合条件的日志到指定路径
    //: private func copyLogToTempPath(logPath: String) {
    private func withPath(logPath: String) {
        //: guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        // 获取当前日期和指定天数前的日期
        //: let calendar = Calendar.current
        let calendar = Calendar.current
        //: let today = Date()
        let today = Date()
        //: guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        //: subpaths.forEach { fileName in
        subpaths.forEach { fileName in
            //: let fullPath = logPath + "/" + fileName
            let fullPath = logPath + "/" + fileName
            //: guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
            guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
                  //: let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
                  let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
            // 获取文件修改日期的开始时间
            //: let fileDate = calendar.startOfDay(for: modificationDate)
            let fileDate = calendar.startOfDay(for: modificationDate)
            // 判断文件日期是否在指定天数范围内
            //: if fileDate > daysAgo,
            if fileDate > daysAgo,
               //: let tempPath = UploadLogTool.getTempUploadLogPath() {
               let tempPath = QueryThen.appButton()
            {
                //: try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
                try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
            }
        }
    }

    /// 清空指定路径下的所有文件
    //: private func clearContentsOfDirectory(atPath path: String) {
    private func everyCounteraction(atPath path: String) {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if let files = try? fileManager.contentsOfDirectory(atPath: path) {
        if let files = try? fileManager.contentsOfDirectory(atPath: path) {
            //: for file in files {
            for file in files {
                //: let filePath = path + "/" + file
                let filePath = path + "/" + file
                //: try? fileManager.removeItem(atPath: filePath)
                try? fileManager.removeItem(atPath: filePath)
            }
        }
    }
}

// MARK: - 日志本地路径

//: extension UploadLogTool {
extension QueryThen {
    /// 获取腾讯IM日志路径
    //: private static func getIMSDKLogPath() -> String? {
    private static func faculty() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending("/com_tencent_imsdk_log")
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending((String(str_upData.prefix(4)) + "_tencen" + String(str_rangeGestureTitle)))
    }

    /// 获取腾讯TRTC日志路径
    //: private static func getTRTCLogPath() -> String? {
    private static func toSearchAt() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/log")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_popTitle.suffix(4))))
    }

    /// copy临时路径
    //: private static func getTempUploadLogPath() -> String? {
    private static func appButton() -> String? {
        //: if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/TempLogZip") {
        if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_countValue.prefix(3)) + String(str_styleInsideValue))) {
            //: if FileManager.default.fileExists(atPath: logPath) == false {
            if FileManager.default.fileExists(atPath: logPath) == false {
                //: try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
                try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
            }
            //: return logPath
            return logPath
        }
        //: return nil
        return nil
    }

    /// 压缩日志文件路径
    //: private static func getZipLogPath() -> String? {
    private static func incurMediumKey() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/LogZip.zip")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(str_runData) + String(str_liveData)))
    }
}
