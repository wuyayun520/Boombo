
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let str_atImageText:String = "mf/useline view type table"
fileprivate let str_viewFromName:[Character] = ["r"]
fileprivate let str_sinceName:[Character] = ["/","g","e","t","U","s","e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let str_dataTitle:[UInt8] = [0x64,0x69,0x75]

/*: "mf/user/getReceivedGifts" :*/
fileprivate let str_infoComponentTitle:String = "mf/uimage pic"
fileprivate let str_itemData:String = "etRename button input"
fileprivate let str_feeContent:[Character] = ["c","e"]
fileprivate let str_vantageValue:String = "topved"

/*: "mf/crush/send" :*/
fileprivate let str_userValue:String = "mf/crview let range data let"
fileprivate let str_appData:String = "sento"

/*: "targetUid" :*/
fileprivate let str_pathMainValue:[UInt8] = [0x64,0x69,0x55,0x74,0x65,0x67,0x72,0x61,0x74]

/*: "user/attention" :*/
fileprivate let str_sessionValue:[UInt8] = [0xe0,0xde,0xd0,0xdd,0x9a,0xcc,0xdf,0xdf,0xd0,0xd9,0xdf,0xd4,0xda,0xd9]

fileprivate func cellMenu(item num: UInt8) -> UInt8 {
    let value = Int(num) + 149
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/removeAttention" :*/
fileprivate let str_upContent:String = "user/rrecording gift first"
fileprivate let str_actionValue:String = "controlention"

/*: "attentionUid" :*/
fileprivate let str_containerData:[UInt8] = [0x63,0x76,0x76,0x67,0x70,0x76,0x6b,0x71,0x70,0x57,0x6b,0x66]

fileprivate func stylePush(size num: UInt8) -> UInt8 {
    let value = Int(num) - 2
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "removeAttentionUid" :*/
fileprivate let str_rowCallText:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x41,0x65,0x76,0x6f,0x6d,0x65,0x72]

/*: "user/addBlack" :*/
fileprivate let str_tabName:[UInt8] = [0x13,0x15,0x3,0x14,0x49,0x7,0x2,0x2,0x24,0xa,0x7,0x5,0xd]

private func plainspokenError(model num: UInt8) -> UInt8 {
    return num ^ 102
}

/*: "user/remBlack" :*/
fileprivate let str_infoBottomEmptyName:[Character] = ["u","s","e","r","/","r","e","m"]
fileprivate let str_managerValue:[Character] = ["B","l","a","c","k"]

/*: "mf/moment/like" :*/
fileprivate let str_colorValue:String = "background import cell online textmf/mo"
fileprivate let str_infoValue:String = "at self view right user/lik"
fileprivate let str_topCoinCircleValue:[Character] = ["e"]

/*: "momentId" :*/
fileprivate let str_hiddenName:[UInt8] = [0x20,0x22,0x20,0x18,0x21,0x27,0xfc,0x17]

fileprivate func toMake(drop num: UInt8) -> UInt8 {
    let value = Int(num) - 179
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let str_currencyName:[UInt8] = [0xfc,0x1,0xf8,0xed]

fileprivate func imageMedium(background num: UInt8) -> UInt8 {
    let value = Int(num) - 136
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let str_addSectionData:String = "mf/user/uright title pop ok path"
fileprivate let str_timeName:[Character] = ["p","l","o","a","d","A"]
fileprivate let str_spaceData:String = "uthPicmin else"

/*: "auth_pic" :*/
fileprivate let str_viewName:[UInt8] = [0xf1,0xe5,0xe4,0xf8,0xcf,0xe0,0xf9,0xf3]

private func atValue(capture num: UInt8) -> UInt8 {
    return num ^ 144
}

/*: "mf/newFeature/residualInfo" :*/
fileprivate let str_succeedUserText:String = "mf/nimage make"
fileprivate let str_cornerValue:String = "ture/rvalue click color sound"
fileprivate let str_imageText:String = "esimodela"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnambiguousThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class UnambiguousThen: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func contentColor(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(str_atImageText.prefix(6)) + String(str_viewFromName) + String(str_sinceName))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_dataTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func ok(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(str_infoComponentTitle.prefix(4)) + "ser/g" + String(str_itemData.prefix(4)) + String(str_feeContent) + str_vantageValue.replacingOccurrences(of: "top", with: "i") + "Gifts")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_dataTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func point(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(str_userValue.prefix(5)) + "ush/" + str_appData.replacingOccurrences(of: "to", with: "d"))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: str_pathMainValue.reversed(), encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func curiosityCompletion(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: str_sessionValue.map{cellMenu(item: $0)}, encoding: .utf8)! : (String(str_upContent.prefix(6)) + "emoveA" + str_actionValue.replacingOccurrences(of: "control", with: "tt"))
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: str_containerData.map{stylePush(size: $0)}, encoding: .utf8)!: uid] : [String(bytes: str_rowCallText.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func custom(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: str_tabName.map{plainspokenError(model: $0)}, encoding: .utf8)! : (String(str_infoBottomEmptyName) + String(str_managerValue))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_dataTitle.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    VolumeThen.shared.viewTo(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    VolumeThen.shared.atBar(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func subFrom(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(str_colorValue.suffix(5)) + "ment" + String(str_infoValue.suffix(4)) + String(str_topCoinCircleValue))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: str_hiddenName.map{toMake(drop: $0)}, encoding: .utf8)!: mid, String(bytes: str_currencyName.map{imageMedium(background: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func everyPath(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func requestGenuine(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(str_addSectionData.prefix(9)) + String(str_timeName) + String(str_spaceData.prefix(6)))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: str_viewName.map{atValue(capture: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 查询套餐剩余量

    //: class func func__reqResidualInfo(completion: @escaping FinishBlock) {
    class func sumeraction(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/newFeature/residualInfo"
        reqModel.requestPath = (String(str_succeedUserText.prefix(4)) + "ewFea" + String(str_cornerValue.prefix(6)) + str_imageText.replacingOccurrences(of: "model", with: "du") + "lInfo")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
