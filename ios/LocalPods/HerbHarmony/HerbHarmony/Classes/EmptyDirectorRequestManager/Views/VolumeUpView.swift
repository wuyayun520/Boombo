
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_labelData:[UInt8] = [0x3c,0x41,0x3c,0x47,0xfb,0x36,0x42,0x37,0x38,0x45,0xd,0xfc,0xf3,0x3b,0x34,0x46,0xf3,0x41,0x42,0x47,0xf3,0x35,0x38,0x38,0x41,0xf3,0x3c,0x40,0x43,0x3f,0x38,0x40,0x38,0x41,0x47,0x38,0x37]

fileprivate func upAdd(from num: UInt8) -> UInt8 {
    let value = Int(num) - 211
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "iv_Guidance" :*/
fileprivate let str_hideValue:String = "iv_Gugift sound cookie target"
fileprivate let str_modelValue:[Character] = ["e"]

/*: "Click to view" :*/
fileprivate let str_stageText:[Character] = ["C","l","i","c","k"," ","t","o"," "]
fileprivate let str_makeText:String = "vimanager"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VolumeUpView.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingNewGuidancePopUpView: UIView {
class VolumeUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.roomAll()
        //: self.setupSubViewsConstraint()
        self.bridge()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_labelData.map{upAdd(from: $0)}, encoding: .utf8)!)
    }

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "iv_Guidance")
        iamg.image = UIImage.nearCounterval(name: (String(str_hideValue.prefix(5)) + "idanc" + String(str_modelValue)))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var clickToViewBtn: UIButton = {
    private lazy var clickToViewBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Click to view".localized, for: .normal)
        btn.setTitle((String(str_stageText) + str_makeText.replacingOccurrences(of: "manager", with: "ew")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(clickToViewButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(straddle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingNewGuidancePopUpView {
extension VolumeUpView {
    //: @objc func clickToViewButtonEvent() {
    @objc func straddle() {
        //: self.dismiss()
        self.colour()
        //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .TaskCenter)
        LeadingEqualReactiveCompatible.share.enableLine(webViewType: .TaskCenter)
    }

    //: func show() {
    func messageModel() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func colour() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: if let touch = touches.first {
        if let touch = touches.first {
            //: let location = touch.location(in: self)
            let location = touch.location(in: self)
            //: if !contentView.frame.contains(location) {
            if !contentView.frame.contains(location) {
                //: dismiss()
                colour()
            }
        }
    }
}

//: extension TalkingNewGuidancePopUpView {
extension VolumeUpView {
    //: private func setupSubviews() {
    private func roomAll() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(clickToViewBtn)
        contentView.addSubview(clickToViewBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func bridge() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 325)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 325)))
        }

        //: clickToViewBtn.snp.makeConstraints { make in
        clickToViewBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(contentView).offset(-18)
            make.bottom.equalTo(contentView).offset(-18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
