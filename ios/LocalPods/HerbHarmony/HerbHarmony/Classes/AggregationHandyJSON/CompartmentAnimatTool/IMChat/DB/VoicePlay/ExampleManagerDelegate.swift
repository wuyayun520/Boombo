
//: Declare String Begin

/*: ".wav" :*/
fileprivate let str_kitIconValue:[Character] = [".","w","a","v"]

/*: "Documents/User/voice/" :*/
fileprivate let str_extraValue:[Character] = ["D","o"]
fileprivate let str_noName:[Character] = ["c","u","m","e","n","t","s","/","U","s","e","r","/","v","o","i","c","e","/"]

/*: "Documents/User/record/" :*/
fileprivate let str_contentData:String = "share app frame withoutDocume"
fileprivate let str_blockEnterName:String = "type believe manager pathser/recor"
fileprivate let str_valueWindowAppearName:String = "return let selected value ifd/"

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let str_addLastData:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a","d","F","i","n","i","s","h"]

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let str_pushValue:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a","d","C","a","n"]
fileprivate let str_recommendData:[Character] = ["c","e","l"]

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let str_sourceName:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D"]
fileprivate let str_topData:String = "owviewo"
fileprivate let str_countContent:String = "PIRED"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let str_makeWithData:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l","o","a"]
fileprivate let str_textKeyData:String = "dErroshared pop"

/*: "Play Error,File does not exist" :*/
fileprivate let str_labelData:String = "add totalPlay "
fileprivate let str_toTitle:String = ",Filecell effect"
fileprivate let str_sharedDirectionTitle:String = "s noinfo equal text layer line"
fileprivate let str_giftData:String = "voice"

/*: "Play Error,File expired" :*/
fileprivate let str_languageData:[Character] = ["P","l","a","y"," ","E","r","r","o","r",",","F","i","l","e"," ","e","x","p"]
fileprivate let str_rangeText:[Character] = ["i","r","e","d"]

/*: "Play Error，Net error" :*/
fileprivate let str_playerData:String = "type to selected to viewPlay "
fileprivate let str_insertData:String = "return viewr，Net er"
fileprivate let str_tempModeValue:String = "ROR"

/*: "Currently in mute mode" :*/
fileprivate let str_withDismissTitle:[Character] = ["C","u","r","r","e","n","t","l","y"," ","i","n"," ","m","u","t","e"," "]
fileprivate let str_sendText:String = "MODE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExampleManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum ToPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum ClickCountLiteral: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class ExampleManagerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = ExampleManagerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [OnMeasurable] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: OnMeasurable] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: ToPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        output()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func output() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension ExampleManagerDelegate {
    //: func stopAudioPlayer() {
    func participant() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func coinage(playModel: OnMeasurable) {
        //: stopAudioPlayer()
        participant()
        //: initialization()
        output()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == PopCustomReflectable.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(str_kitIconValue)))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            putDown(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = ManagerThen.labModel(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            HandleSessionDelegate.shared.headAdd([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func subedit(msgArr: [OnMeasurable]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        participant()
        //: initialization()
        output()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [ManagerThen] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: OnMeasurable?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = MarkThen.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = MarkThen.find(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == WithAdministratorAppManager.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == WithAdministratorAppManager.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == PopCustomReflectable.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != PopCustomReflectable.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != PopCustomReflectable.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = ManagerThen.labModel(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            putDown(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        HandleSessionDelegate.shared.headAdd(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func putDown(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(str_extraValue) + String(str_noName))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = kLet_turnName + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(str_contentData.suffix(6)) + "nts/U" + String(str_blockEnterName.suffix(9)) + String(str_valueWindowAppearName.suffix(2)))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = kLet_keyMarginClickText + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            when(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: MarkThen.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        MarkThen.flushWithVoiceOver(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        executeDetection()
    }

    //: func addDaskManagerDelegate() {
    func daskMatch() {
        //: stopAudioPlayer()
        participant()
        //: VoiceDownloadTaskManager.shared.delegate = self
        HandleSessionDelegate.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func disappearUser() {
        //: stopAudioPlayer()
        participant()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        HandleSessionDelegate.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension ExampleManagerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = MarkThen.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = MarkThen.find(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == PopCustomReflectable.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    putDown(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == PopCustomReflectable.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.when(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == PopCustomReflectable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.when(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == PopCustomReflectable.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                participant()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - TitleObjectProtocol

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension ExampleManagerDelegate: TitleObjectProtocol {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func trademarkRoot(model: ManagerThen) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (String(str_addLastData)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        dataPhoto(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func download(model: ManagerThen) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(str_pushValue) + String(str_recommendData)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        dataPhoto(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func number(model: ManagerThen) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(str_sourceName) + str_topData.replacingOccurrences(of: "view", with: "nl") + "adEx" + str_countContent.lowercased()))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        dataPhoto(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func sprechgesang(model _: ManagerThen) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func inscription(model: ManagerThen) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(str_makeWithData) + String(str_textKeyData.prefix(5))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        dataPhoto(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func dataPhoto(taskModel: ManagerThen) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = MarkThen.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = MarkThen.find(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == PopCustomReflectable.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                putDown(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == PopCustomReflectable.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == PopCustomReflectable.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == PopCustomReflectable.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == PopCustomReflectable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.when(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.when(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = MarkThen.db_getVoiceMsg(with: taskModel.taskId)
            let warp = MarkThen.find(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func when(status: ClickCountLiteral) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(str_labelData.suffix(5)) + "Error" + String(str_toTitle.prefix(5)) + " doe" + String(str_sharedDirectionTitle.prefix(4)) + "t exis" + str_giftData.replacingOccurrences(of: "voice", with: "t")).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(str_languageData) + String(str_rangeText)).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(str_playerData.suffix(5)) + "Erro" + String(str_insertData.suffix(8)) + str_tempModeValue.lowercased()).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(str_withDismissTitle) + str_sendText.lowercased()).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.atShow(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            participant()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension ExampleManagerDelegate {
    //: func setMutedDetection() {
    func executeDetection() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        Query.shared.doingline()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        Query.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.when(status: .FirstMuteTip)
            }
        }
    }
}
