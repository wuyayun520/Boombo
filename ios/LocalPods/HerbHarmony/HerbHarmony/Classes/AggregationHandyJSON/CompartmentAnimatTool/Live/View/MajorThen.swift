
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_dateCurrentValue:[UInt8] = [0x1d,0x1a,0x1d,0x0,0x5c,0x17,0x1b,0x10,0x11,0x6,0x4e,0x5d,0x54,0x1c,0x15,0x7,0x54,0x1a,0x1b,0x0,0x54,0x16,0x11,0x11,0x1a,0x54,0x1d,0x19,0x4,0x18,0x11,0x19,0x11,0x1a,0x0,0x11,0x10]

private func colorBeautyCell(background num: UInt8) -> UInt8 {
    return num ^ 116
}

/*: "btn_chat_send_nor" :*/
fileprivate let str_mediaData:String = "table titlebtn_ch"
fileprivate let str_succeedViewData:[Character] = ["_","n","o","r"]

/*: "btn_chat_send_dis" :*/
fileprivate let str_tipName:String = "cancel send tab for viewbtn_"
fileprivate let str_gestureSectionCountValue:String = "point let selfend_d"
fileprivate let str_popText:String = "colors"

/*: "Send" :*/
fileprivate let str_meContainerName:[Character] = ["S","e","n","d"]

/*: "Say something...     " :*/
fileprivate let str_toShowName:[Character] = ["S","a","y"," ","s"]
fileprivate let str_dataName:[Character] = ["o","m","e","t","h","i","n","g",".",".","."," "," "," "," "," "]

/*: "Can't send blank message" :*/
fileprivate let str_innerData:String = "Can\'"
fileprivate let str_contentValue:String = "d bltype height height available"
fileprivate let str_toValue:String = "messadetaile"

/*: "uid" :*/
fileprivate let str_panRetainValue:[UInt8] = [0x5a,0x4e,0x49]

