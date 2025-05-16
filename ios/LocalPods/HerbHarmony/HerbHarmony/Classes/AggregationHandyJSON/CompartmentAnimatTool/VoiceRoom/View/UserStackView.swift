
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorOfContent:[UInt8] = [0x93,0x94,0x93,0x8e,0xd2,0x99,0x95,0x9e,0x9f,0x88,0xc0,0xd3,0xda,0x92,0x9b,0x89,0xda,0x94,0x95,0x8e,0xda,0x98,0x9f,0x9f,0x94,0xda,0x93,0x97,0x8a,0x96,0x9f,0x97,0x9f,0x94,0x8e,0x9f,0x9e]

private func analogDigitalConverter(pic num: UInt8) -> UInt8 {
    return num ^ 250
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserStackView.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class UserStackView: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        light()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorOfContent.map{analogDigitalConverter(pic: $0)}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension UserStackView {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func empty() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = StackMThen.estimated().imageCollectionPositions()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        for (key, model) in dict {
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? BindView
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.sendFor(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func afterEnd(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = StackMThen.estimated().accumulationKey(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? BindView
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.sendFor(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func pointPath(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = StackMThen.estimated().accumulationKey(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? BindView
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.theText(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension UserStackView {
    /// 添加视图
    //: private func setupSubviews() {
    private func light() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_domainData {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * kLet_scaleData.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if MeanSunLanguageManager.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = kLet_senseContent - startX - kLet_scaleData.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = BindView()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * kLet_scaleData.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = kLet_scaleData
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
