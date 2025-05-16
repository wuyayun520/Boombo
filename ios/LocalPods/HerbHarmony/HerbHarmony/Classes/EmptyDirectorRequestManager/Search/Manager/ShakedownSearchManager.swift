
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let str_equalTitle:String = "if layer field table truemf/u"
fileprivate let str_pressData:String = "otemptempe"

/*: "page" :*/
fileprivate let str_signName:[UInt8] = [0x65,0x67,0x61,0x70]

/*: "mf/user/singleUser" :*/
fileprivate let str_priceNameRegularText:String = "mf/ufalse make"
fileprivate let str_modeTitle:String = "gleUsermodel with true in style"

/*: "uid" :*/
fileprivate let str_countData:[UInt8] = [0xab,0x9f,0x9a]

fileprivate func colorAdd(back num: UInt8) -> UInt8 {
    let value = Int(num) + 202
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShakedownSearchManager.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class ShakedownSearchManager: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func recommendWithCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(str_equalTitle.suffix(4)) + "ser/rec" + str_pressData.replacingOccurrences(of: "temp", with: "m") + "ndUser")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: str_signName.reversed(), encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = ModelType.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func valueText(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(str_priceNameRegularText.prefix(4)) + "ser/sin" + String(str_modeTitle.prefix(7)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: str_countData.map{colorAdd(back: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = ModelType.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [ModelType] = //: return Array<ModelType>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [ModelType] = //: return Array<ModelType>()
        .init()
    //: }()
}
