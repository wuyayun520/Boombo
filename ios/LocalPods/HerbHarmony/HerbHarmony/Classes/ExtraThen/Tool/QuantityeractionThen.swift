
//: Declare String Begin

/*: "user/updateInfo" :*/
fileprivate let str_appLockTitle:String = "app albumuser/u"
fileprivate let str_indexValue:String = "hiddeno"

/*: "gallery/getGalleryByUid" :*/
fileprivate let str_systemName:[Character] = ["g","a","l","l","e","r","y","/","g","e","t","G","a","l","l","e","r","y","B","y","U","i","d"]

/*: "gallery/upload" :*/
fileprivate let str_showTitle:String = "gakindkinde"
fileprivate let str_infoValue:String = "ploclickd"

/*: "gallery/deletePic" :*/
fileprivate let str_streamAddText:String = "GALLE"
fileprivate let str_whiteValue:String = "ry/delelse random awake target icon"
fileprivate let str_centerData:[Character] = ["e","t","e","P","i","c"]

/*: "user/tagDelete" :*/
fileprivate let str_actionText:String = "user/theight frame"
fileprivate let str_sharedValue:[Character] = ["a","g","D","e","l","e","t","e"]

/*: "mf/user/tagEdit" :*/
fileprivate let str_tableValue:[Character] = ["m","f","/","u","s","e","r","/"]
fileprivate let str_lineData:[Character] = ["t","a","g","E","d","i","t"]

/*: "app/feedback" :*/
fileprivate let str_listenData:String = "self ageapp/fe"
fileprivate let str_priceErrorPicValue:String = "edmakeack"

/*: "IM/getMyBlackList" :*/
fileprivate let str_toolContent:[Character] = ["I","M","/","g","e","t","M","y","B","l","a","c","k","L"]
fileprivate let str_socialArrayName:String = "IST"

/*: "mf/user/getSetting" :*/
fileprivate let str_leadingName:String = "picture anymf/u"
fileprivate let str_hiddenText:String = "tSettext if"

/*: "mf/user/setConfig" :*/
fileprivate let str_groupName:String = "mf/ufrom view"
fileprivate let str_callValue:String = "nftransaction"

/*: "mf/user/settingStatus" :*/
fileprivate let str_layerName:String = "mf/usfinish model view"
fileprivate let str_makeTitle:String = "title lab view size viewtingS"

/*: "type" :*/
fileprivate let str_selectValue:[UInt8] = [0xec,0xf1,0xe8,0xdd]

