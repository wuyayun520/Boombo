
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewValue:[UInt8] = [0xea,0xef,0xea,0xf5,0xa9,0xe4,0xf0,0xe5,0xe6,0xf3,0xbb,0xaa,0xa1,0xe9,0xe2,0xf4,0xa1,0xef,0xf0,0xf5,0xa1,0xe3,0xe6,0xe6,0xef,0xa1,0xea,0xee,0xf1,0xed,0xe6,0xee,0xe6,0xef,0xf5,0xe6,0xe5]

fileprivate func showBack(corner num: UInt8) -> UInt8 {
    let value = Int(num) - 129
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let str_meData:[UInt8] = [0xfc,0x12,0x18,0xc3,0x6,0x4,0x11,0xc3,0x15,0x8,0x6,0x8,0xc,0x19,0x8,0xc3,0x4,0xc3,0xa,0x12,0xf,0x7,0xc3,0x6,0x12,0xc,0x11,0x16,0xc3,0x5,0x12,0x11,0x18,0x16,0xc3,0x12,0x11,0x6,0x8,0xc3,0x4,0xc3,0x7,0x4,0x1c,0xc3,0x1a,0xb,0xc,0xf,0x8,0xc3,0x17,0xb,0x8,0xc3,0xc5,0xef,0x12,0x18,0x11,0xa,0x8,0xc3,0x13,0xf,0x18,0x16,0xc5,0xc3,0x16,0x18,0x5,0x16,0x6,0x15,0xc,0x13,0x17,0xc,0x12,0x11,0xc3,0x16,0x8,0x15,0x19,0xc,0x6,0x8,0xc3,0xc,0x16,0xc3,0x4,0x6,0x17,0xc,0x19,0x8,0xd1,0xf7,0xb,0x8,0xc3,0x17,0xc,0x10,0x8,0xc3,0x12,0x9,0xc3,0x17,0xb,0x8,0xc3,0x7,0x4,0xc,0xf,0x1c,0xc3,0xa,0x12,0xf,0x7,0xc3,0x6,0x12,0xc,0x11,0x16,0xc3,0x1a,0xc,0xf,0xf,0xc3,0x5,0x8,0xc3,0x5,0x4,0x16,0x8,0x7,0xc3,0x12,0x11,0xc3,0x17,0xb,0x8,0xc3,0xf8,0xf6,0xc3,0xe8,0x4,0x16,0x17,0x8,0x15,0x11,0xc3,0xf7,0xc,0x10,0x8,0xc3,0xfd,0x12,0x11,0x8,0xd1]

fileprivate func actualModel(numb num: UInt8) -> UInt8 {
    let value = Int(num) - 163
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowCounteractionReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class ShowCounteractionReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewValue.map{showBack(corner: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.recordTo()
        //: self.setupSubViewsConstraint()
        self.toSlide()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.corners(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = String(bytes: str_meData.map{actualModel(numb: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.textColor = UIColor.inexpensiveness()
        lab.textColor = UIColor.inexpensiveness()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension ShowCounteractionReusableView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func starkness() -> CGFloat {
        //: if WithAdministratorAppManager.share.loginUserMode.isSignIn {
        if WithAdministratorAppManager.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension ShowCounteractionReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func recordTo() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func toSlide() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
