
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_playerName:[UInt8] = [0xaa,0xad,0xaa,0xb7,0xeb,0xa0,0xac,0xa7,0xa6,0xb1,0xf9,0xea,0xe3,0xab,0xa2,0xb0,0xe3,0xad,0xac,0xb7,0xe3,0xa1,0xa6,0xa6,0xad,0xe3,0xaa,0xae,0xb3,0xaf,0xa6,0xae,0xa6,0xad,0xb7,0xa6,0xa7]

private func photoMessageModel(correlation num: UInt8) -> UInt8 {
    return num ^ 195
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SwathThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/16.
//

//: import UIKit
import UIKit

//: typealias ShowUserInfoViewBlock = (_ userID: Int) -> Void
typealias ShowUserInfoViewBlock = (_ userID: Int) -> Void

//: class TalkingGiftTrackView: UIView {
class SwathThen: UIView {
    //: var giftSendItem = [TalkingGiftNumArrModel()]
    var giftSendItem = [ButtonModelType()]
    //: var  showUserInfoViewBlock: ShowUserInfoViewBlock!
    var showUserInfoViewBlock: ShowUserInfoViewBlock!

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.subviewsSetup()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_playerName.map{photoMessageModel(correlation: $0)}, encoding: .utf8)!)
    }

    //: init(frame: CGRect, giftMsgDic: Dictionary<String, Any?>) {
    init(frame: CGRect, giftMsgDic _: [String: Any?]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
}

