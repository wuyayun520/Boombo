
//: Declare String Begin

/*: "http://" :*/
fileprivate let str_gestureContent:String = "count layer imagehttp://"

/*: "https://" :*/
fileprivate let str_cellName:[Character] = ["h"]
fileprivate let str_nameValueText:[Character] = ["t","t","p","s",":","/","/"]

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let str_acceptText:[UInt8] = [0xbc,0xa0,0xad,0xb8,0xaa,0xa3,0xbe,0xa1,0xf1,0xa5,0xbc,0xa4,0xa3,0xa2,0xa9,0xea,0xba,0xa9,0xbe,0xbf,0xa5,0xa3,0xa2,0xf1,0xe9,0x8c,0xea,0xbc,0xad,0xaf,0xa7,0xad,0xab,0xa9,0x85,0xa8,0xf1,0xe9,0x8c,0xea,0xae,0xb9,0xa2,0xa8,0xa0,0xa9,0x85,0xa8,0xf1,0xe9,0x8c]

private func playerCard(push num: UInt8) -> UInt8 {
    return num ^ 204
}

/*: "%@%@&%@" :*/
fileprivate let str_endText:[Character] = ["%","@","%","@","&","%"]
fileprivate let str_contentValue:String = "handle"

/*: "url" :*/
fileprivate let str_keyName:String = "urindex"

/*: "id" :*/
fileprivate let str_bindValue:[Character] = ["i","d"]

/*: "length" :*/
fileprivate let str_meName:String = "kind"
fileprivate let str_toText:String = "enviewth"

/*: "getFileSize error : :*/
fileprivate let str_appearText:[Character] = ["g","e","t","F","i","l","e","S","i","z","e"," ","e","r","r","o"]
fileprivate let str_pathValue:String = "video phoner :"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum PopCustomReflectable: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum StackEffectExpressionConvertible: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class ManagerThen: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: PopCustomReflectable = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: StackEffectExpressionConvertible = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: MarkThen) -> VoiceDownloadTaskModel {
    class func labModel(_ tempModel: MarkThen) -> ManagerThen {
        //: let model = VoiceDownloadTaskModel()
        let model = ManagerThen()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(str_gestureContent.suffix(7)))) || tempModel.db_voiceUri.contains((String(str_cellName) + String(str_nameValueText))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", IconThen.getAppNetVersion(), IconThen.getPackageID(), IconThen.getAppBundle())
            let otherParams = String(format: String(bytes: str_acceptText.map{playerCard(push: $0)}, encoding: .utf8)!, IconThen.lastWithVersion(), IconThen.comeUpAndBundle(), IconThen.videoBundle())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", DoingAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = ManagerThen.popFrom(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func doingeBind(_ voiceInfo: [String: Any]) -> ManagerThen {
        //: let model = VoiceDownloadTaskModel()
        let model = ManagerThen()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(str_keyName.replacingOccurrences(of: "index", with: "l"))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(str_meName.replacingOccurrences(of: "kind", with: "l") + str_toText.replacingOccurrences(of: "view", with: "g"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(ToDoingReactiveCompatible.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(ToDoingReactiveCompatible.courseOfActionValue())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension ManagerThen {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func popFrom(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(str_appearText) + String(str_pathValue.suffix(3))) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func getPath() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(ToDoingReactiveCompatible.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(ToDoingReactiveCompatible.courseOfActionValue())\(self.taskId)\(timeInterval)"
    }
}
