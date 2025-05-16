
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let str_cookieData:String = "mf/busbackground equal remove"
fileprivate let str_cardName:[Character] = ["i","n","e","s"]
fileprivate let str_byLabTimeText:[Character] = ["s","/","l","i","s","t"]

/*: "Any" :*/
fileprivate let str_cellName:[Character] = ["A","n","y"]

/*: "58+" :*/
fileprivate let str_loadValue:String = "log8+"

/*: "Yes" :*/
fileprivate let str_onlineValue:String = "Yesmake self label up"

/*: "tab" :*/
fileprivate let str_userValue:[UInt8] = [0x2e,0x3b,0x38]

private func forAttention(raw num: UInt8) -> UInt8 {
    return num ^ 90
}

/*: "page" :*/
fileprivate let str_modelValue:[UInt8] = [0xfc,0xed,0xeb,0xe9]

private func dailySucceed(text num: UInt8) -> UInt8 {
    return num ^ 140
}

/*: "minAge" :*/
fileprivate let str_equalData:[UInt8] = [0x5,0x1,0x6,0xd9,0xff,0xfd]

fileprivate func followOut(value num: UInt8) -> UInt8 {
    let value = Int(num) + 104
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "maxAge" :*/
fileprivate let str_sizeName:[UInt8] = [0x53,0x5f,0x46,0x7f,0x59,0x5b]

private func homeIndexManager(enter num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "datingVideo" :*/
fileprivate let str_titleContent:[UInt8] = [0xf0,0xf5,0xe0,0xfd,0xfa,0xf3,0xc2,0xfd,0xf0,0xf1,0xfb]

private func attentionStart(button num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "uid" :*/
fileprivate let str_gestureValue:[Character] = ["u","i","d"]

/*: "mf/premiumStar/list" :*/
fileprivate let str_modelToData:String = "mf/precolor as extension deadline info"
fileprivate let str_soundValue:String = "playeriuplayer"
fileprivate let str_countValue:String = "lititle"

/*: "mf/business/adBanner" :*/
fileprivate let str_iconViewName:String = "try for click indicatormf/bus"
fileprivate let str_removeText:String = "/adBanndefine height"
fileprivate let str_labData:[Character] = ["e","r"]

/*: "position" :*/
fileprivate let str_indexData:[UInt8] = [0xed,0xf2,0xee,0xf4,0xe9,0xf4,0xf2,0xf3]

private func appBlack(label num: UInt8) -> UInt8 {
    return num ^ 157
}

/*: "bannerList" :*/
fileprivate let str_dataTitle:[Character] = ["b","a","n","n","e","r","L"]
fileprivate let str_originData:String = "isselect"

/*: "mf/rank/list" :*/
fileprivate let str_appData:String = "mf/rankscale self equal index let"
fileprivate let str_sizeCenterValue:[Character] = ["/","l","i","s","t"]

/*: "name" :*/
fileprivate let str_makeValue:[UInt8] = [0xb6,0xa9,0xb5,0xad]

fileprivate func willDirection(to num: UInt8) -> UInt8 {
    let value = Int(num) - 72
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "period" :*/
fileprivate let str_whiteTitle:[UInt8] = [0x64,0x6f,0x69,0x72,0x65,0x70]

/*: "user/position" :*/
fileprivate let str_giftName:[Character] = ["u","s","e","r","/","p","o","s","i","t"]
fileprivate let str_mData:String = "iomake"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyDirectorRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum SearchConstantTarget: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class EmptyDirectorRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func board(tab: SearchConstantTarget, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(str_cookieData.prefix(6)) + String(str_cardName) + String(str_byLabTimeText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if kLet_tableName == (String(str_cellName)).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if kLet_tableName == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = kLet_tableName.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if kLet_userLiveMarginValue == (String(str_onlineValue.prefix(3))).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: str_userValue.map{forAttention(raw: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: str_modelValue.map{dailySucceed(text: $0)}, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: str_equalData.map{followOut(value: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: str_sizeName.map{homeIndexManager(enter: $0)}, encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: str_titleContent.map{attentionStart(button: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(String(str_gestureValue))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = CustomPersonHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func shape(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(str_modelToData.prefix(6)) + str_soundValue.replacingOccurrences(of: "player", with: "m") + "Star/" + str_countValue.replacingOccurrences(of: "title", with: "st"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: str_modelValue.map{dailySucceed(text: $0)}, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = SuperfluousModelType.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func popCard(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(str_iconViewName.suffix(6)) + "iness" + String(str_removeText.prefix(7)) + String(str_labData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: str_indexData.map{appBlack(label: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
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

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(str_dataTitle) + str_originData.replacingOccurrences(of: "select", with: "t"))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = CoverModelType.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func outsideBarMake(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(str_appData.prefix(7)) + String(str_sizeCenterValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: str_makeValue.map{willDirection(to: $0)}, encoding: .utf8)!: topName ?? "", String(bytes: str_whiteTitle.reversed(), encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        kLet_deviceName.clickLocation(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func sacristyShow(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = NumberryMReactiveCompatible()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(str_giftName) + str_mData.replacingOccurrences(of: "make", with: "n"))
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

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [CustomPersonHandyJSON] = //: return Array<CustomPersonHandyJSON>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [CustomPersonHandyJSON] = //: return Array<CustomPersonHandyJSON>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [SuperfluousModelType] = //: return Array<SuperfluousModelType>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [CoverModelType] = //: return Array<CoverModelType>()
        .init()
    //: }()
}
