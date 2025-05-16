
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_theMakeValue:[UInt8] = [0x50,0x57,0x50,0x4d,0x11,0x5a,0x56,0x5d,0x5c,0x4b,0x3,0x10,0x19,0x51,0x58,0x4a,0x19,0x57,0x56,0x4d,0x19,0x5b,0x5c,0x5c,0x57,0x19,0x50,0x54,0x49,0x55,0x5c,0x54,0x5c,0x57,0x4d,0x5c,0x5d]

private func mediumReload(angle num: UInt8) -> UInt8 {
    return num ^ 57
}

/*: "Video processing" :*/
fileprivate let str_useData:[Character] = ["V","i","d","e","o"," ","p","r","o","c","e","s","s","i","n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ClearProgressView.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import UIKit
import UIKit

//: class TalkingMomentCircleProgressView: UIView {
class ClearProgressView: UIView {
    //: var progress: CGFloat = 0.0 {
    var progress: CGFloat = 0.0 {
        //: willSet {
        willSet {
            //: self.progressView.updatePercent(percent: newValue)
            self.progressView.confinement(percent: newValue)
        }
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.5)
        self.backgroundColor = UIColor.equalRgba(0, 0, 0, 0.5)
        //: self.layer.cornerRadius = 12
        self.layer.cornerRadius = 12
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true

        //: setupSubviews()
        setupInSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_theMakeValue.map{mediumReload(angle: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var label: UILabel = {
    private lazy var label: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.text = "Video processing".localized
        lab.text = (String(str_useData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var progressView: TalkingCircleProgressView = {
    private lazy var progressView: MakeThen = {
        //: let v = TalkingCircleProgressView()
        let v = MakeThen()
        //: v.backgroundColor = .clear
        v.backgroundColor = .clear
        //: v.strokeColor = UIColor.RGBA(255, 255, 255, 1.0)
        v.strokeColor = UIColor.equalRgba(255, 255, 255, 1.0)
        //: v.circleBgColor = UIColor.RGBA(255, 255, 255, 0.2)
        v.circleBgColor = UIColor.equalRgba(255, 255, 255, 0.2)
        //: v.strokeWidth = 4.0
        v.strokeWidth = 4.0
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentCircleProgressView {
extension ClearProgressView {
    /// 展示视图
    //: func show(superView: UIView?) {
    func towardMakeView(superView: UIView?) {
        //: var view = superView
        var view = superView
        //: if view == nil {
        if view == nil {
            //: view = IconThen.getWindow()
            view = IconThen.getBind()
        }
        //: guard view != nil else { return }
        guard view != nil else { return }
        //: self.center = view!.center
        self.center = view!.center
        //: view!.addSubview(self)
        view!.addSubview(self)
        //: setupSubViewsConstraint()
        all()
    }
}

// MARK: - Layout

//: extension TalkingMomentCircleProgressView {
extension ClearProgressView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupInSubviews() {
        //: self.addSubview(label)
        self.addSubview(label)
        //: self.addSubview(progressView)
        self.addSubview(progressView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func all() {
        //: progressView.snp.makeConstraints { make in
        progressView.snp.makeConstraints { make in
            //: make.center.equalTo(self)
            make.center.equalTo(self)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }

        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.bottom.equalTo(-6)
            make.bottom.equalTo(-6)
        }
    }
}
