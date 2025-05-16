
//: Declare String Begin

/*: "action" :*/
fileprivate let str_pushInsertValue:[UInt8] = [0x40,0x42,0x53,0x48,0x4e,0x4d]

fileprivate func varValue(text num: UInt8) -> UInt8 {
    let value = Int(num) - 223
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "category" :*/
fileprivate let str_valueData:[UInt8] = [0x65,0x67,0x72,0x63,0x61,0x69,0x74,0x7f]

/*: "label" :*/
fileprivate let str_lineName:String = "lablivel"

/*: "user_action" :*/
fileprivate let str_toValue:String = "marginser"
fileprivate let str_edgeText:String = "top"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CombinationReactiveCompatible.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics

//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class CombinationReactiveCompatible: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = CombinationReactiveCompatible()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func sawLogSize(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func videoLabel(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: str_pushInsertValue.map{varValue(text: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: str_valueData.map{$0^6}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(str_lineName.replacingOccurrences(of: "live", with: "e"))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        dataConverterParameters(name: (str_toValue.replacingOccurrences(of: "margin", with: "u") + "_actio" + str_edgeText.replacingOccurrences(of: "top", with: "n")), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func revoke(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func dataConverterParameters(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func makeCollisionCourse(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