fileprivate func valueScreen(key num: UInt8) -> UInt8 {
    let value = Int(num) + 136
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/lockAccount" :*/
fileprivate let str_touchValue:[Character] = ["u","s","e","r","/","l","o","c","k","A","c","c","o","u"]
fileprivate let str_modeFromText:String = "next"

/*: "mf/user/editInfo" :*/
fileprivate let str_onlineModelVarData:[Character] = ["m","f","/","u","s","e","r","/","e","d","i","t","I","n","f","o"]

/*: "mf/userSign/list" :*/
fileprivate let str_dayTitle:[Character] = ["m","f","/","u","s","e","r","S","i","g","n","/","l","i","s","t"]

/*: "mf/userSign/signIn" :*/
fileprivate let str_upValue:String = "mf/usercontent voice party"
fileprivate let str_theTitle:[Character] = ["S","i","g","n","/"]
fileprivate let str_modelPhoneName:[Character] = ["s","i","g","n","I","n"]

/*: "mf/dating/saveVideo" :*/
fileprivate let str_cardFromMakeValue:String = "index error elsemf/dat"
fileprivate let str_tempData:String = "remark main value standardveVideo"

/*: "mf/dating/getConfig" :*/
fileprivate let str_nameText:String = "view addmf/datin"
fileprivate let str_dataValue:[Character] = ["g","/"]
fileprivate let str_modelBottomName:[Character] = ["g","e","t","C","o","n","f","i","g"]

/*: "mf/dating/deleteVideo" :*/
fileprivate let str_toValue:String = "self group self namemf/dating"
fileprivate let str_regularContent:[Character] = ["/","d","e","l","e","t","e","V","i","d","e","o"]

/*: "mf/greet/updateAudioRemark" :*/
fileprivate let str_assignName:[Character] = ["m","f","/","g","r","e","e","t","/","u","p","d","a","t","e","A","u","d","i"]
fileprivate let str_validContent:[Character] = ["o","R","e","m","a","r","k"]

/*: "mf/greet/list" :*/
fileprivate let str_resultTitle:String = "report video typemf/gr"
fileprivate let str_roomData:String = "closecloset"
fileprivate let str_voiceData:[Character] = ["/","l","i","s","t"]

/*: "mf/greet/add" :*/
fileprivate let str_cornerTitle:String = "make contentmf/g"
fileprivate let str_fogData:String = "ADD"

/*: "mf/greet/del" :*/
fileprivate let str_blockValue:String = "dismiss withoutmf/gre"

/*: "mf/greet/getSettings" :*/
fileprivate let str_colorName:[Character] = ["m","f","/","g","r","e","e","t"]
fileprivate let str_statusName:[Character] = ["/","g","e","t","S","e","t"]
fileprivate let str_addResultTitle:[Character] = ["t","i","n","g","s"]

/*: "mf/greet/extraSetting" :*/
fileprivate let str_giftData:String = "mf/greimage to"
fileprivate let str_sizeAddName:String = "name app imagetraSet"
fileprivate let str_ofValue:String = "datang"

/*: "game/list" :*/
fileprivate let str_resultFilterColorTitle:String = "game/listcolor view"

/*: "category" :*/
fileprivate let str_topName:[UInt8] = [0x35,0x37,0x22,0x33,0x31,0x39,0x24,0x2f]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityeractionThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingMeRequestTool: NSObject {
class QuantityeractionThen: NSObject {
    /// 资料完善
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateUserInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func fixing(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "user/updateInfo"
        reqModel.requestPath = (String(str_appLockTitle.suffix(6)) + "pdateI" + str_indexValue.replacingOccurrences(of: "hidden", with: "nf"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取用户相册
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GalleryByUid(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func subDraft(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "gallery/getGalleryByUid"
        reqModel.requestPath = (String(str_systemName))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UploadPic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func textQuantity(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "gallery/upload"
        reqModel.requestPath = (str_showTitle.replacingOccurrences(of: "kind", with: "l") + "ry/u" + str_infoValue.replacingOccurrences(of: "click", with: "a"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeletePic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func enable(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "gallery/deletePic"
        reqModel.requestPath = (str_streamAddText.lowercased() + String(str_whiteValue.prefix(6)) + String(str_centerData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除单个用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func ofCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "user/tagDelete"
        reqModel.requestPath = (String(str_actionText.prefix(6)) + String(str_sharedValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 编辑用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_EditTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func total(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/tagEdit"
        reqModel.requestPath = (String(str_tableValue) + String(str_lineData))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 意见反馈
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_Feedback(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func searched(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "app/feedback"
        reqModel.requestPath = (String(str_listenData.suffix(6)) + str_priceErrorPicValue.replacingOccurrences(of: "make", with: "b"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取黑名单列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_BlackList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func firstTo(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "IM/getMyBlackList"
        reqModel.requestPath = (String(str_toolContent) + str_socialArrayName.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取设置信息接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func withTitle(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/getSetting"
        reqModel.requestPath = (String(str_leadingName.suffix(4)) + "ser/ge" + String(str_hiddenText.prefix(4)) + "ting")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SettingChange(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func sceneInAddCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/setConfig"
        reqModel.requestPath = (String(str_groupName.prefix(4)) + "ser/setCo" + str_callValue.replacingOccurrences(of: "transaction", with: "ig"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 女性busy状态上报接口
    /// - Parameters:
    ///   - type: 0 :不活跃， 1:活跃
    ///   - completion: 回调
    //: class func req_settingStatus(type: Int, completion: @escaping FinishBlock) {
    class func loadMedium(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/settingStatus"
        reqModel.requestPath = (String(str_layerName.prefix(5)) + "er/set" + String(str_makeTitle.suffix(5)) + "tatus")
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: str_selectValue.map{valueScreen(key: $0)}, encoding: .utf8)!: type]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 注销账号
    /// - Parameters:
    /// - completion: 回调
    //: class func req_LockAccount(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func lockPlayerQuestion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "user/lockAccount"
        reqModel.requestPath = (String(str_touchValue) + str_modeFromText.replacingOccurrences(of: "next", with: "nt"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心修改私信价格、开启语音授权
    /// - Parameters:
    /// - completion: 回调
    //: class func req_EditInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func effectHandle(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/editInfo"
        reqModel.requestPath = (String(str_onlineModelVarData))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取签到日历列表
    /// - Parameter completion: 回调
    //: class func req_getUserSignList(completion: @escaping FinishBlock) {
    class func underSize(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/userSign/list"
        reqModel.requestPath = (String(str_dayTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户签到
    /// - Parameter completion: 回调
    //: class func req_userSignIn(completion: @escaping FinishBlock) {
    class func bySoulCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/userSign/signIn"
        reqModel.requestPath = (String(str_upValue.prefix(7)) + String(str_theTitle) + String(str_modelPhoneName))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户资料视频地址上传
    /// - Parameters:
    ///   - completion: 回调
    //: class func uploadVideoUserEdit(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func blackOutWearerRangeTelevisionParamsAdjust(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/dating/saveVideo"
        reqModel.requestPath = (String(str_cardFromMakeValue.suffix(6)) + "ing/sa" + String(str_tempData.suffix(7)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func getUploadVideoInfo(completion: @escaping FinishBlock) {
    class func attention(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/dating/getConfig"
        reqModel.requestPath = (String(str_nameText.suffix(8)) + String(str_dataValue) + String(str_modelBottomName))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func deleteUserVideo(completion: @escaping FinishBlock) {
    class func loadCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/dating/deleteVideo"
        reqModel.requestPath = (String(str_toValue.suffix(9)) + String(str_regularContent))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 更新语音备注
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(completion: @escaping FinishBlock) {
    class func upCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(str_assignName) + String(str_validContent))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-查看设置列表
    /// - Parameters: type: 1=语音， 2=文本
    ///   - completion: 回调
    //: class func req_GetGreetList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func tagCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/list"
        reqModel.requestPath = (String(str_resultTitle.suffix(5)) + str_roomData.replacingOccurrences(of: "close", with: "e") + String(str_voiceData))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-添加自定义文案/语音/图片
    /// - Parameters: type: 1：语音；2：文案；3：图片; 4:私密照片
    ///   - completion: 回调
    //: class func req_UploadGreetAdd(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func finishError(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/add"
        reqModel.requestPath = (String(str_cornerTitle.suffix(4)) + "reet/" + str_fogData.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-设置音频备注
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func towardModifyView(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(str_assignName) + String(str_validContent))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-删除文案/音频
    ///   - completion: 回调
    //: class func req_DeleteAudio(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func package(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/del"
        reqModel.requestPath = (String(str_blockValue.suffix(6)) + "et/del")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 招呼设置-查看设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetGreetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func enableChangeContent(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/getSettings"
        reqModel.requestPath = (String(str_colorName) + String(str_statusName) + String(str_addResultTitle))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 图片打招呼-额外配置礼物信息
    /// - Parameters: unlockGiftId:解锁礼物id, isBurn:设置的阅后即焚状态
    ///   - completion: 回调
    //: class func req_UploadGreetExtraSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func atToEqual(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/greet/extraSetting"
        reqModel.requestPath = (String(str_giftData.prefix(6)) + "et/ex" + String(str_sizeAddName.suffix(6)) + str_ofValue.replacingOccurrences(of: "data", with: "ti"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取游戏列表
    /// - Parameters:
    ///   - category: 1=我的页面，2=私聊页面
    ///   - completion: 回调
    //: class func req_getGameList(category: Int, completion: @escaping FinishBlock) {
    class func posting(category: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "game/list"
        reqModel.requestPath = (String(str_resultFilterColorTitle.prefix(9)))
        //: reqModel.params = ["category": category]
        reqModel.params = [String(bytes: str_topName.map{$0^86}, encoding: .utf8)!: category]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
