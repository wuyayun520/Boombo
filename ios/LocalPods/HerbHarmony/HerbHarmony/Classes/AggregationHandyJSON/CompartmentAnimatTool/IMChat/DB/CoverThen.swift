
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let str_regularData:[Character] = ["t","o","U","s","e","r","I","n","f","o"]

/*: "toUid" :*/
fileprivate let str_currentName:String = "self managertoUid"

/*: "nickname" :*/
fileprivate let str_trackName:[Character] = ["n","i","c"]
fileprivate let str_imageName:String = "KNAME"

/*: "headPic" :*/
fileprivate let str_managerEqualName:String = "share imageheadPic"

/*: "sex" :*/
fileprivate let str_countValue:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let str_normallyData:String = "atargete"

/*: "tpAuth" :*/
fileprivate let str_viewName:[Character] = ["t","p","A","u","t","h"]

/*: "interest" :*/
fileprivate let str_equalData:[Character] = ["i","n","t","e","r","e","s","t"]

/*: "picture" :*/
fileprivate let str_leadingName:[Character] = ["p","i","c","t","u"]
fileprivate let str_mName:[Character] = ["r","e"]

/*: "loungePlus" :*/
fileprivate let str_modelValue:String = "nearung"
fileprivate let str_showValue:String = "self pic click dismiss makeePlus"

/*: "vipSkinId" :*/
fileprivate let str_sizeValue:String = "vupper"
fileprivate let str_normalName:String = "pSkinIdthe effect detailed instance range"

/*: "voicePrice" :*/
fileprivate let str_errorData:String = "voicePricount string filter"
fileprivate let str_touchName:[Character] = ["c","e"]

/*: "videoPrice" :*/
fileprivate let str_filterValue:[Character] = ["v","i","d","e","o"]
fileprivate let str_layerValue:String = "home textPrice"

/*: "voiceVIPPrice" :*/
fileprivate let str_starData:[Character] = ["v","o","i","c"]
fileprivate let str_positionTitleGiftData:String = "eVIPPriceany describe text text"

/*: "videoVIPPrice" :*/
fileprivate let str_labelFrameMakeTitle:[Character] = ["v","i","d","e","o","V","I","P","P","r","i","c","e"]

/*: "version" :*/
fileprivate let str_clickAddName:[Character] = ["v","e","r","s","i","o","n"]

/*: "headPicFrame" :*/
fileprivate let str_succeedValue:String = "hdismissad"

/*: "signature" :*/
fileprivate let str_redName:[Character] = ["s","i","g","n","a","t","u","r"]
fileprivate let str_sizeOpenData:[Character] = ["e"]

/*: "constellation" :*/
fileprivate let str_rawValue:String = "coshowstell"
fileprivate let str_screenTitle:String = "titleion"

/*: "onlineStatus" :*/
fileprivate let str_imageEndValue:String = "onlineScontent seat to"
fileprivate let str_behaviorContent:String = "withtus"

/*: "isNewUser" :*/
fileprivate let str_keyLeadingName:String = "main background self map loadisNe"

/*: "isOfficial" :*/
fileprivate let str_modelData:String = "talk bar textisOff"

/*: "userStatus" :*/
fileprivate let str_headData:String = "upointr"

/*: "remarkInfo" :*/
fileprivate let str_requestIndexTitle:String = "remtork"

/*: "content" :*/
fileprivate let str_bottomName:[Character] = ["c","o","n","t","e","n","t"]

/*: "top" :*/
fileprivate let str_mainName:[Character] = ["t","o","p"]

/*: "enableVideoCall" :*/
fileprivate let str_toName:[Character] = ["e","n","a","b","l","e"]
fileprivate let str_sizeColorTitle:String = "v"
fileprivate let str_modelText:String = "ideoCalllive type extension data"

/*: "voiceBean" :*/
fileprivate let str_toHideData:[Character] = ["v","o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let str_littleLabelValue:String = "content var equal titlevideoB"
fileprivate let str_leadingBackgroundText:[Character] = ["e","a","n"]

/*: "prompt" :*/
fileprivate let str_intervalViewName:String = "protot"

/*: "matchRate" :*/
fileprivate let str_itemShowName:String = "MATCH"

/*: "existSess" :*/
fileprivate let str_aName:String = "existSessimage mode layer medium"

/*: "totalIntimate" :*/
fileprivate let str_coinValue:[Character] = ["t","o","t","a","l","I","n"]
fileprivate let str_slideContent:String = "table"
fileprivate let str_showName:String = "imabage"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class CoverThen: NSObject, HandyJSON {
public class CoverThen: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> CoverThen {
    public class func funcWithoutEqual(userDic: [String: Any]) -> CoverThen {
        //: let wrap = CoverThen.init()
        let wrap = CoverThen()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(str_regularData))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(str_regularData))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(str_currentName.suffix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(str_currentName.suffix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(String(str_trackName) + str_imageName.lowercased())] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(str_managerEqualName.suffix(7)))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(str_countValue))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(str_normallyData.replacingOccurrences(of: "target", with: "g"))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(str_viewName))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(String(str_equalData))] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(String(str_leadingName) + String(str_mName))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(str_modelValue.replacingOccurrences(of: "near", with: "lo") + String(str_showValue.suffix(5)))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(str_sizeValue.replacingOccurrences(of: "upper", with: "i") + String(str_normalName.prefix(7)))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(str_errorData.prefix(8)) + String(str_touchName))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(String(str_filterValue) + String(str_layerValue.suffix(5)))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(String(str_starData) + String(str_positionTitleGiftData.prefix(9)))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(str_labelFrameMakeTitle))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(String(str_clickAddName))] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(str_succeedValue.replacingOccurrences(of: "dismiss", with: "e") + "PicFrame")] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(String(str_redName) + String(str_sizeOpenData))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(str_rawValue.replacingOccurrences(of: "show", with: "n") + str_screenTitle.replacingOccurrences(of: "title", with: "at"))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(String(str_imageEndValue.prefix(7)) + str_behaviorContent.replacingOccurrences(of: "with", with: "ta"))] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(str_keyLeadingName.suffix(4)) + "wUser")] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(str_modelData.suffix(5)) + "icial")] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(str_headData.replacingOccurrences(of: "point", with: "se") + "Status")] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((str_requestIndexTitle.replacingOccurrences(of: "to", with: "a") + "Info")) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(str_requestIndexTitle.replacingOccurrences(of: "to", with: "a") + "Info")] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(String(str_bottomName))] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(String(str_mainName))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((String(str_toName) + str_sizeColorTitle.uppercased() + String(str_modelText.prefix(8)))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(String(str_toName) + str_sizeColorTitle.uppercased() + String(str_modelText.prefix(8)))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(str_toHideData))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(str_toHideData))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((String(str_littleLabelValue.suffix(6)) + String(str_leadingBackgroundText))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(String(str_littleLabelValue.suffix(6)) + String(str_leadingBackgroundText))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((str_intervalViewName.replacingOccurrences(of: "to", with: "mp"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(str_intervalViewName.replacingOccurrences(of: "to", with: "mp"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((str_itemShowName.lowercased() + "Rate")) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(str_itemShowName.lowercased() + "Rate")] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(str_aName.prefix(9)))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(str_aName.prefix(9)))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(str_coinValue) + str_slideContent.replacingOccurrences(of: "table", with: "t") + str_showName.replacingOccurrences(of: "bag", with: "t"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(str_coinValue) + str_slideContent.replacingOccurrences(of: "table", with: "t") + str_showName.replacingOccurrences(of: "bag", with: "t"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
