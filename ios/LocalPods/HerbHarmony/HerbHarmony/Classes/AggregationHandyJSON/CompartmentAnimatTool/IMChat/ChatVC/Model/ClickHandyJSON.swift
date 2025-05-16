
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClickHandyJSON.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/13.
//

//: import UIKit
import UIKit

//: import HandyJSON
import HandyJSON

//: @objcMembers class TalkingMsgBaseModel: NSObject, HandyJSON {
@objcMembers class ClickHandyJSON: NSObject, HandyJSON {
    //: var msgInfo: TalkingMsgInfoModel?
    var msgInfo: IconTouchModelType?
    //: var gift: TalkingMsgGiftModel?
    var gift: StateMessageTransformable?
    //: var user: TalkingMsgUserModel?
    var user: ClassThen?
    //: var toUser: TalkingMsgToUserModel?
    var toUser: MiniTransformable?

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgInfoModel: NSObject, HandyJSON {
class IconTouchModelType: NSObject, HandyJSON {
    //: var msgId = ""
    var msgId = ""
    //: var content = ""
    var content = ""
    //: var contentType = ""
    var contentType = ""
    //: var imageUri = ""
    var imageUri = ""
    //: var uid = ""
    var uid = ""
    //: var toUid = ""
    var toUid = ""
    //: var mfBean = ""
    var mfBean = ""

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgUserModel: NSObject, HandyJSON {
class ClassThen: NSObject, HandyJSON {
    //: var uid = ""
    var uid = ""
    //: var nickname = ""
    var nickname = ""
    //: var headPic = ""
    var headPic = ""
    //: var age = ""
    var age = ""
    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgToUserModel: NSObject, HandyJSON {
class MiniTransformable: NSObject, HandyJSON {
    //: var uid = ""
    var uid = ""
    //: var nickname = ""
    var nickname = ""
    //: var headPic = ""
    var headPic = ""

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgGiftModel: NSObject, HandyJSON {
class StateMessageTransformable: NSObject, HandyJSON {
    //: var iosEffect = ""
    var iosEffect = ""
    //: var animationTimes = ""
    var animationTimes = ""
    //: var price = ""
    var price = ""
    //: var imgPreview = ""
    var imgPreview = ""
    //: var giftNum = ""
    var giftNum = ""
    //: var sendNum = ""
    var sendNum = ""
    //: var showType = ""
    var showType = ""
    //: var name = ""
    var name = ""
    //: var num = ""
    var num = ""
    //: var iosVapEffect = ""
    var iosVapEffect = ""

    //: required override init() {}
    override required init() {}
}
