
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let str_modelData:String = "lab function section frameapp/g"
fileprivate let str_managerTitle:String = "fbottomg"

/*: "mf/user/getMyInfo" :*/
fileprivate let str_shadowData:[Character] = ["m","f","/","u","s","e","r","/","g"]
fileprivate let str_currentData:[Character] = ["e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let str_equalData:String = "self var indexmf/u"
fileprivate let str_frameName:String = "result port directionetIn"
fileprivate let str_taskData:String = "lusermn"

/*: "%.2f" :*/
fileprivate let str_appText:[Character] = ["%",".","2","f"]

/*: "mfCoin" :*/
fileprivate let str_locationData:String = "if name section gapmfCoin"

/*: "mf/index/getConfig" :*/
fileprivate let str_leadingValue:[Character] = ["m","f","/","i","n","d"]
fileprivate let str_giftValue:String = "ex/gview leading"

/*: _ :*/
fileprivate let str_viewData:String = "_"

/*: "baseinfo =  :*/
fileprivate let str_appValue:String = "bavideoi"

/*: "UserBasicInfoSetting" :*/
fileprivate let str_styleTitle:[Character] = ["U","s","e","r"]
fileprivate let str_bottomName:String = "var color in timeBasi"
fileprivate let str_labName:String = "Settingconvert else"

/*: "/userTag.json" :*/
fileprivate let str_layerData:[Character] = ["/","u","s","e","r"]
fileprivate let str_roomData:String = "Tag.jsonadd tap true"

/*: "json 解析失败" :*/
fileprivate let str_toData:[Character] = ["j","s","o","n"," ","解","析","失","败"]

/*: "app/reportDeviceId" :*/
fileprivate let str_senseText:[Character] = ["a","p","p","/","r","e","p","o","r","t","D","e","v","i"]
fileprivate let str_videoName:String = "to selfceId"

/*: "p0" :*/
fileprivate let str_bottomTitle:String = "P0"

/*: "token" :*/
fileprivate let str_labValue:[UInt8] = [0x79,0x74,0x70,0x6a,0x73]

fileprivate func tipMessage(re num: UInt8) -> UInt8 {
    let value = Int(num) + 251
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "app/reportFcmPushToken" :*/
fileprivate let str_indexData:[Character] = ["a","p","p","/","r","e","p","o","r","t","F","c","m","P","u","s"]
fileprivate let str_modelName:String = "hTokenbackground table equal add self"

/*: "app/init" :*/
fileprivate let str_coverTitle:[Character] = ["a","p","p","/","i","n","i","t"]

/*: "app/ping" :*/
fileprivate let str_sizeValue:[Character] = ["a","p","p","/","p","i","n"]
fileprivate let str_atName:[Character] = ["g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import UIKit
import UIKit

//: import Alamofire
import Alamofire

//: import Adjust
import Adjust

//: import FirebaseMessaging
import FirebaseMessaging

//: var isRequestingInit = false
var kLet_appValue = false

//: var isRetryDeviceIdTime = 3.0
var kLet_addName = 3.0

//: class AppManagerRequest: NSObject {
class CustomThen: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func completionOf(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = NumberryMReactiveCompatible()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(str_modelData.suffix(5)) + "etCon" + str_managerTitle.replacingOccurrences(of: "bottom", with: "i"))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: requestModel) { succeed, result, errorModel in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                kLet_dismissData.set(result, forKey: kLet_statusScreenText)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<FromMeasurable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WithAdministratorAppManager.share.appConfigMode = configModel
                    WithAdministratorAppManager.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_messageData, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = kLet_dismissData.dictionary(forKey: kLet_statusScreenText)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<FromMeasurable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: WithAdministratorAppManager.share.appConfigMode = configModel
                    WithAdministratorAppManager.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: kLet_messageData, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func adRequest(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(str_shadowData) + String(str_currentData))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                kLet_dismissData.set(result, forKey: kLet_callData)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<DeceasedPersonTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WithAdministratorAppManager.share.loginUserMode = userModel
                    WithAdministratorAppManager.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func vanguard(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(str_equalData.suffix(4)) + "ser/g" + String(str_frameName.suffix(4)) + "foCo" + str_taskData.replacingOccurrences(of: "user", with: "u"))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: WithAdministratorAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                WithAdministratorAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(str_locationData.suffix(6)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func counternalRepresentationData(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(str_leadingValue) + String(str_giftValue.prefix(4)) + "etConfig")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: WithAdministratorAppManager.share.loginUserMode.sex))"
            let configKey = "\(kLet_messageValue)_\(String(describing: WithAdministratorAppManager.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                kLet_dismissData.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<ModelTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: WithAdministratorAppManager.share.appUserConfigMode = userModel
                    WithAdministratorAppManager.share.appUserConfigMode = userModel
                    //: EdificeV2Listener.shared.func__LogingIn()
                    EdificeV2Listener.shared.viewCompletion()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: WithAdministratorAppManager.share.appUserConfigMode.baseInfo)
                    computerFileText(baseinfo: WithAdministratorAppManager.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        QueryThen.shared.atMake(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (ShouldKingfisherCompatible.shared as! ShouldKingfisherCompatible).femaleSection()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = kLet_dismissData.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<ModelTransformable>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: WithAdministratorAppManager.share.appUserConfigMode = userModel
                    WithAdministratorAppManager.share.appUserConfigMode = userModel
                    //: EdificeV2Listener.shared.func__LogingIn()
                    EdificeV2Listener.shared.viewCompletion()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: kLet_keyText, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func computerFileText(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = kLet_dismissData.string(forKey: kLet_toValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (str_appValue.replacingOccurrences(of: "video", with: "se") + "nfo = ") + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<BridgeMeasurable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        kLet_dismissData.set(baseinfo, forKey: kLet_toValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.cachesList() + (String(str_styleTitle) + String(str_bottomName.suffix(4)) + "cInfo" + String(str_labName.prefix(7)))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.stopSavePathFolderRoot(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.changePath(content: responseJson!, writePath: jsonPath + (String(str_layerData) + String(str_roomData.prefix(8))))
                            //: WithAdministratorAppManager.share.func__loadUserTagCacheData()
                            WithAdministratorAppManager.share.milk()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(str_toData)))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: WithAdministratorAppManager.share.func__loadUserTagCacheData()
            WithAdministratorAppManager.share.milk()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func no() {
        //: func__reportDeviceIdentifier()
        collideWithIdentifier()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func collideWithIdentifier() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = NumberryMReactiveCompatible()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(str_senseText) + String(str_videoName.suffix(4)))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.levelWith()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(kLet_viewName)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.key(key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            kLet_deviceName.clickLocation(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if kLet_addName <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + kLet_addName) {
                    //: isRetryDeviceIdTime *= 2
                    kLet_addName *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.collideWithIdentifier()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func pane() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: str_labValue.map{tipMessage(re: $0)}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = NumberryMReactiveCompatible()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(str_indexData) + String(str_modelName.prefix(6)))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                kLet_deviceName.clickLocation(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func clickWith() {
        //: if isRequestingInit {
        if kLet_appValue {
            //: return
            return
        }
        //: isRequestingInit = true
        kLet_appValue = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (String(str_coverTitle))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            kLet_appValue = false
            //: if succeed && WithAdministratorAppManager.share.request_HasInit == false {
            if succeed && WithAdministratorAppManager.share.request_HasInit == false {
                //: WithAdministratorAppManager.share.request_HasInit = true
                WithAdministratorAppManager.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func capacityAdd(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(str_sizeValue) + String(str_atName))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
