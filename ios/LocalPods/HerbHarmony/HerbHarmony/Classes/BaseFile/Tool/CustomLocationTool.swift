
//: Declare String Begin

/*: "allowList" :*/
fileprivate let str_userData:String = "acollectioncollectionow"
fileprivate let str_colorData:[Character] = ["L","i","s","t"]

/*: "denyList" :*/
fileprivate let str_tempName:String = "gift party info self linedenyLi"
fileprivate let str_voiceName:String = "skey"

/*: "America" :*/
fileprivate let str_rangeValue:String = "color leading cookie key shareAmerica"

/*: "US" :*/
fileprivate let str_actionTitle:String = "Ucolor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomLocationTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class CustomLocationTool: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [HauntAreaModel]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [HauntAreaModel]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = CustomLocationTool()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        timeStatusPause()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension CustomLocationTool {
    //: private func func__loadAreaCodeData() {
    private func timeStatusPause() {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        CellReactiveCompatible.completion { succeed, result, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(str_userData.replacingOccurrences(of: "collection", with: "l") + String(str_colorData))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(String(str_tempName.suffix(6)) + str_voiceName.replacingOccurrences(of: "key", with: "t"))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<HauntAreaModel>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [HauntAreaModel])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<HauntAreaModel>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [HauntAreaModel])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func nearBackground() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.shredder()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = CustomLocationTool.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func dismissTotalry() -> HauntAreaModel {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.shredder()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = CustomLocationTool.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return HauntAreaModel(areaCode: "1", areaName: (String(str_rangeValue.suffix(7))), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class HauntAreaModel: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
