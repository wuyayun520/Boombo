
//: Declare String Begin

/*: "type" :*/
fileprivate let str_modelText:[Character] = ["t","y","p","e"]

/*: "You are currently on a call, please try again later" :*/
fileprivate let str_playerData:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x6c,0x6c,0x61,0x63,0x20,0x61,0x20,0x6e,0x6f,0x20,0x79,0x6c,0x74,0x6e,0x65,0x72,0x72,0x75,0x63,0x20,0x65,0x72,0x61,0x20,0x75,0x6f,0x59]

/*: "onCallResume" :*/
fileprivate let str_selectedData:String = "onCallReline i var at"
fileprivate let str_pushTitle:String = "sunamee"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithAdministratorAppManager+VideoChat.swift
//  AbroadTalking
//
//  Created by young on 2022/11/11.
//

//: import UIKit
import UIKit

// MARK: - Public Event

//: extension WithAdministratorAppManager {
extension WithAdministratorAppManager {
    /// 视频/语音发起通话
    /// - Parameters:
    ///   - info: 数据
    ///   - situation: 通话类型（默认  .Start）
    //: func start1v1TalkCall(info: [String: Any], situation: VideoChatSituation = .Start) {
    func pointDelay(info: [String: Any], situation: NameChatSituation = .Start) {
        //: let json = JSON(info)
        let json = JSON(info)
        //: let type = json["type"].intValue
        let type = json[(String(str_modelText))].intValue

        //: var vc: UIViewController?
        var vc: UIViewController?
        //: if type == 0 {
        if type == 0 { // 视频
            //: vc = TalkingVideoChatViewController()
            vc = SubmitExtraObjectProtocol()
            //: (vc as! TalkingVideoChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: situation)
            (vc as! SubmitExtraObjectProtocol).chatModel = StandardChatModel.removeSystem(info: info, situation: situation)
            //: } else {
        } else { // 音频
            //: vc = TalkingVoiceChatViewController()
            vc = CoverMessageCallerDelegate()
            //: (vc as! TalkingVoiceChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: situation)
            (vc as! CoverMessageCallerDelegate).chatModel = StandardChatModel.removeSystem(info: info, situation: situation)
        }

        //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: false, resumeData: [:])
        self.failAt(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: false, resumeData: [:])
    }

    /// 接收到视频通话
    /// - Parameter info: 数据
    //: func recieve1v1TalkRequest(info: [String: Any]) {
    func becomeCall(info: [String: Any]) {
        //: handle1v1AudioRequest(info: info, resumeTalk: false)
        fastenerTalk(info: info, resumeTalk: false)
    }

    /// 恢复视频通话
    /// - Parameter info: 数据
    //: func recieve1v1TalkResumeRequest(info: [String: Any]) {
    func mark(info: [String: Any]) {
        //: handle1v1AudioRequest(info: info, resumeTalk: true)
        fastenerTalk(info: info, resumeTalk: true)
    }
}

// MARK: - Private Event

//: extension WithAdministratorAppManager {
extension WithAdministratorAppManager {
    /// 处理视频通话
    /// - Parameters:
    ///   - info: 数据
    ///   - resumeTalk: 是否重连
    //: private func handle1v1AudioRequest(info: [String: Any], resumeTalk: Bool) {
    private func fastenerTalk(info: [String: Any], resumeTalk: Bool) {
        //: if !resumeTalk && TalkingSocketManager.shared.isTalking {
        if !resumeTalk && DataSocketDelegate.shared.isTalking {
            //: self.func__showStatusBarErrorMsg(showMsg: "You are currently on a call, please try again later".localized)
            self.atShow(showMsg: String(bytes: str_playerData.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }

        //: let json = JSON(info)
        let json = JSON(info)

        // 音视频通话中
        //: if currentViewController()!.isKind(of: TalkingVideoChatViewController.self) ||
        if actionController()!.isKind(of: SubmitExtraObjectProtocol.self) ||
            //: currentViewController()!.isKind(of: TalkingVoiceChatViewController.self) ||
            actionController()!.isKind(of: CoverMessageCallerDelegate.self) ||
            //: currentViewController()!.isKind(of: TalkingVideoInitivCallVC.self) {
            actionController()!.isKind(of: VestryObjectProtocol.self)
        {
            //: return
            return
        }

        //: let type = json["type"].intValue
        let type = json[(String(str_modelText))].intValue
        //: var vc: UIViewController?
        var vc: UIViewController?
        //: if type == 0 {
        if type == 0 { // 视频通话
            //: vc = TalkingVideoChatViewController()
            vc = SubmitExtraObjectProtocol()
            //: (vc as! TalkingVideoChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: resumeTalk ? .Resume:.Recieved)
            (vc as! SubmitExtraObjectProtocol).chatModel = StandardChatModel.removeSystem(info: info, situation: resumeTalk ? .Resume : .Recieved)
            //: } else {
        } else { // 语音通话
            //: vc = TalkingVoiceChatViewController()
            vc = CoverMessageCallerDelegate()
            //: (vc as! TalkingVoiceChatViewController).chatModel = TalkingVideoChatModel.getVideoModel(info: info, situation: resumeTalk ? .Resume:.Recieved)
            (vc as! CoverMessageCallerDelegate).chatModel = StandardChatModel.removeSystem(info: info, situation: resumeTalk ? .Resume : .Recieved)
        }

        //: let callResume = json["onCallResume"].stringValue
        let callResume = json[(String(str_selectedData.prefix(8)) + str_pushTitle.replacingOccurrences(of: "name", with: "m"))].stringValue
        //: if (resumeTalk && callResume.count > 0 && callResume == "1") { // 恢复通话
        if resumeTalk, callResume.count > 0, callResume == "1" { // 恢复通话
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: resumeTalk, resumeData: info)
                self.failAt(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: resumeTalk, resumeData: info)
            }
            //: } else {
        } else { // 构建音视频通话
            //: self.tryToPushTalkRoom(roomVC: vc!, isVideoTalk: (type == 0 ? true : false), resumeTalk: resumeTalk, resumeData: info)
            self.failAt(roomVC: vc!, isVideoTalk: type == 0 ? true : false, resumeTalk: resumeTalk, resumeData: info)
        }
    }

