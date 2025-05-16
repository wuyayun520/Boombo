
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_convertData:[UInt8] = [0x7e,0x79,0x7e,0x63,0x3f,0x74,0x78,0x73,0x72,0x65,0x2d,0x3e,0x37,0x7f,0x76,0x64,0x37,0x79,0x78,0x63,0x37,0x75,0x72,0x72,0x79,0x37,0x7e,0x7a,0x67,0x7b,0x72,0x7a,0x72,0x79,0x63,0x72,0x73]

private func managerPost(size num: UInt8) -> UInt8 {
    return num ^ 23
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol FromViewDelegate: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func differentialCostSuccess(effectItemView: MessageItemView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func subBurn(effectItemView: MessageItemView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class MessageItemView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: StartMeasurable?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: HandleAnimatModel?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: FromViewDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_convertData.map{managerPost(size: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func makeAnimating() {}

    //: func stopAnimating() {
    func keyView() {}

    //: func cleanAnimating() {
    func computerFileName() {}

    //: func pauseAnimation() {
    func hideFrom() {}

    //: func resumeAnimation() ->Bool {
    func tillStopDesign() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func stopTarget(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return DataThen.shared.toUp(fileName: fileName, model: self.effectMsgModel!)
    }
}
