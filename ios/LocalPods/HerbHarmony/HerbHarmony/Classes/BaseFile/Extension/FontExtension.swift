
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let str_modelName:String = "view view model key letPingF"
fileprivate let str_allData:String = "self content if index scaleC-Re"
fileprivate let str_picQuickData:String = "gultab"

/*: "PingFangSC-Medium" :*/
fileprivate let str_pathName:[Character] = ["P","i","n","g","F","a","n","g","S"]
fileprivate let str_callModelBackText:[Character] = ["C","-","M","e","d","i","u","m"]

/*: "PingFangSC-Semibold" :*/
fileprivate let str_priceTitle:String = "Pingleading to for guard"
fileprivate let str_addText:[Character] = ["S","e","m"]
fileprivate let str_itemValue:String = "ibocenterd"

/*: "PingFangSC-Thin" :*/
fileprivate let str_toData:String = "self equal inPing"
fileprivate let str_timeValue:String = "track index left add modeC-Thin"

/*: "PingFangSC-Light" :*/
fileprivate let str_modeTitle:String = "PingFangesture leading empty first size"
fileprivate let str_closeData:[Character] = ["g","S","C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let str_roomTitle:String = "view any selfPingF"
fileprivate let str_backInmateTitle:String = "C-Ulview self for"
fileprivate let str_sectionData:[Character] = ["g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func liveAttention(type: ButtonFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(str_modelName.suffix(5)) + "angS" + String(str_allData.suffix(4)) + str_picQuickData.replacingOccurrences(of: "tab", with: "ar")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(str_pathName) + String(str_callModelBackText)), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(str_priceTitle.prefix(4)) + "FangSC-" + String(str_addText) + str_itemValue.replacingOccurrences(of: "center", with: "l")), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(str_toData.suffix(4)) + "FangS" + String(str_timeValue.suffix(6))), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(str_modeTitle.prefix(7)) + String(str_closeData)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(str_roomTitle.suffix(5)) + "angS" + String(str_backInmateTitle.prefix(4)) + "trali" + String(str_sectionData)), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func unprecedented(fontSize: CGFloat) -> UIFont {
        //: return UIFont.liveAttention(type: .Regular, fontSize: fontSize)
        return UIFont.liveAttention(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func behindUpRoom(fontSize: CGFloat) -> UIFont {
        //: return UIFont.liveAttention(type: .Medium, fontSize: fontSize)
        return UIFont.liveAttention(type: .Medium, fontSize: fontSize)
    }
}