    /// 跳转到通话页面
    /// - Parameters:
    ///   - roomVC: 视频/语音控制器
    ///   - isVideoTalk: 是否是视频通话
    ///   - resumeTalk: 是否重连
    ///   - resumeData: 重连数据
    //: private func tryToPushTalkRoom(roomVC: UIViewController, isVideoTalk: Bool, resumeTalk: Bool, resumeData: [String: Any]) {
    private func failAt(roomVC: UIViewController, isVideoTalk: Bool, resumeTalk: Bool, resumeData: [String: Any]) {
        //: guard var currentVc = currentViewController() else { return }
        guard var currentVc = actionController() else { return }
        //: var navVc: UINavigationController?
        var navVc: UINavigationController?
        //: while(currentVc.presentingViewController != nil) {
        while currentVc.presentingViewController != nil {
            //: let upperVc = currentVc.presentingViewController
            let upperVc = currentVc.presentingViewController
            //: currentVc.dismiss(animated: false)
            currentVc.dismiss(animated: false)
            //: currentVc = upperVc!
            currentVc = upperVc!
        }

        //: if currentVc.isKind(of: UINavigationController.self) {
        if currentVc.isKind(of: UINavigationController.self) {
            //: navVc = currentVc as? UINavigationController
            navVc = currentVc as? UINavigationController
            //: } else if currentVc.navigationController != nil {
        } else if currentVc.navigationController != nil {
            //: navVc = currentVc.navigationController
            navVc = currentVc.navigationController
            //: } else {
        } else {
            //: let rootVc = IconThen.getWindow().rootViewController as! UITabBarController
            let rootVc = IconThen.getBind().rootViewController as! UITabBarController
            //: navVc = rootVc.selectedViewController as? UINavigationController
            navVc = rootVc.selectedViewController as? UINavigationController
        }

        //: if navVc == nil || navVc?.isKind(of: UINavigationController.self) == false {
        if navVc == nil || navVc?.isKind(of: UINavigationController.self) == false {
            //: return
            return
        }

        //: let topVc = navVc?.topViewController
        let topVc = navVc?.topViewController
        //: var presentVc: UIViewController?
        var presentVc: UIViewController?
        //: if topVc?.presentedViewController != nil {
        if topVc?.presentedViewController != nil {
            //: presentVc = topVc?.presentedViewController
            presentVc = topVc?.presentedViewController
        }

        //: var talkClass: String?
        var talkClass: String?
        //: if !isVideoTalk {
        if !isVideoTalk {
            //: talkClass = NSStringFromClass(TalkingVoiceChatViewController.self)
            talkClass = NSStringFromClass(CoverMessageCallerDelegate.self)
            //: } else {
        } else {
            //: talkClass = NSStringFromClass(TalkingVideoChatViewController.self)
            talkClass = NSStringFromClass(SubmitExtraObjectProtocol.self)
        }
        //: var chatIndex = -1
        var chatIndex = -1
        //: var index = -1
        var index = -1
        //: for (idx, objClass) in navVc!.viewControllers.enumerated() {
        for (idx, objClass) in navVc!.viewControllers.enumerated() {
            //: let objClass = NSStringFromClass(objClass.classForCoder)
            let objClass = NSStringFromClass(objClass.classForCoder)
            //: if objClass == talkClass {
            if objClass == talkClass {
                //: index = idx - 1
                index = idx - 1
                //: chatIndex = objClass == talkClass ? idx:chatIndex
                chatIndex = objClass == talkClass ? idx : chatIndex
                //: break
                break
            }
        }

        //: if isVideoTalk {
        if isVideoTalk {
            //: var currentChatVc: TalkingVideoChatViewController?
            var currentChatVc: SubmitExtraObjectProtocol?
            //: let pushChatVc = roomVC as! TalkingVideoChatViewController
            let pushChatVc = roomVC as! SubmitExtraObjectProtocol

            //: if chatIndex >= 0 {
            if chatIndex >= 0 {
                //: currentChatVc = navVc?.viewControllers[chatIndex] as? TalkingVideoChatViewController
                currentChatVc = navVc?.viewControllers[chatIndex] as? SubmitExtraObjectProtocol
            }

            //: if currentChatVc != nil && currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
            if currentChatVc != nil, currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
                //: if (resumeTalk) {
                if resumeTalk {
                    //: currentChatVc?.updateInfoViaResumeTalkData(resumeData: resumeData)
                    currentChatVc?.disappear(resumeData: resumeData)
                }
                //: return
                return
            }

            //: if navVc!.isKind(of: TalkingNavigationController.self) {
            if navVc!.isKind(of: DataViewController.self) {
                //: let nav = navVc as! TalkingNavigationController
                let nav = navVc as! DataViewController
                //: nav.protectedPushVc = pushChatVc
                nav.protectedPushVc = pushChatVc
            }

            // 顶部视图为【速配结果页】，需特殊处理
            //: if topVc != nil && (topVc!.isKind(of: TalkingMatchResultViewController.self)) {
            if topVc != nil, topVc!.isKind(of: PrimaryMatchDelegate.self) {
                //: var arrM = navVc!.viewControllers
                var arrM = navVc!.viewControllers
                //: for (index, vc) in navVc!.viewControllers.enumerated() {
                for (index, vc) in navVc!.viewControllers.enumerated() {
                    //: if vc.isKind(of: TalkingMatchResultViewController.self) {
                    if vc.isKind(of: PrimaryMatchDelegate.self) {
                        //: arrM.remove(at: index)
                        arrM.remove(at: index)
                        //: break
                        break
                    }
                }
                //: pushChatVc.hidesBottomBarWhenPushed = true
                pushChatVc.hidesBottomBarWhenPushed = true
                //: arrM.append(pushChatVc)
                arrM.append(pushChatVc)
                //: navVc?.setViewControllers(arrM, animated: true)
                navVc?.setViewControllers(arrM, animated: true)
                //: return
                return
            }

            //: if presentVc != nil {
            if presentVc != nil {
                //: presentVc?.dismiss(animated: false, completion: {
                presentVc?.dismiss(animated: false, completion: {
                    //: if index >= 0 {
                    if index >= 0 {
                        //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                        //: } else {
                    } else {
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                    }
                    //: })
                })
                //: } else {
            } else {
                //: if (index >= 0) {
                if index >= 0 {
                    //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                    //: } else {
                } else {
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                }
            }

            //: } else {
        } else { // 语音通话
            //: var currentChatVc: TalkingVoiceChatViewController?
            var currentChatVc: CoverMessageCallerDelegate?
            //: let pushChatVc = roomVC as! TalkingVoiceChatViewController
            let pushChatVc = roomVC as! CoverMessageCallerDelegate

            //: if chatIndex >= 0 {
            if chatIndex >= 0 {
                //: currentChatVc = navVc?.viewControllers[chatIndex] as? TalkingVoiceChatViewController
                currentChatVc = navVc?.viewControllers[chatIndex] as? CoverMessageCallerDelegate
            }

            //: if currentChatVc != nil && currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
            if currentChatVc != nil, currentChatVc?.chatModel?.pairUid == pushChatVc.chatModel?.pairUid {
                //: if (resumeTalk) {
                if resumeTalk {
                    //: currentChatVc?.updateInfoViaResumeTalkData(resumeData: resumeData)
                    currentChatVc?.quantityercalate(resumeData: resumeData)
                }
                //: return
                return
            }

            //: if navVc!.isKind(of: TalkingNavigationController.self) {
            if navVc!.isKind(of: DataViewController.self) {
                //: let nav = navVc as! TalkingNavigationController
                let nav = navVc as! DataViewController
                //: nav.protectedPushVc = pushChatVc
                nav.protectedPushVc = pushChatVc
            }

            //: if presentVc != nil {
            if presentVc != nil {
                //: presentVc?.dismiss(animated: false, completion: {
                presentVc?.dismiss(animated: false, completion: {
                    //: if index >= 0 {
                    if index >= 0 {
                        //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                        //: } else {
                    } else {
                        //: navVc?.pushViewController(pushChatVc, animated: true)
                        navVc?.pushViewController(pushChatVc, animated: true)
                    }
                    //: })
                })
                //: } else {
            } else {
                //: if (index >= 0) {
                if index >= 0 {
                    //: navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    navVc?.popToViewController(navVc!.viewControllers[index], animated: false)
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                    //: } else {
                } else {
                    //: navVc?.pushViewController(pushChatVc, animated: true)
                    navVc?.pushViewController(pushChatVc, animated: true)
                }
            }
        }
    }
}
