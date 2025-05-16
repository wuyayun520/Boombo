
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_backgroundText:[UInt8] = [0xdd,0xda,0xdd,0xc0,0x9c,0xd7,0xdb,0xd0,0xd1,0xc6,0x8e,0x9d,0x94,0xdc,0xd5,0xc7,0x94,0xda,0xdb,0xc0,0x94,0xd6,0xd1,0xd1,0xda,0x94,0xdd,0xd9,0xc4,0xd8,0xd1,0xd9,0xd1,0xda,0xc0,0xd1,0xd0]

private func postMake(kind num: UInt8) -> UInt8 {
    return num ^ 180
}

/*: "icon_translation" :*/
fileprivate let str_viewText:String = "icon_tview return"
fileprivate let str_coverTitle:String = "apption"

/*: "English" :*/
fileprivate let str_nameContent:String = "Enmodel index bottom let"
fileprivate let str_rawValue:[Character] = ["g","l","i","s","h"]

/*: "icon_translation_go" :*/
fileprivate let str_viewTitle:[Character] = ["i","c","o","n","_","t","r"]
fileprivate let str_yourName:String = "ansnormal"
fileprivate let str_arrayName:String = "style var make sourcen_go"

/*: "Trans" :*/
fileprivate let str_backgroundManagerData:String = "leading styleTrans"

/*: "targetText" :*/
fileprivate let str_toolName:String = "tasize"
fileprivate let str_titleLeadingUserValue:String = "getTextreturn share model from"

/*: "en" :*/
fileprivate let str_mediumShareData:String = "image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelTranslationView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import UIKit
import UIKit

//: import NaturalLanguage
import NaturalLanguage

//: class TalkingSelectTranslationView: UIView {
class ModelTranslationView: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        setupWithinSubviews()
        //: setupSubViewsConstraint()
        cellSubConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_backgroundText.map{postMake(kind: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_viewText.prefix(6)) + "ransl" + str_coverTitle.replacingOccurrences(of: "app", with: "a"))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(str_nameContent.prefix(2)) + String(str_rawValue)).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: let image = UIImage.nearCounterval(name: "icon_translation_go").withTintColor(.alright())
        let image = UIImage.nearCounterval(name: (String(str_viewTitle) + str_yourName.replacingOccurrences(of: "normal", with: "l") + "atio" + String(str_arrayName.suffix(4)))).withTintColor(.alright())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.alright(), for: .normal)
        btn.setTitleColor(UIColor.alright(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(str_backgroundManagerData.suffix(5))).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapTransButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension ModelTranslationView {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func imageText() {
        //: BridgeReactiveCompatible.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        BridgeReactiveCompatible.translateUponCompletion(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(str_toolName.replacingOccurrences(of: "size", with: "r") + String(str_titleLeadingUserValue.prefix(7)))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension ModelTranslationView {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func filter(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func snapTransButton() {
        //: self.req_translateText()
        self.imageText()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension ModelTranslationView {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupWithinSubviews() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cellSubConstraint() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
