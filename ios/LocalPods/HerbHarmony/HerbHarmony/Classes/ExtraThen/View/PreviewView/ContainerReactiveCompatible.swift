
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_delayTitle:[UInt8] = [0x74,0x73,0x74,0x69,0x35,0x7e,0x72,0x79,0x78,0x6f,0x27,0x34,0x3d,0x75,0x7c,0x6e,0x3d,0x73,0x72,0x69,0x3d,0x7f,0x78,0x78,0x73,0x3d,0x74,0x70,0x6d,0x71,0x78,0x70,0x78,0x73,0x69,0x78,0x79]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TPreviewBottomToolView: UIView {
class ContainerReactiveCompatible: UIView {
    //: var uid:String = ""
    var uid: String = ""
    //: var mid: String = ""
    var mid: String = ""
    //: var mType: String = ""
    var mType: String = ""
    //: var isLike = false
    var isLike = false
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var previewLikeBlock: (() -> Void)?
    var previewLikeBlock: (() -> Void)?
    //: var previewCommentBlock: (() -> Void)?
    var previewCommentBlock: (() -> Void)?
    //: var previewChatBlock: (() -> Void)?
    var previewChatBlock: (() -> Void)?
    //: var previewCrushBlock: (() -> Void)?
    var previewCrushBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.recover()
        //: self.setupSubViewsConstraint()
        self.withVoice()
        //: self.bindInteraction()
        self.showQuantityeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_delayTitle.map{$0^29}, encoding: .utf8)!)
    }
}

// MARK: - Bind && Event

//: extension TPreviewBottomToolView {
extension ContainerReactiveCompatible {
    //: private func bindInteraction() {
    private func showQuantityeraction() {}

    //: @objc func registerLikeAction() {
    @objc func voice() {
        //: self.likeRequest()
        self.clickRequest()
    }

    //: @objc func registerChatAction() {
    @objc func tool() {
        //: self.chatPush()
        self.statusInfo()
    }

    //: @objc func registerCrushAction() {
    @objc func menu() {
        //: self.crushRequest()
        self.picture()
    }

    //: @objc func registerCommentAction() {
    @objc func imageOnAction() {
        //: self.commentPush()
        self.pop()
    }
}

// MARK: - update

//: extension TPreviewBottomToolView {
extension ContainerReactiveCompatible {
    //: func updateBottomView(model: TPreviewInfoModel) {
    func gildTheLily(model: PreviewInfoModel) {
        //: uid = model.uid
        uid = model.uid
        //: mid = model.mid
        mid = model.mid
        //: mType = model.mType
        mType = model.mType
    }

    //: private func chatPush() {
    private func statusInfo() {}

    //: private func commentPush() {
    private func pop() {}

    //: private func crushRequest() {
    private func picture() {
        //: TalkingUserRequestManager.func__sendCrushWithUserId(targetUid: uid) { succeed, result, errorModel in
        UnambiguousThen.point(targetUid: uid) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                // 播放动画
            }
        }
    }

    //: private func likeRequest() {
    private func clickRequest() {
        //: TalkingUserRequestManager.func__likeMoment(mid: mid, type: mType) { succeed, result, errorModel in
        UnambiguousThen.subFrom(mid: mid, type: mType) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isLike = !self.isLike
                self.isLike = !self.isLike
            }
        }
    }
}

// MARK: Layout

//: extension TPreviewBottomToolView {
extension ContainerReactiveCompatible {
    //: private func setupSubviews() {
    private func recover() {}

    //: private func setupSubViewsConstraint() {
    private func withVoice() {}
}