//: extension TalkingGiftTrackView {
extension SwathThen {
    //: override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    override func hitTest(_ point: CGPoint, with _: UIEvent?) -> UIView? {
        //: for  subview in self.subviews {
        for subview in self.subviews {
            //: let itemview: TalkingGiftTrackItemView = subview as! TalkingGiftTrackItemView
            let itemview: CheckEmptyView = subview as! CheckEmptyView
            //: let point = itemview.convert(point, from: self)
            let point = itemview.convert(point, from: self)
            //: if #available(iOS 11.0, *) {
            if #available(iOS 11.0, *) {
                //: if itemview.avatarImage.frame.contains(point) {
                if itemview.avatarImage.frame.contains(point) {
                    //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: "\(itemview.giftMsgModel.fromUid ?? 0)")
                    LeadingEqualReactiveCompatible.share.bindDownFrom(uid: "\(itemview.giftMsgModel.fromUid ?? 0)")
                    //: break
                    break
                }
                //: } else {
            } else {
                // Fallback on earlier versions
            }
        }

        //: return nil
        return nil
    }

    //: func func__didReceiveGiftMsgModel(model: TalkingGiftMsgAnimatModel) {
    func simultaneously(model: AggregationHandyJSON) {
        //  1.相同礼物时则连击
        //: for  subview in self.subviews {
        for subview in self.subviews {
            //: let itemview: TalkingGiftTrackItemView = subview as! TalkingGiftTrackItemView
            let itemview: CheckEmptyView = subview as! CheckEmptyView
            //: if isDoubleHitBetween(giftMsgModel: itemview.giftMsgModel, withGiftMsgModel: model) {
            if writeWho(giftMsgModel: itemview.giftMsgModel, withGiftMsgModel: model) {
                //: itemview.comboHitWith(giftMsgModel: model)
                itemview.addOff(giftMsgModel: model)
                //: itemview.setGiftMsgModel(model: model)
                itemview.itemEqual(model: model)
                //: return
                return
            }
        }

        // 2.添加新的礼物
        //: for index in 0...2 {
        for index in 0 ... 2 {
            //: let tag = 100+index
            let tag = 100 + index
            //: let subView: TalkingGiftTrackItemView? = self.viewWithTag(tag) as! TalkingGiftTrackItemView?
            let subView: CheckEmptyView? = self.viewWithTag(tag) as! CheckEmptyView?
            //: if subView == nil {
            if subView == nil {
                //: self.addNewGiftDanumWith(giftMsgModel: model, atIndex: index)
                self.addEnable(giftMsgModel: model, atIndex: index)
                //: return
                return
            }
        }

        //  3.三个位置都有，
        //: for index in 0...2 {
        for index in 0 ... 2 {
            //: let tag = 100+index
            let tag = 100 + index
            //: let subView: TalkingGiftTrackItemView = self.viewWithTag(tag) as! TalkingGiftTrackItemView
            let subView: CheckEmptyView = self.viewWithTag(tag) as! CheckEmptyView
            //: if index == 0 {
            if index == 0 {
                //: subView.animateHide()
                subView.wearer()
            }
            //: if index == 1 || index == 2 {
            if index == 1 || index == 2 {
                //: let i = index == 1 ? 0: 1
                let i = index == 1 ? 0 : 1
                //: let subView1: TalkingGiftTrackItemView = self.viewWithTag(tag) as! TalkingGiftTrackItemView
                let subView1: CheckEmptyView = self.viewWithTag(tag) as! CheckEmptyView
                //: var frame = subView.frame
                var frame = subView.frame
                //: frame.origin.y = CGFloat(i*60)
                frame.origin.y = CGFloat(i * 60)
                //: subView1.tag = 100 + i
                subView1.tag = 100 + i
                //: subView1.animationViewToTop(frame: frame)
                subView1.vantage(frame: frame)

                //: if index == 2 {
                if index == 2 {
                    //: if subView.showAnimationDone {
                    if subView.showAnimationDone {
                        //: self.addNewGiftDanumWith(giftMsgModel: model, atIndex: index)
                        self.addEnable(giftMsgModel: model, atIndex: index)
                    }
                }
            }
        }
    }

    //: func isDoubleHitBetween(giftMsgModel: TalkingGiftMsgAnimatModel, withGiftMsgModel: TalkingGiftMsgAnimatModel) -> (Bool) {
    func writeWho(giftMsgModel: AggregationHandyJSON, withGiftMsgModel: AggregationHandyJSON) -> (Bool) {
        //: if (giftMsgModel.pid==withGiftMsgModel.pid &&
        if giftMsgModel.pid == withGiftMsgModel.pid,
           //: giftMsgModel.fromUid == withGiftMsgModel.fromUid &&
           giftMsgModel.fromUid == withGiftMsgModel.fromUid,
           //: giftMsgModel.num == withGiftMsgModel.num) {
           giftMsgModel.num == withGiftMsgModel.num
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: func addNewGiftDanumWith(giftMsgModel: TalkingGiftMsgAnimatModel, atIndex: Int ) {
    func addEnable(giftMsgModel: AggregationHandyJSON, atIndex: Int) {
        //: var startX = 0
        var startX = 0
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: startX = -Int(ScreenWidth)-15
            startX = -Int(kLet_senseContent) - 15
        }
        //: let frame = CGRect.init(x: startX, y: atIndex * 60, width: Int(ScreenWidth), height: 60)
        let frame = CGRect(x: startX, y: atIndex * 60, width: Int(kLet_senseContent), height: 60)
        //: let subView =  TalkingGiftTrackItemView.init(frame: frame)
        let subView = CheckEmptyView(frame: frame)
        //: subView.tag                     = 100 + atIndex
        subView.tag = 100 + atIndex
//        subView.showUserInfoViewBlock   = self.showUserInfoViewBlock
        //: subView.giftSendItem            = self.giftSendItem
        subView.giftSendItem = self.giftSendItem
        //: subView.setGiftMsgModel(model: giftMsgModel)
        subView.itemEqual(model: giftMsgModel)
        //: self.addSubview(subView)
        self.addSubview(subView)

        //: subView.showGiftAnimate(model: giftMsgModel, animate: true)
        subView.exhibitAnimate(model: giftMsgModel, animate: true)
    }
}

//: extension TalkingGiftTrackView {
extension SwathThen {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsSetup() {}
}
