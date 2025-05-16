
//: Declare String Begin

/*: "Please click 'Go' to allow access" :*/
fileprivate let str_fillValue:[UInt8] = [0x1b,0x37,0x30,0x2c,0x3e,0x30,0xeb,0x2e,0x37,0x34,0x2e,0x36,0xeb,0xf2,0x12,0x3a,0xf2,0xeb,0x3f,0x3a,0xeb,0x2c,0x37,0x37,0x3a,0x42,0xeb,0x2c,0x2e,0x2e,0x30,0x3e,0x3e]

fileprivate func languageManager(color num: UInt8) -> UInt8 {
    let value = Int(num) - 203
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option" :*/
fileprivate let str_attributeValue:[UInt8] = [0xf6,0xca,0xc3,0xc7,0xd5,0xc3,0x86,0xc7,0xca,0xca,0xc9,0xd1,0x86,0x81,0x83,0xe6,0x81,0x86,0xd2,0xc9,0x86,0xc7,0xc5,0xc5,0xc3,0xd5,0xd5,0x86,0xdf,0xc9,0xd3,0xd4,0x86,0xc7,0xca,0xc4,0xd3,0xcb,0x86,0xcf,0xc8,0x86,0xdf,0xc9,0xd3,0xd4,0x86,0xcf,0xf6,0xce,0xc9,0xc8,0xc3,0x81,0xd5,0x86,0x81,0xf5,0xc3,0xd2,0xd2,0xcf,0xc8,0xc1,0xd5,0x8b,0xf6,0xd4,0xcf,0xd0,0xc7,0xc5,0xdf,0x8b,0xe7,0xca,0xc4,0xd3,0xcb,0x81,0x86,0xc9,0xd6,0xd2,0xcf,0xc9,0xc8]

private func countMode(layer num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option" :*/
fileprivate let str_beforeValue:[UInt8] = [0x6e,0x6f,0x69,0x74,0x70,0x6f,0x20,0x27,0x73,0x65,0x63,0x69,0x76,0x72,0x65,0x53,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x6f,0x4c,0x2d,0x79,0x63,0x61,0x76,0x69,0x72,0x50,0x2d,0x73,0x67,0x6e,0x69,0x74,0x74,0x65,0x53,0x27,0x20,0x73,0x27,0x65,0x6e,0x6f,0x68,0x50,0x69,0x20,0x72,0x75,0x6f,0x79,0x20,0x6e,0x69,0x20,0x73,0x65,0x63,0x69,0x76,0x72,0x65,0x73,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x6f,0x6c,0x20,0x72,0x75,0x6f,0x79,0x20,0x73,0x73,0x65,0x63,0x63,0x61,0x20,0x6f,0x74,0x20,0x27,0x40,0x25,0x27,0x20,0x77,0x6f,0x6c,0x6c,0x61,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "Cancel" :*/
fileprivate let str_reasonData:String = "any typeCancel"

/*: "Go" :*/
fileprivate let str_makeData:[Character] = ["G","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LaissezPasserThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/6.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: import AssetsLibrary
import AssetsLibrary

//: import MediaPlayer
import MediaPlayer

//: import CoreTelephony
import CoreTelephony

//: import CoreLocation
import CoreLocation

//: import AVFoundation
import AVFoundation

//: enum TalkingPermissionsType {
enum PermissionsType {
    /// 相机
    //: case camera
    case camera
    /// 相册
    //: case photo
    case photo
    /// 位置
    //: case location
    case location
    /// 麦克风
    //: case microphone
    case microphone
    /// 推送
    //: case notification
    case notification
    /// 相机和麦克风（视频速配使用）
    //: case cameraAndMicrophone
    case cameraAndMicrophone
}

//: let object = NSObject()
let kLet_meSuccessValue = NSObject()
//: class TalkingPermissionTool: NSObject {
class LaissezPasserThen: NSObject {
    // MARK: - 检测是否开启定位

    /// 检测是否开启定位
    //: class func func__openLocationServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func blockStream(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: var isOpen = false
        var isOpen = false
        //    if CLLocationManager.locationServicesEnabled() || CLLocationManager.authorizationStatus() != .denied {
        //        isOpen = true
        //    }
        //: if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
        if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
            //: isOpen = true
            isOpen = true
        }
        //: if isOpen == false && isSet == true {func__OpenURL(.location)}
        if isOpen == false && isSet == true { blockAcross(.location) }
        //: action(isOpen)
        action(isOpen)
    }

    // MARK: - 检测是否开启摄像头

    /// 检测是否开启摄像头 (可用)
    //: class func func__openCaptureDeviceServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func effectOf(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        //: if authStatus == AVAuthorizationStatus.notDetermined {
        if authStatus == AVAuthorizationStatus.notDetermined {
            //: AVCaptureDevice.requestAccess(for: AVMediaType.video) { (granted) in
            AVCaptureDevice.requestAccess(for: AVMediaType.video) { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.camera)}
                }
            }
            //: } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
        } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.camera)}
            if isSet == true { telegramText(.camera) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 检测是否开启相册

    //: class func func__openAlbumServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func conceptAlbum(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: PHPhotoLibrary.requestAuthorization { authStatus in
        PHPhotoLibrary.requestAuthorization { authStatus in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if(authStatus == .restricted || authStatus == .denied) {
                if authStatus == .restricted || authStatus == .denied {
                    //: action(false)
                    action(false)
                    //: if isSet == true {func__OpenURL(.photo)}
                    if isSet == true { blockAcross(.photo) }
                    //: } else {
                } else {
                    //: action(true)
                    action(true)
                }
            }
        }
    }

    // MARK: - 检测是否开启麦克风

    /// 检测是否开启麦克风
    //: class func func__openRecordServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func withLoad(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        //: if permissionStatus == .undetermined {
        if permissionStatus == .undetermined {
            //: AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.microphone)}
                }
            }
            //: } else if permissionStatus == .denied || permissionStatus == .undetermined {
        } else if permissionStatus == .denied || permissionStatus == .undetermined {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.microphone)}
            if isSet == true { telegramText(.microphone) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 跳转系统设置界面

    //: class func func__OpenURL(_ type: TalkingPermissionsType? = nil) {
    class func blockAcross(_ type: PermissionsType? = nil) {
        //: var message = "Please click 'Go' to allow access".localized
        var message = String(bytes: str_fillValue.map{languageManager(color: $0)}, encoding: .utf8)!.localized

        //: if type == .photo {
        if type == .photo { // 相册
            //: message = "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option".localizedArguments(AppName)
            message = String(bytes: str_attributeValue.map{countMode(layer: $0)}, encoding: .utf8)!.localizedArguments(kLet_routeData)
            //: } else if type == .location {
        } else if type == .location { // 位置
            //: message = "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option".localizedArguments(AppName)
            message = String(bytes: str_beforeValue.reversed(), encoding: .utf8)!.localizedArguments(kLet_routeData)
        }
        //: TalkingAlertShow.alert(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
        VoiceAlertShow.enablelineMedium(title: nil, message: message, leftBtnTitle: (String(str_reasonData.suffix(6))).localized, rightBtnTitle: "Go".localized, leftBlock: {
            //: }, rightBlock: {
        }, rightBlock: {
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: if #available(iOS 10, *) {
                if #available(iOS 10, *) {
                    //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                    UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    //: } else {
                } else {
                    //: UIApplication.shared.openURL(url!)
                    UIApplication.shared.openURL(url!)
                }
            }
            //: })
        })
    }

    // MARK: - 提示弹窗界面

    //: class func showTostView(_ type: TalkingPermissionsType? = nil) {
    class func telegramText(_ type: PermissionsType? = nil) {
        //: let view = TalkingPermissionView.init()
        let view = TotaleractionView()
        //: view.setPermissionIconView(type: type ?? .camera)
        view.correlationTable(type: type ?? .camera)
        //: view.show()
        view.reinstate()
    }

    // MARK: - 检测是否开启推送

    //: class func checkPushNotification(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
    class func beneath(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().getNotificationSettings { (setttings) in
            UNUserNotificationCenter.current().getNotificationSettings { setttings in

                //: switch setttings.authorizationStatus {
                switch setttings.authorizationStatus {
                //: case .authorized:
                case .authorized:
                    //: isEnable?(true)
                    isEnable?(true)
                //: case .denied:
                case .denied:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .notDetermined:
                case .notDetermined:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .provisional:
                case .provisional:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .ephemeral:
                case .ephemeral:
                    //: isEnable?(false)
                    isEnable?(false)
                //: @unknown default:
                @unknown default:
                    //: isEnable?(false)
                    isEnable?(false)
                }
            }
            //: } else {
        } else {
            //: let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            //: if isNotificationEnabled == true {
            if isNotificationEnabled == true {
                //: isEnable?(true)
                isEnable?(true)
                //: } else {
            } else {
                //: isEnable?(false)
                isEnable?(false)
            }
        }
    }
}

