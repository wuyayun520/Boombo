
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_genderStyleData:[UInt8] = [0xa,0xd,0xa,0x17,0x4b,0x0,0xc,0x7,0x6,0x11,0x59,0x4a,0x43,0xb,0x2,0x10,0x43,0xd,0xc,0x17,0x43,0x1,0x6,0x6,0xd,0x43,0xa,0xe,0x13,0xf,0x6,0xe,0x6,0xd,0x17,0x6,0x7]

private func subKeep(shared num: UInt8) -> UInt8 {
    return num ^ 99
}

/*: "Translation" :*/
fileprivate let str_soundTitle:[Character] = ["T","r","a","n","s","l","a","t","i"]
fileprivate let str_imageName:[Character] = ["o","n"]

/*: "icon_translation_close" :*/
fileprivate let str_actionValue:String = "icon viewicon_"
fileprivate let str_layerValue:String = "ssectionti"
fileprivate let str_attentionText:[Character] = ["e"]

/*: "Send" :*/
fileprivate let str_emptyModelValue:String = "Sendstart call self data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LeadingThen.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: class TalkingTranslationResultView: UIView {
class LeadingThen: UIView {
    // 翻译结果发送Block
    //: var sendBlock: ((_ text: String) -> Void)?
    var sendBlock: ((_ text: String) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        organiseAt()
        //: setupSubViewsConstraint()
        toConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_genderStyleData.map{subKeep(shared: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 16)
        label.font = .liveAttention(type: .Medium, fontSize: 16)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.text = "Translation".localized
        label.text = (String(str_soundTitle) + String(str_imageName)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "icon_translation_close")
        let img = UIImage.nearCounterval(name: (String(str_actionValue.suffix(5)) + "tran" + str_layerValue.replacingOccurrences(of: "section", with: "la") + "on_clos" + String(str_attentionText)))
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(post), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sendBtn: UIButton = {
    private lazy var sendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn .setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_emptyModelValue.prefix(4))).localized, for: .normal)
        //: btn .setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: let size = CGSize(width: 66, height: 30)
        let size = CGSize(width: 66, height: 30)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: size), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(sendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapTo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var textView: UITextView = {
    private lazy var textView: UITextView = {
        //: let v = UITextView()
        let v = UITextView()
        //: v.font = UIFont.unprecedented(fontSize: 16)
        v.font = UIFont.unprecedented(fontSize: 16)
        //: v.textColor = .occurrence()
        v.textColor = .occurrence()
        //: v.isEditable = false
        v.isEditable = false
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTranslationResultView {
extension LeadingThen {
    /// 展示翻译结果视图
    /// - Parameter text: 翻译内容
    //: func showTranslationResultView(_ text: String) {
    func logTo(_ text: String) {
        //: guard text.count > 0 else { return }
        guard text.count > 0 else { return }
        //: self.isHidden = false
        self.isHidden = false
        //: self.textView.text = text
        self.textView.text = text
    }

    /// 关闭按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func post() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 发送按钮点击事件
    //: @objc private func sendButtonClick() {
    @objc private func snapTo() {
        //: closeButtonClick()
        post()
        //: self.sendBlock?(self.textView.text)
        self.sendBlock?(self.textView.text)
    }
}

// MARK: - Layout

//: extension TalkingTranslationResultView {
extension LeadingThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func organiseAt() {
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: self.addSubview(sendBtn)
        self.addSubview(sendBtn)
        //: self.addSubview(textView)
        self.addSubview(textView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func toConstraint() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }

        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(titleLab)
            make.centerY.equalTo(titleLab)
            //: make.size.equalTo(CGSize(width: 66, height: 30))
            make.size.equalTo(CGSize(width: 66, height: 30))
        }

        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.top.equalTo(sendBtn.snp.bottom).offset(20)
            make.top.equalTo(sendBtn.snp.bottom).offset(20)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.bottom.equalToSuperview().offset(-10-kLet_appMarginText)
            make.bottom.equalToSuperview().offset(-10 - kLet_appMarginText)
        }
    }
}
