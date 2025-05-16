
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LabelModelType.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import HandyJSON
import HandyJSON

//: struct SocialRankModel: HandyJSON {
struct LabelModelType: HandyJSON {
    //: var activity: SocialPeriodModel?
    var activity: PriceModelType?
    //: var charm: SocialPeriodModel?
    var charm: PriceModelType?
}

//: struct SocialPeriodModel: HandyJSON {
struct PriceModelType: HandyJSON {
    //: var yesterday: SocialResModel?
    var yesterday: SocietalTransformable?
    //: var today: SocialResModel?
    var today: SocietalTransformable?
    //: var weekly: SocialResModel?
    var weekly: SocietalTransformable?
}

// 毫无意义的一层，等后端后期调整
//: struct SocialResModel: HandyJSON {
struct SocietalTransformable: HandyJSON {
    //: var res: [SocialRankItemModel] = []
    var res: [EndManMeasurable] = []
}

//: struct SocialRankItemModel: HandyJSON {
struct EndManMeasurable: HandyJSON {
    //: var uid = 0
    var uid = 0
    //: var value = 0
    var value = 0
    //: var nickname: String = ""
    var nickname: String = ""
    //: var headPic: String = ""
    var headPic: String = ""
    //: var sex: String = ""
    var sex: String = ""
    //: var loungePlus: Bool = false
    var loungePlus: Bool = false // 是否订阅
    //: var headPicFrame: String = ""      // 首充头像框
    var headPicFrame: String = "" // 首充头像框

    // MARK: - 自定义字段

    /// 占位字段，表示数据是否为空
    //: var isEmpty: Bool = false
    var isEmpty: Bool = false
}