//: extension TalkingPermissionTool {
extension LaissezPasserThen {
    /// 检查相机和麦克风权限
    /// - Parameter action: 回调
    //: class func checkCameraAndMicrophone(_ handler: @escaping ((Bool) -> Void)) {
    class func polaroidCameraMicrophone(_ handler: @escaping ((Bool) -> Void)) {
        // 相机权限
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        LaissezPasserThen.effectOf(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
                LaissezPasserThen.withLoad(false) { isOpen in
                    //: if isOpen {
                    if isOpen {
                        //: showTostView(.camera)
                        telegramText(.camera)
                        //: } else {
                    } else {
                        //: showTostView(.cameraAndMicrophone)
                        telegramText(.cameraAndMicrophone)
                    }
                }
                //: handler(false)
                handler(false)
                //: return
                return
            }

            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
            LaissezPasserThen.withLoad(false) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: showTostView(.microphone)
                    telegramText(.microphone)
                    //: handler(false)
                    handler(false)
                    //: return
                    return
                }

                //: handler(true)
                handler(true)
            }
        }
    }

    /// 检测是否开启 直播间/语聊房
    /// - Returns: 结果
    //: class func isLiveOrPartyActive() -> Bool {
    class func equalSize() -> Bool {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard SectionPushListener.cover().isLive == false else { // 直播间
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            kLet_meSuccessValue.atShow(showMsg: kLet_userStatusValue)
            //: return true
            return true
        }
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard StackMThen.estimated().isParty == false else { // 语聊房
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
            kLet_meSuccessValue.atShow(showMsg: kLet_environmentBottomUseData)
            //: return true
            return true
        }
        //: return false
        return false
    }
}
