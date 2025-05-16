
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let str_containerData:String = "true response equal regularJDSta"
fileprivate let str_labValue:String = "arStlet post self view path"
fileprivate let str_screenValue:String = "last resume viewyleDef"

/*: "JDStatusBarStyleError" :*/
fileprivate let str_ofValue:String = "JDStguard make"
fileprivate let str_pathData:String = "room statusBarS"
fileprivate let str_greetClickColorValue:String = "RROR"

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let str_estimatedData:String = "JDStatshow info right height"
fileprivate let str_systemStatusValue:[Character] = ["e","S","u","c","c","e","s","s"]

/*: "2AB572" :*/
fileprivate let str_modeAtText:[Character] = ["2","A","B","5","7","2"]

/*: "F05E5E" :*/
fileprivate let str_groupName:String = "F0cancelcancel"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TalkingTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: import JDStatusBarNotification
import JDStatusBarNotification

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func bottomMsg(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.humankindButton(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_containerData.suffix(5)) + "tusB" + String(str_labValue.prefix(4)) + String(str_screenValue.suffix(6)) + "ault"))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func atShow(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.humankindButton(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_ofValue.prefix(4)) + "atus" + String(str_pathData.suffix(4)) + "tyleE" + str_greetClickColorValue.lowercased()))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func successMsg(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.humankindButton(showMsg: showMsg, dismissTime: 1.5, styleName: (String(str_estimatedData.prefix(6)) + "usBarStyl" + String(str_systemStatusValue)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func humankindButton(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.textTitle(token: kLet_saveTitle, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(str_modeAtText)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(str_ofValue.prefix(4)) + "atus" + String(str_pathData.suffix(4)) + "tyleE" + str_greetClickColorValue.lowercased()) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (str_groupName.replacingOccurrences(of: "cancel", with: "5E")))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(str_modeAtText)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
