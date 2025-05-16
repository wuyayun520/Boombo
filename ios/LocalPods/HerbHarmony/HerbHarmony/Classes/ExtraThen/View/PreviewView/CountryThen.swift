
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_hiddenColorData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "nav_back_black_nor" :*/
fileprivate let str_userAddTitle:[Character] = ["n","a","v","_","b","a","c","k","_","b","l"]
fileprivate let str_toData:[Character] = ["a"]
fileprivate let str_closeName:[Character] = ["c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountryThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TPreviewNaviBarView: UIView {
class CountryThen: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.appSubviews()
        //: self.setupSubViewsConstraint()
        self.neighbor()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_hiddenColorData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(str_userAddTitle) + String(str_toData) + String(str_closeName)))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(shadowView), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension CountryThen {
    //: @objc func registerBackAction() {
    @objc func shadowView() {
        //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        LeadingEqualReactiveCompatible.share.getEqualVc()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func colorAction() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func streamHandle() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension CountryThen {
    //: private func setupSubviews() {
    private func appSubviews() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func neighbor() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: kLet_indexText))
        }
    }
}
