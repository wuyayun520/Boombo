
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let str_scaleValue:String = "post closed corner#8A79F9"

/*: "#E6BD8B" :*/
fileprivate let str_makeText:[Character] = ["#","E","6","B","D","8","B"]

/*: "#F5F5F8" :*/
fileprivate let str_buttonTitleDeviceData:[Character] = ["#","F","5","F","5","F","8"]

/*: "333333" :*/
fileprivate let str_contentData:String = "pathpathpathpathpath"
fileprivate let str_onName:[Character] = ["3"]

/*: "FF2348" :*/
fileprivate let str_keyName:String = "user"
fileprivate let str_acceptText:String = "Fbubble348"

/*: "666666" :*/
fileprivate let str_targetData:String = "666666"

/*: "999999" :*/
fileprivate let str_labName:String = "arrayarrayarray"

/*: "7C74F4" :*/
fileprivate let str_numberValue:String = "scale interval7C74F4"

/*: "B97AF8" :*/
fileprivate let str_equalName:String = "B9checkF"
fileprivate let str_cellToUpValue:String = "user"

/*: "#FF5C9D" :*/
fileprivate let str_imageText:String = "#FF5C9Dstart progress to"

/*: "#EEEEEE" :*/
fileprivate let str_touchTitle:[Character] = ["#","E","E","E","E","E","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func equalRgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func alright() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(str_scaleValue.suffix(7))))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func insert() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(str_makeText)))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func air() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(str_buttonTitleDeviceData)))!
    }

    //: @objc static func appTitleColor() ->UIColor {
    @objc static func occurrence() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (str_contentData.replacingOccurrences(of: "path", with: "3") + String(str_onName)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func userError() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (str_keyName.replacingOccurrences(of: "user", with: "F") + str_acceptText.replacingOccurrences(of: "bubble", with: "2")))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func colorPush() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (str_targetData.capitalized))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func inexpensiveness() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (str_labName.replacingOccurrences(of: "array", with: "99")))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func modelColor() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(str_numberValue.suffix(6))))!.cgColor, UIColor(hex: (str_equalName.replacingOccurrences(of: "check", with: "7A") + str_cellToUpValue.replacingOccurrences(of: "user", with: "8")))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func fromPath() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(str_imageText.prefix(7))))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(str_imageText.prefix(7))))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func chorusColor() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (String(str_touchTitle)))!
    }

    //: class func getRandomColor() -> UIColor {
    class func spendColor() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
