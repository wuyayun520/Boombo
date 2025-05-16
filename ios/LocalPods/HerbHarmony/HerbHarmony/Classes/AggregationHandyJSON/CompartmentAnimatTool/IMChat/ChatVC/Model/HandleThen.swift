
//: Declare String Begin

/*: "TalkingIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let str_automaticallyData:[UInt8] = [0x3b,0xe,0x3,0x4,0x6,0x1,0x8,0x26,0x1,0x1b,0x6,0x2,0xe,0x1b,0xa,0x3f,0x7,0x0,0x1b,0x0,0x3a,0x1,0x3,0x0,0xc,0x4,0x22,0x1c,0x8,0x26,0xb,0x2e,0x1d,0x1d,0xe,0x16,0x24,0xa,0x16]

private func toFrom(file num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "TalkingPrivateChatVideoTipsIsShow_ :*/
fileprivate let str_bottomSpaceData:[UInt8] = [0x6c,0x79,0x84,0x83,0x81,0x86,0x7f,0x68,0x8a,0x81,0x8e,0x79,0x8c,0x7d,0x5b,0x80,0x79,0x8c,0x6e,0x81,0x7c,0x7d,0x87,0x6c,0x81,0x88,0x8b,0x61,0x8b,0x6b,0x80,0x87,0x8f,0x77]

