
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let str_messageName:String = "for instance to equallaunchF"
fileprivate let str_leadingName:String = "video colorromApns"

/*: "type" :*/
fileprivate let str_kitName:String = "errorpe"

/*: "fromUid" :*/
fileprivate let str_gestureName:String = "fromUimodel manager"
fileprivate let str_keySectionData:String = "table"

/*: "roomId" :*/
fileprivate let str_sharedTitle:[Character] = ["r","o","o","m","I","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTouchManageressThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum ToTextTableConvertible: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class TalkingTouchManageressThen: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = TalkingTouchManageressThen()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func tweak() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(str_messageName.suffix(7)) + String(str_leadingName.suffix(7))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.underState()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func underState() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(str_kitName.replacingOccurrences(of: "error", with: "ty"))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = ToTextTableConvertible(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_gestureName.prefix(6)) + str_keySectionData.replacingOccurrences(of: "table", with: "d"))].stringValue
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: fromUid)
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(str_sharedTitle))].stringValue
                    //: LeadingEqualReactiveCompatible.share.func__pushToGroupChat(groupId: roomId)
                    LeadingEqualReactiveCompatible.share.jam(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(str_gestureName.prefix(6)) + str_keySectionData.replacingOccurrences(of: "table", with: "d"))].stringValue
                    //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: fromUid)
                    LeadingEqualReactiveCompatible.share.bindDownFrom(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                TalkingTouchManageressThen.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                TalkingTouchManageressThen.share.launchFromApns = false
            }
        }
    }
}
