
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let str_userText:[UInt8] = [0xf0,0xdd,0xc7,0xc4,0xd5,0xc0,0xd7,0xdc,0xe5,0xc1,0xd1,0xc1,0xd1,0xe0,0xdb,0xdf,0xd1,0xda,0xeb,0xe7,0xc0,0xd5,0xc0,0xc1,0xc7,0xf6,0xd5,0xc6,0xfd,0xda,0xdd,0xc0]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let kLet_saveTitle = String(bytes: str_userText.map{$0^180}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func textTitle(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
