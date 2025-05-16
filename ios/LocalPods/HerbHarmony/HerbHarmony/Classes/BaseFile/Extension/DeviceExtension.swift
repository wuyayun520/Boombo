
//: Declare String Begin

/*: "RSA加密失败，str:  :*/
fileprivate let str_labTitle:String = "let name mini letRSA加密"
fileprivate let str_methodData:[Character] = ["失","败","，","s","t","r",":"," "]

/*: ." :*/
fileprivate let str_rawValue:String = "model"

/*: "weixin://" :*/
fileprivate let str_timeClickMessageTitle:[Character] = ["w","e","i","x","i","n",":"]
fileprivate let str_giftData:[Character] = ["/","/"]

/*: "dingtalk://" :*/
fileprivate let str_succeedText:[Character] = ["d","i","n","g","t","a","l","k",":"]
fileprivate let str_colorData:[Character] = ["/","/"]

/*: "lark://" :*/
fileprivate let str_showData:String = "all turn app livelark://"

/*: "wxwork://" :*/
fileprivate let str_clickName:String = "WXWO"

/*: "p1" :*/
fileprivate let str_sizeData:[UInt8] = [0xe3,0xa2]

/*: "p2" :*/
fileprivate let str_shareTopContent:[UInt8] = [0xff,0xbd]

private func makeManager(drunk num: UInt8) -> UInt8 {
    return num ^ 143
}

/*: "p3" :*/
fileprivate let str_errorTitle:[UInt8] = [0x33,0x70]

/*: "p4" :*/
fileprivate let str_viewTitle:[UInt8] = [0x23,0x67]

private func stackMedium(data num: UInt8) -> UInt8 {
    return num ^ 83
}

/*: "p5" :*/
fileprivate let str_containerTitle:[UInt8] = [0x35,0x70]

/*: "p7" :*/
fileprivate let str_callValue:[UInt8] = [0x41,0x6]

private func countLengthKey(input num: UInt8) -> UInt8 {
    return num ^ 49
}

/*: "deviceId" :*/
fileprivate let str_endModelData:[UInt8] = [0x4,0x5,0x16,0x9,0x3,0x5,0x29,0x4]

