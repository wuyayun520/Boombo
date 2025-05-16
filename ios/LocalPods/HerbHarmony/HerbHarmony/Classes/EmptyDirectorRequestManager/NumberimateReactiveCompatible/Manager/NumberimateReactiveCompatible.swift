
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let str_frameName:[Character] = ["m","f","/","v","i","d","e","o","M","a","t"]
fileprivate let str_appTitle:String = "seat end to domainch/s"

/*: "status" :*/
fileprivate let str_imageMainData:[UInt8] = [0xd9,0xde,0xcb,0xde,0xdf,0xd9]

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let str_layerTitle:String = "let backgroundmf/v"
fileprivate let str_containerValue:String = "status asatch/c"
fileprivate let str_nearValue:String = "view to video send selfMatch"

/*: "matchVersion" :*/
fileprivate let str_bottomValue:[UInt8] = [0x6e,0x6f,0x69,0x73,0x72,0x65,0x56,0x68,0x63,0x74,0x61,0x6d]

/*: "v4" :*/
fileprivate let str_videoData:String = "moment4"

/*: "enterType" :*/
fileprivate let str_errorContent:[UInt8] = [0xa2,0xab,0xb1,0xa2,0xaf,0x91,0xb6,0xad,0xa2]

fileprivate func squareValue(to num: UInt8) -> UInt8 {
    let value = Int(num) - 61
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/headPics" :*/
fileprivate let str_priceData:String = "selected printmf/vid"
fileprivate let str_atData:String = "ch/heself false background orientation call"

/*: "mf/videoMatch/matchV3" :*/
fileprivate let str_estimatedPopLetName:String = "to centermf/vid"
fileprivate let str_backResultName:String = "range path varch/m"
fileprivate let str_minName:String = "i let view show normalatchV3"

/*: "matchId" :*/
fileprivate let str_viewEqualText:[UInt8] = [0x8d,0x81,0x94,0x83,0x88,0x69,0x84]

fileprivate func heightObject(bar num: UInt8) -> UInt8 {
    let value = Int(num) - 32
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/videoMatch/matchV4" :*/
fileprivate let str_detailData:[Character] = ["m","f","/","v","i","d","e","o"]
fileprivate let str_containerData:String = "color"
fileprivate let str_requestData:String = "class color selfatch/"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NumberimateReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class NumberimateReactiveCompatible: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func dedication(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(str_frameName) + String(str_appTitle.suffix(4)) + "witch")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: str_imageMainData.map{$0^170}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func dismissAction(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(str_layerTitle.suffix(4)) + "ideoM" + String(str_containerValue.suffix(6)) + "heck" + String(str_nearValue.suffix(5)))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: str_bottomValue.reversed(), encoding: .utf8)!: "v4", String(bytes: str_errorContent.map{squareValue(to: $0)}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func headCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(str_priceData.suffix(6)) + "eoMat" + String(str_atData.prefix(5)) + "adPics")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func constraintTitle(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(str_estimatedPopLetName.suffix(6)) + "eoMat" + String(str_backResultName.suffix(4)) + String(str_minName.suffix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: str_viewEqualText.map{heightObject(bar: $0)}, encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func towardChange(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(str_detailData) + str_containerData.replacingOccurrences(of: "color", with: "M") + String(str_requestData.suffix(5)) + "matchV4")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
