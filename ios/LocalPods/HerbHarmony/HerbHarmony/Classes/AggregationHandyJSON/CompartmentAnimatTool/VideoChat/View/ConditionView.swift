
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dataValue:[UInt8] = [0x39,0x3e,0x39,0x24,0x78,0x33,0x3f,0x34,0x35,0x22,0x6a,0x79,0x70,0x38,0x31,0x23,0x70,0x3e,0x3f,0x24,0x70,0x32,0x35,0x35,0x3e,0x70,0x39,0x3d,0x20,0x3c,0x35,0x3d,0x35,0x3e,0x24,0x35,0x34]

/*: "copywriting" :*/
fileprivate let str_showName:String = "COPYW"
fileprivate let str_roomName:String = "ritinmake"

/*: "showBullet" :*/
fileprivate let str_pointName:[Character] = ["s","h","o"]
fileprivate let str_tableEyeManagerData:[Character] = ["w","B","u","l","l","e","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConditionView.swift
//  AbroadTalking
//
//  Created by young on 2023/9/11.
//

//: import UIKit
import UIKit

//: class TalkingVideoFloatScreenView: UIView {
class ConditionView: UIView {
    // 数据
    //: private let data = JSON(WithAdministratorAppManager.share.appConfigMode.videoReport)
    private let data = JSON(WithAdministratorAppManager.share.appConfigMode.videoReport)

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        detoxicate()
        //: setupSubViewsConstraint()
        atMessage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dataValue.map{$0^80}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.unprecedented(fontSize: 12)
        lab.font = UIFont.unprecedented(fontSize: 12)
        //: lab.text = data["copywriting"].stringValue
        lab.text = data[(str_showName.lowercased() + str_roomName.replacingOccurrences(of: "make", with: "g"))].stringValue
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoFloatScreenView {
extension ConditionView {
    /// 展示飘屏动画
    //: @objc func show_animation() {
    @objc func volitionTouch() {
        //: guard self.textLab.text?.count ?? 0 > 0 else { return }
        guard self.textLab.text?.count ?? 0 > 0 else { return }
        //: guard data["showBullet"].boolValue == true else { return }
        guard data[(String(str_pointName) + String(str_tableEyeManagerData))].boolValue == true else { return }
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: var startX = ScreenWidth
        var startX = kLet_senseContent
        //: var endX = -self.frame.width
        var endX = -self.frame.width
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: startX = -self.frame.width
            startX = -self.frame.width
            //: endX = ScreenWidth
            endX = kLet_senseContent
        }
        //: self.isHidden = false
        self.isHidden = false
        //: self.frame.origin.x = startX
        self.frame.origin.x = startX
        //: let duration = (ScreenWidth+self.frame.width)*5.0/ScreenWidth
        let duration = (kLet_senseContent + self.frame.width) * 5.0 / kLet_senseContent
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
            //: self.frame.origin.x = endX
            self.frame.origin.x = endX

            //: } completion: { finish in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                //: self?.show_animation()
                self?.volitionTouch()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoFloatScreenView {
extension ConditionView {
    /// 添加视图
    //: private func setupSubviews() {
    private func detoxicate() {
        //: self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        //: self.layer.cornerRadius = 11
        self.layer.cornerRadius = 11
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.isHidden = true
        self.isHidden = true
        //: addSubview(textLab)
        addSubview(textLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func atMessage() {
        //: let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        //: self.frame = CGRect(x: ScreenWidth,
        self.frame = CGRect(x: kLet_senseContent,
                            //: y: StatusBarHeight+45,
                            y: kLet_messageContent + 45,
                            //: width: text_width+16.0,
                            width: text_width + 16.0,
                            //: height: 22)
                            height: 22)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: self.frame.origin.x = -self.frame.width
            self.frame.origin.x = -self.frame.width
        }
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
