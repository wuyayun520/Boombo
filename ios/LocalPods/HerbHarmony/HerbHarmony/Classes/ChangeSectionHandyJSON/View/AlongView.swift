
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_minTitle:[UInt8] = [0xc1,0xc6,0xc1,0xdc,0x80,0xcb,0xc7,0xcc,0xcd,0xda,0x92,0x81,0x88,0xc0,0xc9,0xdb,0x88,0xc6,0xc7,0xdc,0x88,0xca,0xcd,0xcd,0xc6,0x88,0xc1,0xc5,0xd8,0xc4,0xcd,0xc5,0xcd,0xc6,0xdc,0xcd,0xcc]

private func transportApp(video num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "What would you like to share with others? (Free)" :*/
fileprivate let str_fileText:[UInt8] = [0x29,0x65,0x65,0x72,0x46,0x28,0x20,0x3f,0x73,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x74,0x69,0x77,0x20,0x65,0x72,0x61,0x68,0x73,0x20,0x6f,0x74,0x20,0x65,0x6b,0x69,0x6c,0x20,0x75,0x6f,0x79,0x20,0x64,0x6c,0x75,0x6f,0x77,0x20,0x74,0x61,0x68,0x57]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

// 限制长度
//: let kFreeTextLengthLimit = 300
let kLet_imageValue = 300

//: class FreeCollectionHeaderView: UICollectionReusableView {
class AlongView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_minTitle.map{transportApp(video: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        populate()
        //: setupSubViewsConstraint()
        taproom()
    }

    // MARK: - Lazy load

    //: lazy var textView: YYTextView = {
    lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.occurrence()
        tv.textColor = UIColor.occurrence()
        //: tv.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        tv.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: tv.placeholderText = "What would you like to share with others? (Free)".localized
        tv.placeholderText = String(bytes: str_fileText.reversed(), encoding: .utf8)!.localized
        //: tv.placeholderFont = UIFont.liveAttention(type: .Regular, fontSize: 15)
        tv.placeholderFont = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: tv.placeholderTextColor = UIColor.inexpensiveness()
        tv.placeholderTextColor = UIColor.inexpensiveness()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - YYTextViewDelegate

//: extension FreeCollectionHeaderView: YYTextViewDelegate {
extension AlongView: YYTextViewDelegate {
    //: func textView(_ textView: YYTextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: YYTextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < kFreeTextLengthLimit else {
        guard string.count < kLet_imageValue else {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionHeaderView {
extension AlongView {
    // 添加视图
    //: private func setupSubviews() {
    private func populate() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(textView)
        backView.addSubview(textView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func taproom() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