private func restoreName(image num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "p0" :*/
fileprivate let str_styleValue:[UInt8] = [0x30,0x70]

/*: "weixin" :*/
fileprivate let str_fromName:[Character] = ["w","e","i","x","i","n"]

/*: "wxwork" :*/
fileprivate let str_barData:String = "wcolumnork"

/*: "dingtalk" :*/
fileprivate let str_marginName:[Character] = ["d","i","n","g","t","a","l"]
fileprivate let str_countName:String = "to"

/*: "lark" :*/
fileprivate let str_blockName:String = "LARK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/5.
//

//: import UIKit
import UIKit

//: import AdSupport
import AdSupport

//: import AppTrackingTransparency
import AppTrackingTransparency

//: import CoreTelephony
import CoreTelephony

//: import Adjust
import Adjust

//: extension UIDevice{
extension UIDevice {
    //: class func getDeviceDeviceIdentifier ( IdentifierBlock: @escaping (_ str: String) -> Void ) {
    class func popTo(IdentifierBlock: @escaping (_ str: String) -> Void) {
        //: if #available(iOS 14.0, *) {
        if #available(iOS 14.0, *) {
            //: ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                //: if status == .authorized {
                if status == .authorized {
                    //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                    IdentifierBlock(UIDevice.track())
                    //: } else {
                } else {
                    //: IdentifierBlock("")
                    IdentifierBlock("")
                }
                //: })
            })
            //: } else {
        } else {
            //: if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
            if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                //: IdentifierBlock(UIDevice.getDeviceRawAdvertisingId())
                IdentifierBlock(UIDevice.track())
                //: } else {
            } else {
                //: IdentifierBlock("")
                IdentifierBlock("")
            }
        }
    }

    //: class func getDeviceRawAdvertisingId() -> String {
    class func track() -> String {
        //: var deviceIdentifier = ""
        var deviceIdentifier = ""
        //: let adIdentifier =  ASIdentifierManager.shared().advertisingIdentifier
        let adIdentifier = ASIdentifierManager.shared().advertisingIdentifier
        //: if !adIdentifier.uuidString.isEmptyString {
        if !adIdentifier.uuidString.isEmptyString {
            //: deviceIdentifier = adIdentifier.uuidString
            deviceIdentifier = adIdentifier.uuidString
        }
        //: return deviceIdentifier
        return deviceIdentifier
    }

    //: class func getDeviceSimInfo() -> (Array<String>) {
    class func shredder() -> ([String]) {
        //: let info = CTTelephonyNetworkInfo.init()
        let info = CTTelephonyNetworkInfo()

        //: var tempArr = Array<String>()
        var tempArr = [String]()
        //: if #available(iOS 12.0, *) {
        if #available(iOS 12.0, *) {
            //: let carrierDic = info.serviceSubscriberCellularProviders
            let carrierDic = info.serviceSubscriberCellularProviders
            //: if !carrierDic!.isEmpty {
            if !carrierDic!.isEmpty {
                //: for carrier in carrierDic!.values {
                for carrier in carrierDic!.values { // 双卡命中处理
                    //: let iso = carrier.isoCountryCode ?? ""    // ISO国家代码
                    let iso = carrier.isoCountryCode ?? "" // ISO国家代码
                    //: tempArr.append(iso)
                    tempArr.append(iso)
                }
            }
            //: } else {
        } else {
            //: let carrier = info.subscriberCellularProvider
            let carrier = info.subscriberCellularProvider
//            let use = carrier?.allowsVOIP
//            let name = carrier?.carrierName     //运营商名字
//            let mobile = carrier?.mobileCountryCode  //移动国家代码
//            let mnc = carrier?.mobileNetworkCode  //移动网络代码
            //: let iso = carrier?.isoCountryCode ?? ""  //ISO国家代码
            let iso = carrier?.isoCountryCode ?? "" // ISO国家代码
            //: tempArr.append(iso)
            tempArr.append(iso)
        }

        //: return tempArr
        return tempArr
    }

    /// RSA加密字符串
    /// - Parameter str: 字符串
    /// - Returns: 加密结果
    //: static func rsa_encrypted(str: String) -> String {
    static func encephalon(str: String) -> String {
        //: var encryptedStr = ""
        var encryptedStr = ""
        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: kLet_attributeTitle)
            //: let newStr = str.count > 0 ? str : "-"
            let newStr = str.count > 0 ? str : "-"
            //: encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            encryptedStr = try ClearMessage(string: newStr, using: .utf8).encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败，str: \(str).")
            printLog(message: (String(str_labTitle.suffix(5)) + String(str_methodData)) + "\(str).")
        }
        //: return encryptedStr
        return encryptedStr
    }
}

