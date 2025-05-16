
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_toName:[UInt8] = [0xfd,0xfa,0xfd,0xe0,0xbc,0xf7,0xfb,0xf0,0xf1,0xe6,0xae,0xbd,0xb4,0xfc,0xf5,0xe7,0xb4,0xfa,0xfb,0xe0,0xb4,0xf6,0xf1,0xf1,0xfa,0xb4,0xfd,0xf9,0xe4,0xf8,0xf1,0xf9,0xf1,0xfa,0xe0,0xf1,0xf0]

private func viewLab(extra num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "pic" :*/
fileprivate let str_logColorValue:String = "intimateic"

/*: "url" :*/
fileprivate let str_tableText:[Character] = ["u","r","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BridgeView.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class BridgeView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, kLet_senseContent, BridgeView.makeSource())
        //: basicUI()
        statusStop()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_toName.map{viewLab(extra: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.first
        let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.howeverFinish(urlStr: dic?[(str_logColorValue.replacingOccurrences(of: "intimate", with: "p"))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(constraintWith), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.last
        let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.howeverFinish(urlStr: dic?[(str_logColorValue.replacingOccurrences(of: "intimate", with: "p"))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(paint), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension BridgeView {
    //: @objc private func hostBtnClick() {
    @objc private func constraintWith() {
        //: let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.first
        let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.first
        //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        LeadingEqualReactiveCompatible.share.loadWith(urlStr: dic?[(String(str_tableText))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func paint() {
        //: let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.last
        let dic = WithAdministratorAppManager.share.appConfigMode.homeOpAds.last
        //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        LeadingEqualReactiveCompatible.share.loadWith(urlStr: dic?[(String(str_tableText))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension BridgeView {
    //: class func getSelfHeight() -> CGFloat {
    class func makeSource() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appConfigMode.homeOpAds.count > 1 {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue && WithAdministratorAppManager.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func statusStop() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue, WithAdministratorAppManager.share.appConfigMode.homeOpAds.count > 0 {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