fileprivate func playResultMake(aspect num: UInt8) -> UInt8 {
    let value = Int(num) + 232
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: _ :*/
fileprivate let str_everyName:[Character] = ["_"]

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let str_imageTitle:[UInt8] = [0x65,0x63,0x6e,0x6f,0x20,0x6d,0x69,0x68,0x20,0x6f,0x74,0x20,0x74,0x6e,0x65,0x73,0x20,0x65,0x62,0x20,0x79,0x6c,0x6e,0x6f,0x20,0x6e,0x61,0x63,0x20,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6b,0x63,0x69,0x75,0x51]

/*: "txt" :*/
fileprivate let str_pathTitle:String = "maint"

/*: "audio" :*/
fileprivate let str_modelLastData:String = "locationudio"

/*: "Please add greeting text" :*/
fileprivate let str_labText:String = "Pleaselet array"
fileprivate let str_headName:String = "for if app register gree"
fileprivate let str_indexValue:String = "colorxt"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let str_itemValue:[UInt8] = [0xa9,0x9f,0x85,0xd0,0x98,0x91,0x86,0x95,0xd0,0x9e,0x9f,0x84,0xd0,0x83,0x95,0x84,0xd0,0x85,0x80,0xd0,0x91,0xd0,0x80,0x98,0x9f,0x84,0x9f,0xd0,0x97,0x82,0x95,0x95,0x84,0x99,0x9e,0x97,0xdc,0xd0,0x80,0x9c,0x95,0x91,0x83,0x95,0xd0,0x83,0x95,0x84,0xd0,0x99,0x84,0xd0,0x85,0x80,0xd0,0x92,0x95,0x96,0x9f,0x82,0x95,0xd0,0x83,0x95,0x9e,0x94,0x99,0x9e,0x97,0xd1]

private func ofView(data num: UInt8) -> UInt8 {
    return num ^ 240
}

/*: "Cancel" :*/
fileprivate let str_centerName:[Character] = ["C","a","n","c","e","l"]

/*: "Go to set" :*/
fileprivate let str_momentIconData:String = "Go to srender model up"
fileprivate let str_cellText:String = "rowt"

/*: "#startTime#" :*/
fileprivate let str_sexValue:[Character] = ["#","s","t","a","r","t","T","i","m","e","#"]

/*: "#endTime#" :*/
fileprivate let str_objectValue:[Character] = ["#","e","n","d","T","i","m","e","#"]

/*: "text" :*/
fileprivate let str_appName:String = "tefilet"

/*: "img" :*/
fileprivate let str_directionValue:String = "imcolor"

/*: "video" :*/
fileprivate let str_topData:String = "barideo"

/*: "gift" :*/
fileprivate let str_titleName:[Character] = ["g","i","f","t"]

/*: "map" :*/
fileprivate let str_keySignData:[Character] = ["m","a","p"]

/*: "PrivateChat 点击引用消息 :*/
fileprivate let str_sizeValue:[Character] = ["P","r","i","v","a","t","e","C","h","a","t"]
fileprivate let str_currentName:[Character] = [" ","点","击","引","用","\u{6d88}","息"]

/*: ." :*/
fileprivate let str_blockText:String = "moment"

/*: "Sent " :*/
fileprivate let str_expressContent:[Character] = ["S","e","n","t"," "]

/*: " x :*/
fileprivate let str_cornerName:String = "status copy size a model x"

/*: "&type= :*/
fileprivate let str_cellValue:String = "attribute height let&type="

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class HandleThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = HandleThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "TalkingIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: str_automaticallyData.map{toFrom(file: $0)}, encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func flagHandler(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else { return }
        // 男性
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "TalkingPrivateChatVideoTipsIsShow_\(String(WithAdministratorAppManager.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: str_bottomSpaceData.map{playResultMake(aspect: $0)}, encoding: .utf8)! + "\(String(WithAdministratorAppManager.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = kLet_dismissData.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? TUIMessageCellData
            let indexModel = indexModel as? TUIMessageCellData
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: CollectionThen.self) {
                if indexModel!.isKind(of: CollectionThen.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! CollectionThen
                    let textMsgModel = indexModel as! CollectionThen
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: VoxCellData.self) ||
                if indexModel!.isKind(of: VoxCellData.self) ||
                    //: indexModel!.isKind(of: CollectionThen.self) ||
                    indexModel!.isKind(of: CollectionThen.self) ||
                    //: indexModel!.isKind(of: IndexClearThen.self) ||
                    indexModel!.isKind(of: IndexClearThen.self) ||
                    //: indexModel!.isKind(of: DemonstrateCellData.self) {
                    indexModel!.isKind(of: DemonstrateCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_dismissData.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            kLet_dismissData.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func digitiserShared(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(WithAdministratorAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(WithAdministratorAppManager.share.loginUserMode.userID)_\(kLet_pointDeviceScreenValue)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: str_imageTitle.reversed(), encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: BridgeReactiveCompatible.req_getAutoGreetContent { succeed, result, errorModel in
        BridgeReactiveCompatible.makeBag { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !WithAdministratorAppManager.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !WithAdministratorAppManager.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ShowWindowManager.shared.mObjectDetail()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(str_pathTitle.replacingOccurrences(of: "main", with: "tx"))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(str_modelLastData.replacingOccurrences(of: "location", with: "a"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(str_labText.prefix(6)) + " add" + String(str_headName.suffix(5)) + "ting " + str_indexValue.replacingOccurrences(of: "color", with: "te")).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            technique(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func technique(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(WithAdministratorAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(WithAdministratorAppManager.share.loginUserMode.userID)_\(kLet_pointDeviceScreenValue)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func stroke(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: BridgeReactiveCompatible.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        BridgeReactiveCompatible.buildLoad(toUid: toUserId) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = ManagerAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                VoiceAlertShow.customForTotal(message: String(bytes: str_itemValue.map{ofView(data: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_centerName)).localized, rightBtnTitle: (String(str_momentIconData.prefix(7)) + str_cellText.replacingOccurrences(of: "row", with: "e")).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !WithAdministratorAppManager.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !WithAdministratorAppManager.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                ShowWindowManager.shared.mObjectDetail()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension HandleThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func voiceGesture(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard WithAdministratorAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard WithAdministratorAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: WithAdministratorAppManager.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.themeValue(shDateStr: WithAdministratorAppManager.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: WithAdministratorAppManager.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.themeValue(shDateStr: WithAdministratorAppManager.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.frontTime(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = WithAdministratorAppManager.share.appConfigMode.CSConfig.systemTips
        var tips = WithAdministratorAppManager.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(str_sexValue)), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(str_objectValue)), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
    static func viewLegalStatus(cellData: TUIMessageCellData, msgView: TUIMessageController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = kLet_dismissData.object(forKey: HandleThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: IndexClearThen.self) ||
                  cellData.isKind(of: IndexClearThen.self) ||
                  //: cellData.isKind(of: DemonstrateCellData.self)) else { return }
                  cellData.isKind(of: DemonstrateCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                makeWith(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                kLet_dismissData.set(array, forKey: HandleThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: ButtonCellData.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: ButtonCellData.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! TUIMessageCellData
            let data = msgCellData as! TUIMessageCellData
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                makeWith(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
    private static func makeWith(_ cellData: TUIMessageCellData, _ msgView: TUIMessageController) {
        //: if cellData.isKind(of: IndexClearThen.self) {
        if cellData.isKind(of: IndexClearThen.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: DemonstrateCellData.self) {
        } else if cellData.isKind(of: DemonstrateCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func reply(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard ClassTipsProtocol.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        ClassTipsProtocol.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func screen(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard ClassTipsProtocol.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard HandleThen.common(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func common(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: TUIMessageCellData) -> Bool {
    static func mic(cellData: TUIMessageCellData) -> Bool {
        //: if WithAdministratorAppManager.share.loginUserMode.loungePlus == false,
        if WithAdministratorAppManager.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: TUIMessageCellData) -> Bool {
    static func photoData(cellData: TUIMessageCellData) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if WithAdministratorAppManager.share.loginUserMode.loungePlus == true,
        if WithAdministratorAppManager.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: TUIMessageCellData) -> Bool {
    static func beyondCollection(cellData: TUIMessageCellData) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = HandleThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: TUIMessageCellData, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func magnitudeer(cellData: TUIMessageCellData, targetId: String) -> PathModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = PathModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = WithAdministratorAppManager.share.loginUserMode.userID
            quoteModel.uid = WithAdministratorAppManager.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = ByJsonModel()
        //: if cellData.isKind(of: CollectionThen.self) {
        if cellData.isKind(of: CollectionThen.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (str_appName.replacingOccurrences(of: "file", with: "x"))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: IndexClearThen.self) {
        } else if cellData.isKind(of: IndexClearThen.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (str_directionValue.replacingOccurrences(of: "color", with: "g"))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: DemonstrateCellData.self) {
        } else if cellData.isKind(of: DemonstrateCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (str_topData.replacingOccurrences(of: "bar", with: "v"))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: VoxCellData.self) {
        } else if cellData.isKind(of: VoxCellData.self) {
            //: let audioCelldata = cellData as! VoxCellData
            let audioCelldata = cellData as! VoxCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (str_modelLastData.replacingOccurrences(of: "location", with: "a"))
            //: let voiceCache = ChiefThen.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = ChiefThen.thirdMessage(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: ButtonCellData.self) {
        } else if cellData.isKind(of: ButtonCellData.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (String(str_titleName))
            //: let giftCellData = cellData as! ButtonCellData
            let giftCellData = cellData as! ButtonCellData
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            //: }else if cellData.isKind(of: UserCellData.self) {
        } else if cellData.isKind(of: UserCellData.self) {
            //: quoteModel.renderType = "map"
            quoteModel.renderType = (String(str_keySignData))
            //: renderData.latlon = cellData.msgModel.msgInfo.latlon
            renderData.latlon = cellData.msgModel.msgInfo.latlon
        }
        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: TUIMessageCellData, targetId: String) {
    static func tab(cellData: TUIMessageCellData, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        QueryThen.bringInstance(msg: (String(str_sizeValue) + String(str_currentName)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (str_appName.replacingOccurrences(of: "file", with: "x")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = MDoingReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.sex()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (str_directionValue.replacingOccurrences(of: "color", with: "g")) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(kLet_appText)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = ClimaxModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = ModelHandyJSON()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [ClimaxModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = CountryViewController(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            HandleThen.share.navigation()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (str_topData.replacingOccurrences(of: "bar", with: "v")) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = ViewManagerReactiveCompatible(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            HandleThen.share.navigation()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (str_modelLastData.replacingOccurrences(of: "location", with: "a")) {
            //: let cacheWrap = MarkThen.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = MarkThen.find(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = OnMeasurable()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = MarkThen()
                let model = MarkThen()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                if renderData.uid == WithAdministratorAppManager.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = WithAdministratorAppManager.share.loginUserMode.userID
                    model.db_touid = WithAdministratorAppManager.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: MarkThen.db_insertVoiceMsg(model)
                MarkThen.instill(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            ExampleManagerDelegate.shared.participant()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            ExampleManagerDelegate.shared.coinage(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (String(str_titleName)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = MDoingReactiveCompatible(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(str_expressContent)).localized + renderData.renderData.contextImage() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.sex()
            //: } else if renderData.renderType == "map" {
        } else if renderData.renderType == (String(str_keySignData)) {
            //: let location = TalkingMapView(frame: CGRect.zero, isSelf: (cellData.direction == .MsgDirectionOutgoing), latlon: renderData.renderData.latlon)
            let location = GiveAndTakeMapView(frame: CGRect.zero, isSelf: cellData.direction == .MsgDirectionOutgoing, latlon: renderData.renderData.latlon)
            //: location.show()
            location.bag()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension HandleThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func actionVersion(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }

    /// 检测用户是否可以直接进入预览界面

    //: static func checkCanPreview(isImg: Bool, needAlert:Bool) -> Int {
    static func cardAlert(isImg: Bool, needAlert: Bool) -> Int {
        //: let modelArr = WithAdministratorAppManager.share.loginUserMode.residualInfo.filter { model in
        let modelArr = WithAdministratorAppManager.share.loginUserMode.residualInfo.filter { model in
            //: model.type == (isImg ? 1 : 2)
            model.type == (isImg ? 1 : 2)
        }

        //: if let model = modelArr[safe: 0], model.num > 0 {
        if let model = modelArr[safe: 0], model.num > 0 {
            //: return model.num
            return model.num
        }

        //: if needAlert {
        if needAlert {
            //: if WithAdministratorAppManager.share.loginUserMode.loungePlus {
            if WithAdministratorAppManager.share.loginUserMode.loungePlus {
                //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: "&type=\((isImg ? 1 : 2))")
                LeadingEqualReactiveCompatible.share.squash(appendParams: (String(str_cellValue.suffix(6))) + "\(isImg ? 1 : 2)")
                //: }else{
            } else {
                //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
                LeadingEqualReactiveCompatible.share.nowKeyLog()
            }
        }

        //: return 0
        return 0
    }
}