//: public extension UIDevice {
public extension UIDevice {
    //: static var modelName: String {
    static var modelName: String {
        //: var systemInfo = utsname()
        var systemInfo = utsname()
        //: uname(&systemInfo)
        uname(&systemInfo)
        //: let machineMirror = Mirror(reflecting: systemInfo.machine)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        //: let identifier = machineMirror.children.reduce("") { identifier, element in
        let identifier = machineMirror.children.reduce("") { identifier, element in
            //: guard let value = element.value as? Int8, value != 0 else { return identifier }
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            //: return identifier + String(UnicodeScalar(UInt8(value)))
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        //: return identifier
        return identifier
    }

    /// 获取当前系统时区
    //: static var timeZone: String {
    static var timeZone: String {
        //: let currentTimeZone = NSTimeZone.system
        let currentTimeZone = NSTimeZone.system
        //: print("当前时区：\(currentTimeZone.identifier)")
        //: return currentTimeZone.identifier
        return currentTimeZone.identifier
    }

    /// 获取当前系统语言
    //: static var langCode: String {
    static var langCode: String {
        //: let language = Locale.preferredLanguages.first
        let language = Locale.preferredLanguages.first
        //: return language ?? ""
        return language ?? ""
    }

    /// 获取当前系统地区
    //: static var countryCode: String {
    static var countryCode: String {
        //: let locale = Locale.current
        let locale = Locale.current
        //: let countryCode = locale.regionCode
        let countryCode = locale.regionCode
        //: print("当前地区：\(String(describing: countryCode))")
        //: return countryCode ?? ""
        return countryCode ?? ""
    }

    /// 是否安装微信
    //: static var isOpenWX: Bool {
    static var isOpenWX: Bool {
        //: let appSchema = "weixin://"
        let appSchema = (String(str_timeClickMessageTitle) + String(str_giftData))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装钉钉
    //: static var isOpenDD: Bool {
    static var isOpenDD: Bool {
        //: let appSchema = "dingtalk://"
        let appSchema = (String(str_succeedText) + String(str_colorData))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装飞书
    //: static var isOpenFS: Bool {
    static var isOpenFS: Bool {
        //: let appSchema = "lark://"
        let appSchema = (String(str_showData.suffix(7)))
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否安装企微
    //: static var isOpenWXWork: Bool {
    static var isOpenWXWork: Bool {
        //: let appSchema = "wxwork://"
        let appSchema = (str_clickName.lowercased() + "rk://")
        //: let appUrl = URL(string: appSchema)!
        let appUrl = URL(string: appSchema)!
        //: if UIApplication.shared.canOpenURL(appUrl) {
        if UIApplication.shared.canOpenURL(appUrl) {
            // 对应的 app 已经安装
            //: print("\(appSchema)已安装")
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: static var customDeviceNum: String {
    static var customDeviceNum: String {
        //: let key = KeychainSwift()
        let key = KeychainSwift()
        //: if let value = key.get(PodspecName) {
        if let value = key.get(kLet_recordValue) {
            //: return value
            return value
            //: }else{
        } else {
            //: let value = NSUUID().uuidString
            let value = NSUUID().uuidString
            //: key.set(value, forKey: PodspecName)
            key.set(value, forKey: kLet_recordValue)
            //: return value
            return value
        }
    }

    //: static var deviceInfoDic: [String: Any] {
    static var deviceInfoDic: [String: Any] {
        //: let usedVpn = TalkingRequestAddrTool.isUsedProxy() || TalkingRequestAddrTool.isUsedVPN()
        let usedVpn = DoingAddrTool.videoSuccess() || DoingAddrTool.screenIcon()
        //: let params: [String: Any] = ["p1": UIDevice.langCode,
        let params: [String: Any] = ["p1": UIDevice.langCode,
                                     //: "p2": UIDevice.timeZone,
                                     "p2": UIDevice.timeZone,
                                     //: "p3": (UIDevice.getApps ?? ""),
                                     "p3": UIDevice.getApps ?? "",
                                     //: "p4": UIDevice.customDeviceNum,
                                     "p4": UIDevice.customDeviceNum,
                                     //: "p5": UIDevice.countryCode,
                                     "p5": UIDevice.countryCode,
                                     //: "p7": (usedVpn == true ? "1":"0")]
                                     "p7": usedVpn == true ? "1" : "0"]
        //: let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        let data = try? JSONSerialization.data(withJSONObject: params, options: [])
        //: if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
        if let paramsStr = String(data: data!, encoding: String.Encoding.utf8) {
            //: let adid = Adjust.adid() ?? ""
            let adid = Adjust.adid() ?? ""
            //: let deviceIdStr = rsa_encrypted(str: adid)
            let deviceIdStr = encephalon(str: adid)
            //: return ["deviceId": deviceIdStr,
            return [String(bytes: str_endModelData.map{restoreName(image: $0)}, encoding: .utf8)!: deviceIdStr,
                    //: "p0": paramsStr]
                    "p0": paramsStr]
        }
        //: return [:]
        return [:]
    }

    //: static var getApps: String? {
    static var getApps: String? {
        //: var appsArr: [String] = []
        var appsArr: [String] = []
        //: if UIDevice.isOpenWX {
        if UIDevice.isOpenWX {
            //: appsArr.append("weixin")
            appsArr.append((String(str_fromName)))
        }
        //: if UIDevice.isOpenWXWork {
        if UIDevice.isOpenWXWork {
            //: appsArr.append("wxwork")
            appsArr.append((str_barData.replacingOccurrences(of: "column", with: "xw")))
        }
        //: if UIDevice.isOpenDD {
        if UIDevice.isOpenDD {
            //: appsArr.append("dingtalk")
            appsArr.append((String(str_marginName) + str_countName.replacingOccurrences(of: "to", with: "k")))
        }
        //: if UIDevice.isOpenFS {
        if UIDevice.isOpenFS {
            //: appsArr.append("lark")
            appsArr.append((str_blockName.lowercased()))
        }
        //: if appsArr.count > 0 {
        if appsArr.count > 0 {
            //: return appsArr.joined(separator: ",")
            return appsArr.joined(separator: ",")
        }

        //: return nil
        return nil
    }
}
