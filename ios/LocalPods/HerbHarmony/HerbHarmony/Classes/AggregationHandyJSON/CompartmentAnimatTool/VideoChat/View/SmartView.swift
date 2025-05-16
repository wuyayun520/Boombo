
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_requestTitle:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_chat_send_nor" :*/
fileprivate let str_clearDayData:String = "bviewn"
fileprivate let str_textContent:[Character] = ["_","c","h","a","t","_","s","e","n","d","_","n","o","r"]

/*: "btn_chat_send_dis" :*/
fileprivate let str_backgroundValue:[Character] = ["b","t","n","_","c","h","a","t","_","s","e","n","d","_"]
fileprivate let str_infoData:String = "dicount"

/*: "Send" :*/
fileprivate let str_styleData:String = "Sendmake content raw name block"

/*: "Say something...     " :*/
fileprivate let str_contentValue:String = "path view equal in arraySay s"
fileprivate let str_cardName:String = "make kithing."

/*: "Can't send blank message" :*/
fileprivate let str_progressValue:[Character] = ["C","a","n","\'","t"," ","s","e"]
fileprivate let str_userValue:String = "range screen play ifnd bl"
fileprivate let str_inputData:String = "MESSAGE"

/*: "\n" :*/
fileprivate let str_behindData:String = "\n"

/*: "contentSize" :*/
fileprivate let str_sendValue:[Character] = ["c","o","n","t","e","n","t","S","i","z","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoCallInputViewDelegate: NSObject {
protocol ModelReactiveCompatible: NSObject {
    //: func func__sendTextMsg(msgStr: String)
    func makeScan(msgStr: String)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func loftinessWithoutBilge(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func mightHaveBeen(height: CGFloat)
}

//: class TalkingVideoCallInputView: UIView {
class SmartView: UIView {
    //: let textMaxLengthLimit = 255
    let textMaxLengthLimit = 255
    //: open weak var delegate: TalkingVideoCallInputViewDelegate?
    open weak var delegate: ModelReactiveCompatible?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        loadNow()
        //: setupSubViewsConstraint()
        allConstraint()
        //: bindInteraction()
        magnitudeeraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_requestTitle.reversed(), encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (str_clearDayData.replacingOccurrences(of: "view", with: "t") + String(str_textContent))), for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (str_clearDayData.replacingOccurrences(of: "view", with: "t") + String(str_textContent))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_backgroundValue) + str_infoData.replacingOccurrences(of: "count", with: "s"))), for: .disabled)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_styleData.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(observeVideoMove), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: MediaThen = {
        //: let input = InputTextView()
        let input = MediaThen()
        //: input.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        input.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.init(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 0.8)
        input.placeholderColor = UIColor(red: 153 / 255.0, green: 153 / 255.0, blue: 153 / 255.0, alpha: 0.8)
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_contentValue.suffix(5)) + "omet" + String(str_cardName.suffix(5)) + "..     ").localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.occurrence()
        input.textColor = UIColor.occurrence()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
//        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingVideoCallInputView {
extension SmartView {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func tillImageGroup() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func observeVideoMove() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.economy(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            atShow(showMsg: (String(str_progressValue) + String(str_userValue.suffix(5)) + "ank " + str_inputData.lowercased()).localized)
            //: return
            return
        }
        //: self.delegate?.func__sendTextMsg(msgStr: textstr)
        self.delegate?.makeScan(msgStr: textstr)
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        appealBoard()
    }

    //: func resignkeyBoard() {
    func appealBoard() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_contentValue.suffix(5)) + "omet" + String(str_cardName.suffix(5)) + "..     ").localized
        }
    }

    //: func func__updateInputContentView() {
    func accumulationWindow() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.mightHaveBeen(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func colorNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.loftinessWithoutBilge(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func detailTo(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
//
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.loftinessWithoutBilge(heightToBottom: 0)
    }
}

//: extension TalkingVideoCallInputView {
extension SmartView {
    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func economy(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { _, range, _ in
            //: let str = mText.attributedSubstring(from: range).string
            let str = mText.attributedSubstring(from: range).string
            //: string.append(str)
            string.append(str)
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingVideoCallInputView: UITextViewDelegate {
extension SmartView: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < textMaxLengthLimit else {
        guard string.count < textMaxLengthLimit else {
            //: return false
            return false
        }
        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            observeVideoMove()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingVideoCallInputView {
extension SmartView {
    // 添加视图
    //: private func setupSubviews() {
    private func loadNow() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func allConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func magnitudeeraction() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(colorNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(detailTo(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (String(str_sendValue))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.accumulationWindow()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
