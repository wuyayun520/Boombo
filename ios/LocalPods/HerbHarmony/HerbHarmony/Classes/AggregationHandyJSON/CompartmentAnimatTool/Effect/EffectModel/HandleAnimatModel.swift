
//: Declare String Begin

/*: "className" :*/
fileprivate let str_faceValue:[Character] = ["c","l","a","s","s","N"]
fileprivate let str_coordinatorText:String = "apath"

/*: "nativeClassName" :*/
fileprivate let str_fieldTitle:[Character] = ["n","a","t","i","v","e","C","l","a","s","s","N"]
fileprivate let str_dateValue:[Character] = ["a","m","e"]

/*: "effectType" :*/
fileprivate let str_headData:String = "EFFECT"

/*: "gifFile" :*/
fileprivate let str_locationData:[Character] = ["g","i"]
fileprivate let str_delayValue:String = "fFilemodel lab"

/*: "versions" :*/
fileprivate let str_cookieValue:String = "vergiftons"

/*: "config" :*/
fileprivate let str_managerName:String = "confcheckg"

/*: "mainFile" :*/
fileprivate let str_mediumTitle:[Character] = ["m","a","i","n","F","i","l","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleAnimatModel.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum MisinformationHashable: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum TitleDefaultsSerializable: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum WholeScalar: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct HandleAnimatModel: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = MisinformationHashable.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension HandleAnimatModel {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func recline(dic: NSDictionary) -> HandleAnimatModel {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = HandleAnimatModel()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(str_faceValue) + str_coordinatorText.replacingOccurrences(of: "path", with: "me"))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(str_fieldTitle) + String(str_dateValue))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(str_headData.lowercased() + "Type")] as? MisinformationHashable ?? MisinformationHashable.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(str_locationData) + String(str_delayValue.prefix(5)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[MisinformationHashable.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(str_cookieValue.replacingOccurrences(of: "gift", with: "si"))] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(str_managerName.replacingOccurrences(of: "check", with: "i"))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(str_faceValue) + str_coordinatorText.replacingOccurrences(of: "path", with: "me"))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(str_fieldTitle) + String(str_dateValue))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(str_headData.lowercased() + "Type")] as? MisinformationHashable ?? MisinformationHashable.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(str_mediumTitle))] as? String ?? ""
        }
        //: return model
        return model
    }
}
