
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let str_equalTitle:[Character] = ["%","0","2","h","h","x"]

/*: "APNS Token =  :*/
fileprivate let str_labValue:[Character] = ["A","P","N","S"," ","T","o","k","e","n"," "]
fileprivate let str_toName:String = "=count"

/*: "APNS Token Error:  :*/
fileprivate let str_onlineData:[Character] = ["A","P","N","S"," "]
fileprivate let str_transformName:String = "Token Ersource frame name kick"
fileprivate let str_colorValueContent:String = "ror: show to self for manager"

/*: ." :*/
fileprivate let str_pathTitle:String = "add"

/*: "token =  :*/
fileprivate let str_lineValue:String = "inside"
fileprivate let str_topPriceValue:String = "self add giftken = "

/*: "extra" :*/
fileprivate let str_buttonData:[Character] = ["e","x","t","r","a"]

/*: "Unable to register for remote notifications: :*/
fileprivate let str_estimatedValue:[UInt8] = [0x3a,0x73,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x74,0x6f,0x6e,0x20,0x65,0x74,0x6f,0x6d,0x65,0x72,0x20,0x72,0x6f,0x66,0x20,0x72,0x65,0x74,0x73,0x69,0x67,0x65,0x72,0x20,0x6f,0x74,0x20,0x65,0x6c,0x62,0x61,0x6e,0x55]

/*: "token" :*/
fileprivate let str_tapSquareName:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x74]

/*: "FCMToken" :*/
fileprivate let str_playerData:String = "FCMTokentable near let app"

/*: _LocalPush" :*/
fileprivate let str_arrayValue:String = "_Localreceive type cancel let task"

/*: "identifier" :*/
fileprivate let str_currentData:String = "allden"

/*: "fcm_options" :*/
fileprivate let str_clearContent:[Character] = ["f","c","m","_","o","p"]
fileprivate let str_liveValue:[Character] = ["t","i","o","n","s"]

/*: "image" :*/
fileprivate let str_userName:[UInt8] = [0x6a,0x6e,0x62,0x68,0x66]

fileprivate func lengthAfter(lab num: UInt8) -> UInt8 {
    let value = Int(num) - 1
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let str_frameName:[UInt8] = [0x91,0x47,0x57,0x90,0x47,0x5b,0x91,0x39,0x53,0x94,0x2b,0x2c,0x94,0x2b,0x45,0x92,0x4a,0x50,0xcb,0xd8,0xd8,0xcb,0x92,0x3f,0x53,0x91,0x33,0x62,0x91,0x47,0x55,0x91,0x39,0x33,0x91,0x48,0x2e,0xd3,0xd9,0x19,0x1a,0x1f,0xef,0x10,0x1f,0x10,0x1d,0x18,0x14,0x19,0x10,0xf,0xd4]

fileprivate func childStyle(to num: UInt8) -> UInt8 {
    let value = Int(num) + 85
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let str_sourceData:String = "本model推送通知 -"
fileprivate let str_afterName:[Character] = ["-"," "]
fileprivate let str_selectedRoomReData:String = "用\u{6237}未授权("
fileprivate let str_centerModelData:String = "ied)nor right near sub"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let str_countTitle:String = "\u{672c}\u{5730}推送通"
fileprivate let str_kitName:String = "授权(.esucceed block let model"
fileprivate let str_inputText:String = "ral)succeed self application var share"

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let str_segmentText:[Character] = ["本","地","推","送","\u{901a}","知"," ","-","-"," ","用","户","未"]
fileprivate let str_viewModelName:String = "授权"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonDelegateHelper+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import Foundation
import Foundation

//: import FirebaseCore
import FirebaseCore

//: import FirebaseMessaging
import FirebaseMessaging

//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension ButtonDelegateHelper {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func deviseToken(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(str_labValue) + str_toName.replacingOccurrences(of: "count", with: " ")) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                QueryThen.bringInstance(msg: (String(str_onlineData) + String(str_transformName.prefix(8)) + String(str_colorValueContent.prefix(5))) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (str_lineValue.replacingOccurrences(of: "inside", with: "to") + String(str_topPriceValue.suffix(6))) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func analogDigitalConverterFully(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((String(str_buttonData))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(String(str_buttonData))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    TalkingTouchManageressThen.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    TalkingTouchManageressThen.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func equalError(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: str_estimatedValue.reversed(), encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func sectionHandler(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            TalkingTouchManageressThen.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            TalkingTouchManageressThen.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((String(str_buttonData))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(String(str_buttonData))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                TalkingTouchManageressThen.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                TalkingTouchManageressThen.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func arableImage(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: str_tapSquareName.reversed(), encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(str_playerData.prefix(8)))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func semipublicSledge(uid: String? = nil,
                                //: title: String? = nil,
                                title: String? = nil,
                                //: body: String,
                                body: String,
                                //: imageUrl: String? = nil) {
                                imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(kLet_routeData)" + (String(str_arrayValue.prefix(6)) + "Push")
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(str_currentData.replacingOccurrences(of: "all", with: "i") + "tifier"): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    localEnable(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: kLet_clickValue)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(String(str_clearContent) + String(str_liveValue))] = [String(bytes: str_userName.map{lengthAfter(lab: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    localEnable(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: str_frameName.map{childStyle(to: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (str_sourceData.replacingOccurrences(of: "model", with: "地") + String(str_afterName) + str_selectedRoomReData + ".den" + String(str_centerModelData.prefix(4))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (str_countTitle + "知 -- 用户未" + String(str_kitName.prefix(5)) + "pheme" + String(str_inputText.prefix(4))))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (String(str_segmentText) + str_viewModelName.capitalized))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func localEnable(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(str_currentData.replacingOccurrences(of: "all", with: "i") + "tifier")] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func brandTitleIdentifier(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
