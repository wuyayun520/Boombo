// __DEBUG__
// __CLOSE_PRINT__

//
//  UserCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class UserCellData: TalkingChatMsgBaseCellData {
@objcMembers public class UserCellData: CollectionReactiveCompatible {
    
    //: public override func contentSize() -> CGSize {
    public override func contentSize() -> CGSize {
        //: return CGSize(width: 212, height: 145)
        return CGSize(width: 212, height: 145)
    }
        
}
