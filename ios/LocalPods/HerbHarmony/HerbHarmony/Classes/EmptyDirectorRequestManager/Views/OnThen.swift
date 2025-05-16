
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_actualName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "nav_back_black_nor" :*/
fileprivate let str_colorData:[Character] = ["n","a","v","_","b"]
fileprivate let str_blockTargetData:String = "ack_broom self index send view"
fileprivate let str_shareGameGuardTitle:String = "else manager request make_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class SocialRankTitleView: UIView {
class OnThen: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.writeUp()
        //: self.setupSubViewsConstraint()
        self.addArcRemove()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_actualName.reversed(), encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.nearCounterval(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_colorData) + String(str_blockTargetData.prefix(5)) + "lack" + String(str_shareGameGuardTitle.suffix(4)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(roundWeight), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension OnThen {
    //: @objc func registerBackAction() {
    @objc func roundWeight() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        actionController()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension OnThen {
    //: private func setupSubviews() {
    private func writeUp() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func addArcRemove() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(kLet_messageContent)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
