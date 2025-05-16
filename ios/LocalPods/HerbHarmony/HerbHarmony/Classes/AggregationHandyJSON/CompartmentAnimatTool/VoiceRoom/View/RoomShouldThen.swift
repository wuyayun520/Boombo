
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0xef,0xf4,0xef,0xfa,0xae,0xe9,0xf5,0xea,0xeb,0xf8,0xc0,0xaf,0xa6,0xee,0xe7,0xf9,0xa6,0xf4,0xf5,0xfa,0xa6,0xe8,0xeb,0xeb,0xf4,0xa6,0xef,0xf3,0xf6,0xf2,0xeb,0xf3,0xeb,0xf4,0xfa,0xeb,0xea]

fileprivate func placeUpright(to num: UInt8) -> UInt8 {
    let value = Int(num) - 134
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "party_mini_close" :*/
fileprivate let str_recordName:String = "parerror"
fileprivate let str_hiddenSubName:[Character] = ["_","c","l","o","s","e"]

/*: "party_mini_bg_left" :*/
fileprivate let str_tagTitle:[UInt8] = [0x57,0x46,0x55,0x53,0x5e,0x78,0x4a,0x4e,0x49,0x4e,0x78,0x45,0x40,0x78,0x4b,0x42,0x41,0x53]

private func bringHome(finish num: UInt8) -> UInt8 {
    return num ^ 39
}

/*: "party_mini_bg_right" :*/
fileprivate let str_managerValue:String = "party_count view border click"
fileprivate let str_touchData:[Character] = ["r","i","g","h","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RoomShouldThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMiniView: TalkingBaseMiniView {
class RoomShouldThen: ShowView {
    /// 悬浮窗是否在左侧
    //: private var isLeft = (LanguageManager.shared.direction == .rightToLeft)
    private var isLeft = (MeanSunLanguageManager.shared.direction == .rightToLeft)
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        recordEnd()
        //: addTapAndPanGestures()
        gestures()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{placeUpright(to: $0)}, encoding: .utf8)!)
    }

    /// 重写父类拖拽响应事件
    //: override func panGestureEvent(sender: UIPanGestureRecognizer) {
    override func courseOfAction(sender: UIPanGestureRecognizer) {
        //: super.panGestureEvent(sender: sender)
        super.courseOfAction(sender: sender)
        //: bgImgView.isHidden = true
        bgImgView.isHidden = true
        //: closeBtn.isHidden = true
        closeBtn.isHidden = true
        //: guard sender.state == .ended else { return }
        guard sender.state == .ended else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            //: self.isLeft = (self.center.x <= ScreenWidth * 0.5)
            self.isLeft = (self.center.x <= kLet_senseContent * 0.5)
            //: self.setupSubViewsConstraint()
            self.recordEnd()
        }
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: self.addSubview(img)
        self.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 20
        v.layer.cornerRadius = 20
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderColor = UIColor.white.cgColor
        //: v.layer.borderWidth = 1
        v.layer.borderWidth = 1
        //: self.addSubview(v)
        self.addSubview(v)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "party_mini_close"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_recordName.replacingOccurrences(of: "error", with: "t") + "y_mini" + String(str_hiddenSubName))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(atCurrent), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomMiniView {
extension RoomShouldThen {
    /// 构建视频小窗口
    //: static func buildLiveMiniView() -> TalkingVoiceRoomMiniView {
    static func toALesserExtent() -> RoomShouldThen {
        //: let view = TalkingVoiceRoomMiniView(frame: .zero)
        let view = RoomShouldThen(frame: .zero)
        //: let position = TalkingSocketManager.shared.partyMiniPosition
        let position = DataSocketDelegate.shared.partyMiniPosition
        //: let x = (position.x == 0) ? position.x : position.x-view.bounds.size.width
        let x = (position.x == 0) ? position.x : position.x - view.bounds.size.width
        //: var y = position.y
        var y = position.y
        //: y = max(0, y)
        y = max(0, y)
        //: y = min(ScreenHeight-view.bounds.size.height, y)
        y = min(kLet_environmentClickValue - view.bounds.size.height, y)
        //: view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        view.frame = CGRect(x: x, y: y, width: view.width, height: view.height)
        //: TalkingSocketManager.shared.containerView?.addSubview(view)
        DataSocketDelegate.shared.containerView?.addSubview(view)
        //: return view
        return view
    }

    /// 刷新直播小窗口
    //: func refreshMiniView() {
    func transfer() {
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
        //: icon.setUrlImage(urlStr: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.headPic, options: optionsInfo)
        icon.commentGesture(urlStr: StackMThen.estimated().partyModel.streamerInfo.headPic, options: optionsInfo)
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func atCurrent() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        StackMThen.estimated().chemistryLabResource()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMiniView {
extension RoomShouldThen {
    //: private func setupSubViewsConstraint() {
    private func recordEnd() {
        //: bounds = CGRect(x: 0, y: 0, width: 55, height: 70)
        bounds = CGRect(x: 0, y: 0, width: 55, height: 70)

        //: let imageStr = isLeft ? "party_mini_bg_left" : "party_mini_bg_right"
        let imageStr = isLeft ? String(bytes: str_tagTitle.map{bringHome(finish: $0)}, encoding: .utf8)! : (String(str_managerValue.prefix(6)) + "mini_bg_" + String(str_touchData))
        //: bgImgView.image = UIImage.nearCounterval(name: imageStr)
        bgImgView.image = UIImage.nearCounterval(name: imageStr)
        //: bgImgView.isHidden = false
        bgImgView.isHidden = false
        //: bgImgView.snp.remakeConstraints { make in
        bgImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: icon.snp.remakeConstraints { make in
        icon.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.right.equalTo(-3)
                make.right.equalTo(-3)
                //: } else {
            } else {
                //: make.left.equalTo(3)
                make.left.equalTo(3)
            }
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: closeBtn.isHidden = false
        closeBtn.isHidden = false
        //: closeBtn.snp.remakeConstraints { make in
        closeBtn.snp.remakeConstraints { make in
            //: if isLeft {
            if isLeft {
                //: make.left.equalTo(icon).offset(-3)
                make.left.equalTo(icon).offset(-3)
                //: } else {
            } else {
                //: make.right.equalTo(icon).offset(3)
                make.right.equalTo(icon).offset(3)
            }
            //: make.top.equalTo(icon).offset(-3)
            make.top.equalTo(icon).offset(-3)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
    }
}