fileprivate func abstractEntity(text num: UInt8) -> UInt8 {
    let value = Int(num) + 27
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "name" :*/
fileprivate let str_greenText:String = "NAME"

/*: "@ :*/
fileprivate let str_userNoData:[Character] = ["@"]

/*:  " :*/
fileprivate let str_describeName:String = "layer"

/*: "length" :*/
fileprivate let str_priceName:String = "LENGTH"

/*: "<at>@ :*/
fileprivate let str_kindName:String = "<at>@selected self top"

/*: </at> " :*/
fileprivate let str_colorText:String = "path view self make</at> "

/*: "\n" :*/
fileprivate let str_toolData:String = "\n"

/*: "contentSize" :*/
fileprivate let str_actionText:String = "ctextt"
fileprivate let str_quoteTitle:[Character] = ["i","z","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MajorThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingLiveRoomInputViewDelegate: NSObject {
protocol CleanReactiveCompatible: NSObject {
    //: func func__sendTextMsg(msgStr: String, atUid: String?)
    func makeEqual(msgStr: String, atUid: String?)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func removeBottom(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func plot(height: CGFloat)
}

//: class TalkingLiveRoomInputView: UIView {
class MajorThen: UIView {
    //: open weak var delegate: TalkingLiveRoomInputViewDelegate?
    open weak var delegate: CleanReactiveCompatible?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    //: private var atDic: [String: Any]?
    private var atDic: [String: Any]?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupRequest()
        //: setupSubViewsConstraint()
        contentConstraint()
        //: bindInteraction()
        love()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_dateCurrentValue.map{colorBeautyCell(background: $0)}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_mediaData.suffix(6)) + "at_send" + String(str_succeedViewData))), for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_mediaData.suffix(6)) + "at_send" + String(str_succeedViewData))), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_tipName.suffix(4)) + "chat_s" + String(str_gestureSectionCountValue.suffix(5)) + str_popText.replacingOccurrences(of: "color", with: "i"))), for: .disabled)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorUp), for: .touchUpInside)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(str_meContainerName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
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
        //: input.placeholderColor = UIColor.inexpensiveness()
        input.placeholderColor = UIColor.inexpensiveness()
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(str_toShowName) + String(str_dataName)).localized
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
        //: input.layer.cornerRadius = 5
        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingLiveRoomInputView {
extension MajorThen {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func readFlushPlaceholder() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func colorUp() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.divert(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            atShow(showMsg: (str_innerData + "t sen" + String(str_contentValue.prefix(4)) + "ank " + str_toValue.replacingOccurrences(of: "detail", with: "g")).localized)
            //: return
            return
        }
        //: let atStr: String = atDic?["uid"] as? String ?? ""
        let atStr: String = atDic?[String(bytes: str_panRetainValue.map{abstractEntity(text: $0)}, encoding: .utf8)!] as? String ?? ""
        //: self.delegate?.func__sendTextMsg(msgStr: textstr, atUid: atStr)
        self.delegate?.makeEqual(msgStr: textstr, atUid: atStr)
        //: atDic = nil
        atDic = nil
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        aircraft()
    }

    //: func resignkeyBoard() {
    func aircraft() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(str_toShowName) + String(str_dataName)).localized
        }
    }

    //: func func__updateInputContentView() {
    func equalView() {
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
        self.delegate?.plot(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func clickTitle(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.removeBottom(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func liveNotification(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
        //: atDic = nil
        atDic = nil
        //: inputTextView.attributedText = nil
        inputTextView.attributedText = nil
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.removeBottom(heightToBottom: 0)
    }

    //: func callUserText(toUid: String, nickName: String) {
    func radiogram(toUid: String, nickName: String) {
        //: updatePlaceholder()
        readFlushPlaceholder()
        //: atDic = ["uid": toUid, "name": nickName]
        atDic = [String(bytes: str_panRetainValue.map{abstractEntity(text: $0)}, encoding: .utf8)!: toUid, (str_greenText.lowercased()): nickName]
        //: self.receiveAtInfotoUser(range: nil, dict: atDic!)
        self.removeAcross(range: nil, dict: atDic!)
    }
}

//: extension TalkingLiveRoomInputView {
extension MajorThen {
    /// 替换@ 消息为富文本
    //: func receiveAtInfotoUser(range: NSRange?, dict: [String: Any]) {
    func removeAcross(range: NSRange?, dict: [String: Any]) {
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
                //: atRange!.location -= 1
                atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "") "
        let atStr = "@\(dict[(str_greenText.lowercased())] ?? "") "
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.equalRgba(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = MiniClickNameAttachment()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(str_priceName.lowercased())] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func divert(text: NSAttributedString?) -> String {
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
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
            //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
            let atta = attrs[NSAttributedString.Key.attachment] as? MiniClickNameAttachment
            //: if atta != nil && range.length == 1 {
            if atta != nil && range.length == 1 {
                //: if let name = atta!.atInfo["name"] {
                if let name = atta!.atInfo[(str_greenText.lowercased())] {
                    //: let str = "<at>@\(name)</at> "
                    let str = "<at>@\(name)</at> "
                    //: string.append(str)
                    string.append(str)
                }
                //: } else {
            } else {
                //: let str = mText.attributedSubstring(from: range).string
                let str = mText.attributedSubstring(from: range).string
                //: string.append(str)
                string.append(str)
            }
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingLiveRoomInputView: UITextViewDelegate {
extension MajorThen: UITextViewDelegate {
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
        //: if textView.text.count == 0 {
        if textView.text.count == 0 {
            //: atDic = nil
            atDic = nil
        }
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            colorUp()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingLiveRoomInputView {
extension MajorThen {
    // 添加视图
    //: private func setupSubviews() {
    private func setupRequest() {
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
    private func contentConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
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
    private func love() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clickTitle(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(liveNotification(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (str_actionText.replacingOccurrences(of: "text", with: "on") + "entS" + String(str_quoteTitle))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.equalView()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
