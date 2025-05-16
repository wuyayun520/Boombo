
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let str_colorFromName:String = "change try intimateV4ujG"
fileprivate let str_emptyTitle:String = "6Rvgjlab let color text"
fileprivate let str_mainText:String = "mname1"

/*: "data/index" :*/
fileprivate let str_patientContent:[Character] = ["d","a","t"]
fileprivate let str_itemData:String = "add let icon video anya/index"

/*: "toUid" :*/
fileprivate let str_pathValue:String = "text addtoUid"

/*: "uid" :*/
fileprivate let str_managerName:String = "uitouch"

/*: "POST" :*/
fileprivate let str_roomEqualTitle:String = "POSlog"

/*: "Token" :*/
fileprivate let str_liveContent:String = "collection cell normal make registerToken"

/*: "%@" :*/
fileprivate let str_resValue:String = "%path"

/*: "无法解析出JSON字符串" :*/
fileprivate let str_originalTitle:String = "无法解析"
fileprivate let str_requestTalkName:[Character] = ["\u{51fa}","J","S","O","N","字","\u{7b26}","\u{4e32}"]

/*: "plat" :*/
fileprivate let str_winValue:String = "plamenu"

/*: "ios" :*/
fileprivate let str_modelData:String = "iimages"

/*: "packageId" :*/
fileprivate let str_fromValue:String = "padd"
fileprivate let str_hiddenName:String = "at cardckageId"

/*: "channel" :*/
fileprivate let str_textContent:[Character] = ["c"]
fileprivate let str_kitInputName:[Character] = ["h","a","n","n","e","l"]

/*: "type" :*/
fileprivate let str_valueData:String = "typmedia"

/*: "stat" :*/
fileprivate let str_toValue:String = "sresponset"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StoryRecordManage.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire

//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let kLet_voiceText = StoryRecordManage()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let kLet_viewName = (String(str_colorFromName.suffix(5)) + "jsNUl" + String(str_emptyTitle.prefix(5)) + "vgD6" + str_mainText.replacingOccurrences(of: "name", with: "9"))

//: class UploadRecordManage: NSObject {
class StoryRecordManage: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func quantityingTime(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_patientContent) + String(str_itemData.suffix(7)))
        //: reqModel.requestServer = WithAdministratorAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = WithAdministratorAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.heart()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary(jsonString: jsonStr!)
            dict["c"] = NSDictionary(jsonString: jsonStr!)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(str_pathValue.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = WithAdministratorAppManager.share.loginUserMode.userID
            messageDic[(str_managerName.replacingOccurrences(of: "touch", with: "d"))] = WithAdministratorAppManager.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.nameImage(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func workingPapers(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(str_patientContent) + String(str_itemData.suffix(7)))
        //: reqModel.requestServer = WithAdministratorAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = WithAdministratorAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.heart()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = WithAdministratorAppManager.share.loginUserMode.userID
        messageDic[(str_managerName.replacingOccurrences(of: "touch", with: "d"))] = WithAdministratorAppManager.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.nameImage(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func nameImage(model: NumberryMReactiveCompatible, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = kLet_deviceName.server(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.levelWith()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (str_roomEqualTitle.replacingOccurrences(of: "log", with: "T"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(str_liveContent.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", kLet_viewName)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.middle(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.key(key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<PopBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func middle(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (str_originalTitle.capitalized + String(str_requestTalkName)))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension StoryRecordManage {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func heart() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(str_winValue.replacingOccurrences(of: "menu", with: "t"))] = (str_modelData.replacingOccurrences(of: "image", with: "o")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(str_fromValue.replacingOccurrences(of: "add", with: "a") + String(str_hiddenName.suffix(7)))] = kLet_nameTopText /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = kLet_timeTitle /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.levelWith() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(String(str_textContent) + String(str_kitInputName))] = kLet_nameTopText /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(str_valueData.replacingOccurrences(of: "media", with: "e"))] = (str_toValue.replacingOccurrences(of: "response", with: "ta")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
