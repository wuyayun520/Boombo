
//: Declare String Begin

/*: "btn_talk_voice_nor" :*/
fileprivate let str_makeValueName:String = "btn_tplay main data view"
fileprivate let str_mData:String = "cell make voice self makece_nor"

/*: "btn_talk_voice_pre" :*/
fileprivate let str_viewColorText:String = "tee fatal scale height itembtn_t"
fileprivate let str_onTitle:String = "agesture"
fileprivate let str_viewTitle:String = "_voicetitle with add for application"

/*: "contentSize" :*/
fileprivate let str_infoName:String = "conproducte"
fileprivate let str_numberText:String = "model"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0xec,0xeb,0xec,0xf1,0xad,0xe6,0xea,0xe1,0xe0,0xf7,0xbf,0xac,0xa5,0xed,0xe4,0xf6,0xa5,0xeb,0xea,0xf1,0xa5,0xe7,0xe0,0xe0,0xeb,0xa5,0xec,0xe8,0xf5,0xe9,0xe0,0xe8,0xe0,0xeb,0xf1,0xe0,0xe1]

/*: "btn_talk_more_photo_nor" :*/
fileprivate let str_reportCellData:String = "path model video letbtn_ta"
fileprivate let str_pointData:String = "ore_pindex right self social"

/*: "btn_news_shotVideo_nor" :*/
fileprivate let str_infoData:String = "item else hiddenbtn_new"
fileprivate let str_modelText:String = "s_shoplayer print main"
fileprivate let str_freeTitle:[Character] = ["t","V","i","d","e","o","_","n","o","r"]

/*: "btn_news_video_nor" :*/
fileprivate let str_toGroupText:String = "btn_nview in any"
fileprivate let str_pathData:String = "idecolor"

/*: "btn_talk_map_nor" :*/
fileprivate let str_fileText:[Character] = ["b","t","n","_","t","a","l"]
fileprivate let str_makeAddContent:[Character] = ["k","_","m","a","p","_","n","o","r"]

/*: "btn_talk_gift_nor" :*/
fileprivate let str_equalName:String = "if interval type varbtn_ta"
fileprivate let str_errorData:String = "lk_ginside pop view any index"

/*: "btn_more_game_nor" :*/
fileprivate let str_makeVideoName:String = "air spring send loadbtn_m"
fileprivate let str_adTitle:[Character] = ["m","e","_","n","o","r"]

/*: "F5F5F5" :*/
fileprivate let str_keyValue:String = "FnearFnearFnear"

/*: "btn_talk_send_pre" :*/
fileprivate let str_statusTimeText:String = "any attention tobtn_ta"
fileprivate let str_removeData:String = "end_prenone player empty"

/*: "btn_talk_send_nor" :*/
fileprivate let str_blueData:String = "country"
fileprivate let str_messageSizeValue:String = "tn_tgift name nor view"
fileprivate let str_stackName:String = "with else namesend_nor"

/*: "#EBEBEB" :*/
fileprivate let str_appName:String = "#EBEBEBdata first call"

/*: "#999999" :*/
fileprivate let str_iconName:String = "#devicedevice"
fileprivate let str_removeValue:String = "99"

/*: "Type a message…" :*/
fileprivate let str_insideTitle:[Character] = ["T","y","p","e"," ","a"," ","m"]
fileprivate let str_actionActualData:[Character] = ["e","s","s","a","g","e","…"]

/*: "Hold to talk" :*/
fileprivate let str_effectName:[Character] = ["H","o","l","d"," ","t","o"," ","t","a","l"]
fileprivate let str_nameValue:[Character] = ["k"]

/*: "#DDDDDD" :*/
fileprivate let str_viewData:[Character] = ["#","D","D","D","D"]
fileprivate let str_colorContent:[Character] = ["D","D"]

/*: "A maximum of 10 people can be @ one message" :*/
fileprivate let str_layerData:[UInt8] = [0xff,0x9e,0xd3,0xdf,0xc6,0xd7,0xd3,0xcb,0xd3,0x9e,0xd1,0xd8,0x9e,0x8f,0x8e,0x9e,0xce,0xdb,0xd1,0xce,0xd2,0xdb,0x9e,0xdd,0xdf,0xd0,0x9e,0xdc,0xdb,0x9e,0xfe,0x9e,0xd1,0xd0,0xdb,0x9e,0xd3,0xdb,0xcd,0xcd,0xdf,0xd9,0xdb]

private func indexTable(title num: UInt8) -> UInt8 {
    return num ^ 190
}

/*: "@ :*/
fileprivate let str_dropEqualTitle:[Character] = ["@"]

/*: "name" :*/
fileprivate let str_timeText:String = "NAME"

/*: "length" :*/
fileprivate let str_messageKeyData:[Character] = ["l","e","n","g","t","h"]

/*: "<at>@ :*/
fileprivate let str_valueAddCountTitle:String = "you the right<at>@"

/*: </at> " :*/
fileprivate let str_birthSizeLetData:[Character] = ["<","/","a","t",">"," "]

/*: "uid" :*/
fileprivate let str_tableModelData:[Character] = ["u","i","d"]

/*: "btn_talk_keyboard_nor" :*/
fileprivate let str_noData:String = "btn_taimage string back"
fileprivate let str_managerValue:String = "etotalbo"
fileprivate let str_succeedValue:String = "R"

/*: "btn_talk_keyboard_pre" :*/
fileprivate let str_priceValue:String = "then self center timebtn_"
fileprivate let str_timeViewValue:String = "kesend"
fileprivate let str_oneTitle:String = "_prefalse copy print"

/*: "wav" :*/
fileprivate let str_leadingName:String = "whitev"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonCellView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/5.
//

//: import UIKit
import UIKit

//: import StoreKit
import StoreKit

/// 聊天类型
//: enum InputViewType {
enum RoomViewType {
    //: case PrivateChat
    case PrivateChat // 私聊
    //: case GroupChat
    case GroupChat // 群聊
    //: case CustomerChat
    case CustomerChat // 客服
    //: case LiveRoom
    case LiveRoom // 直播间
}

//: enum MoreActionType: Int {
enum ShouldMirrorPath: Int {
    //: case Photo        = 0
    case Photo = 0
    //: case VideoCall
    case VideoCall
    //: case ShortVideo
    case ShortVideo
    //: case Location
    case Location
    //: case Gift
    case Gift
    //: case Game
    case Game
}

//: protocol ChatInputViewDelegate: NSObject {
protocol ContentViewDelegate: NSObject {
    //: func func__sendTextMsg(msgStr: String, quoteModel: AbTalkingChatMsgQuoteModel?)
    func colorModel(msgStr: String, quoteModel: PathModel?)

    //: func func__selectMoreFunAction(actionType: MoreActionType)
    func saveer(actionType: ShouldMirrorPath)

    /// 发送礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String)
    func nameNum(giftModel: GiftSectionModelType, giftNum: String)

    /// 索要礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    //: func func__askforGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String)
    func beforeChecked(giftModel: GiftSectionModelType, giftNum: String)

    /// 聊天室发送礼物
    /// - Parameters:
    ///   - giftModel: 礼物模型
    ///   - giftNum: 礼物数量
    ///   - model: 聊天室成员信息
    //: func func__sendChatRoomGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String, model: TalkingChatRoomMemberModel)
    func quantityeraction(giftModel: GiftSectionModelType, giftNum: String, model: PopScaleReactiveCompatible)

    //: func func__sendVoiceMsg(voicePath: String, voiceTime: Int)
    func success(voicePath: String, voiceTime: Int)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func beforeConstraint(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func inputPricePlay(height: CGFloat)

    //: func func__starRecordBtnDown()
    func noBackground()

    /// 群聊@
    //: func func__selectMentionUser(range: NSRange)
    func mention(range: NSRange)

    /// 输入框输入内容停顿超过1秒
    //: func func_inputContentIntervalOneSecond()
    func sizeTo()
}

//: class TalkingChatInputView: UIView {
class ButtonCellView: UIView {
    //: open weak var delegate: ChatInputViewDelegate?
    open weak var delegate: ContentViewDelegate?
    //: open var inputStyle: InputViewType = .PrivateChat
    open var inputStyle: RoomViewType = .PrivateChat
    //: open var recordView: TalkingChatRecordView?
    open var recordView: UserThen?

    //: open var quoteModel: AbTalkingChatMsgQuoteModel? {
    open var quoteModel: PathModel? {
        //: didSet {
        didSet {
            //: if let tempModel = quoteModel {
            if let tempModel = quoteModel {
                //: self.quoteView.isHidden = false
                self.quoteView.isHidden = false
                //: self.quoteView.quoteModel = tempModel
                self.quoteView.quoteModel = tempModel
                //: self.inputTextView.becomeFirstResponder()
                self.inputTextView.becomeFirstResponder()

                //: self.voiceBtn.setImage(UIImage.nearCounterval(name: "btn_talk_voice_nor"), for: .normal)
                self.voiceBtn.setImage(UIImage.nearCounterval(name: (String(str_makeValueName.prefix(5)) + "alk_voi" + String(str_mData.suffix(6)))), for: .normal)
                //: self.voiceBtn.setImage(UIImage.nearCounterval(name: "btn_talk_voice_pre"), for: .highlighted)
                self.voiceBtn.setImage(UIImage.nearCounterval(name: (String(str_viewColorText.suffix(5)) + str_onTitle.replacingOccurrences(of: "gesture", with: "lk") + String(str_viewTitle.prefix(6)) + "_pre")), for: .highlighted)
                //: self.recordButton.isHidden = true
                self.recordButton.isHidden = true
                //: self.inputTextView.becomeFirstResponder()
                self.inputTextView.becomeFirstResponder()

                //: }else{
            } else {
                //: self.quoteView.isHidden = true
                self.quoteView.isHidden = true
            }
        }
    }

    /** 界面高度 */
    //: let BackViewHeight = 98 + kLet_appMarginText
    let BackViewHeight = 98 + kLet_appMarginText

    /** 输入框界面高度 */
    //: let InputViewHeight = 40
    let InputViewHeight = 40

    /** 间隙 */
    //: let InputViewPadingHeight = 10
    let InputViewPadingHeight = 10

    /** 录音最大时长 */
    //: let RecordMaxDuration = 30.0
    let RecordMaxDuration = 30.0
    // 群聊@ 消息
    //: var atArr = [String]()
    var atArr = [String]()

    //: var recorder: AVAudioRecorder?
    var recorder: AVAudioRecorder?
    //: var recordStartTime: NSDate = NSDate.init()
    var recordStartTime: NSDate = .init()
    //: var recordTimer: Timer?
    var recordTimer: Timer?
    //: var duration: Int = 0
    var duration: Int = 0

    //: var chatRoomID = ""
    var chatRoomID = ""

    //: var showOtherInputView = false
    var showOtherInputView = false

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    /// 输入框文本长度限制
    //: private let chatlimitCount = 300
    private let chatlimitCount = 300

    //: init(type: InputViewType) {
    init(type: RoomViewType) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.inputStyle = type
        self.inputStyle = type

        //: customUI()
        busyUserUi()
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(angleNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(gestureTitle(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (str_infoName.replacingOccurrences(of: "product", with: "t") + "ntSi" + str_numberText.replacingOccurrences(of: "model", with: "ze"))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.accept()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: inputTextView.rx.text.orEmpty.subscribe(onNext: { [weak self] in
        inputTextView.rx.text.orEmpty.subscribe(onNext: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if $0.utf16.count > self.chatlimitCount {
            if $0.utf16.count > self.chatlimitCount {
                //: let selectedRange = self.inputTextView.markedTextRange
                let selectedRange = self.inputTextView.markedTextRange
                // 没有在拼写状态再判断
                //: if selectedRange == nil {
                if selectedRange == nil {
                    // 通过字符串截取实现限制100字符长度
                    //: self.inputTextView.text = ($0 as NSString).substring(to: self.chatlimitCount)
                    self.inputTextView.text = ($0 as NSString).substring(to: self.chatlimitCount)
                }
            }

            // 检测是否需要展示翻译
            //: if $0.utf16.count <= 0 {
            if $0.utf16.count <= 0 { // 当输入框为空时，立即调用
                //: self.interval_checkInputContent()
                self.duringFrom()
                //: self.sendBtn.isSelected = false
                self.sendBtn.isSelected = false
                //: } else {
            } else {
                //: self.interval_cancelPreviousPerformRequest()
                self.query()
                //: self.interval_startPerformRequest()
                self.statusUser()
                //: self.sendBtn.isSelected = true
                self.sendBtn.isSelected = true
            }

            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: bindAction()
        sawLog()
        //: initMoreBtnView()
        assemblage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.map{$0^133}, encoding: .utf8)!)
    }

    //: private func customUI () {
    private func busyUserUi() {
        //: backgroundColor = .white
        backgroundColor = .white
        //: if inputStyle == .PrivateChat {
        if inputStyle == .PrivateChat {
            //: voiceBtn.snp.makeConstraints { make in
            voiceBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(self).offset(8)
                make.leading.equalTo(self).offset(8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }

            //: quoteView.snp.makeConstraints { make in
            quoteView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(0)
                make.top.equalTo(self).offset(0)
                //: make.leading.equalTo(8)
                make.leading.equalTo(8)
                //: make.trailing.equalTo(-8)
                make.trailing.equalTo(-8)
                //: make.height.equalTo(0)
                make.height.equalTo(0)
            }

            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(quoteView.snp.bottom).offset(8)
                make.top.equalTo(quoteView.snp.bottom).offset(8)
                //: make.leading.equalTo(voiceBtn.snp.trailing).offset(8)
                make.leading.equalTo(voiceBtn.snp.trailing).offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }

            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kLet_appMarginText)
                make.bottom.equalTo(-kLet_appMarginText)
            }
            //: recordButton.snp.makeConstraints { make in
            recordButton.snp.makeConstraints { make in
                //: make.edges.equalTo(contentView)
                make.edges.equalTo(contentView)
            }

            //: } else if inputStyle == .GroupChat {
        } else if inputStyle == .GroupChat {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.leading.top.equalTo(self).offset(8)
                make.leading.top.equalTo(self).offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-8)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kLet_appMarginText)
                make.bottom.equalTo(-kLet_appMarginText)
            }
            //: recordButton.snp.makeConstraints { make in
            recordButton.snp.makeConstraints { make in
                //: make.edges.equalTo(contentView)
                make.edges.equalTo(contentView)
            }
            //: } else if inputStyle == .CustomerChat {
        } else if inputStyle == .CustomerChat {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(8)
                make.top.equalTo(self).offset(8)
                //: make.leading.equalToSuperview().offset(8)
                make.leading.equalToSuperview().offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kLet_appMarginText)
                make.bottom.equalTo(-kLet_appMarginText)
            }
            //: }else if inputStyle == .LiveRoom {
        } else if inputStyle == .LiveRoom {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(self.snp.trailing).offset(-8)
                make.trailing.equalTo(self.snp.trailing).offset(-8)
                //: make.centerY.equalTo(contentView)
                make.centerY.equalTo(contentView)
                //: make.width.height.equalTo(26)
                make.width.height.equalTo(26)
            }
            //: quoteView.snp.makeConstraints { make in
            quoteView.snp.makeConstraints { make in
                //: make.top.equalTo(self).offset(0)
                make.top.equalTo(self).offset(0)

                //: make.leading.equalTo(8)
                make.leading.equalTo(8)
                //: make.trailing.equalTo(-8)
                make.trailing.equalTo(-8)
                //: make.height.equalTo(0)
                make.height.equalTo(0)
            }
            //: contentView.snp.makeConstraints { make in
            contentView.snp.makeConstraints { make in
                //: make.top.equalTo(quoteView.snp.bottom).offset(8)
                make.top.equalTo(quoteView.snp.bottom).offset(8)
                //: make.leading.equalToSuperview().offset(8)
                make.leading.equalToSuperview().offset(8)
                //: make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                make.trailing.equalTo(sendBtn.snp.leading).offset(-16)
                //: make.height.equalTo(inputTextView)
                make.height.equalTo(inputTextView)
            }
            //: inputTextView.snp.makeConstraints { make in
            inputTextView.snp.makeConstraints { make in
                //: make.top.equalTo(contentView)
                make.top.equalTo(contentView)
                //: make.leading.equalTo(contentView.snp.leading).offset(8)
                make.leading.equalTo(contentView.snp.leading).offset(8)
                //: make.width.equalTo(contentView).offset(-16)
                make.width.equalTo(contentView).offset(-16)
                //: make.height.equalTo(40)
                make.height.equalTo(40)
            }
            //: bottomView.snp.makeConstraints { make in
            bottomView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(42)
                make.height.equalTo(42)
                //: make.top.equalTo(contentView.snp.bottom).offset(8)
                make.top.equalTo(contentView.snp.bottom).offset(8)
                //: make.bottom.equalTo(-kLet_appMarginText)
                make.bottom.equalTo(-kLet_appMarginText)
            }
        }
    }

    //: private func bindAction() {
    private func sawLog() {
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String)  -> Void in
        giftView.sendActionBlock = { [weak self] (_ giftModel: GiftSectionModelType, _ num: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.delegate?.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.delegate?.nameNum(giftModel: giftModel, giftNum: num)
            //: return
        }
        //: giftView.chatRoomSendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String, _ model: TalkingChatRoomMemberModel) -> Void in
        giftView.chatRoomSendActionBlock = { [weak self] (_ giftModel: GiftSectionModelType, _ num: String, _ model: PopScaleReactiveCompatible) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.delegate?.func__sendChatRoomGiftMsg(giftModel: giftModel, giftNum: num, model: model)
            self.delegate?.quantityeraction(giftModel: giftModel, giftNum: num, model: model)
            //: return
        }
        //: giftView.giftHideBlock = { [weak self] ()  -> Void in
        giftView.giftHideBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.showOtherInputView = false
            self.showOtherInputView = false
            //: return
        }

        //: if inputStyle == .PrivateChat || inputStyle == .LiveRoom {
        if inputStyle == .PrivateChat || inputStyle == .LiveRoom {
            //: quoteView.closeBtnBlock = { [weak self] ()  -> Void in
            quoteView.closeBtnBlock = { [weak self] () in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.quoteModel = nil
                self.quoteModel = nil
            }
            //: quoteView.rx.hidden.subscribe{[weak self] (isHidden) in
            quoteView.rx.hidden.subscribe { [weak self] isHidden in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.quoteView.snp.updateConstraints { make in
                self.quoteView.snp.updateConstraints { make in
                    //: make.top.equalTo(isHidden ? 0 : 8)
                    make.top.equalTo(isHidden ? 0 : 8)
                    //: make.height.equalTo(isHidden ? 0 : 28)
                    make.height.equalTo(isHidden ? 0 : 28)
                }
                //: self.func__updateInputContentView()
                self.accept()
                //: }.disposed(by: disposeBag)
            }.disposed(by: disposeBag)

            //: if inputStyle == .PrivateChat {
            if inputStyle == .PrivateChat {
                //: giftView.askforActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String)  -> Void in
                giftView.askforActionBlock = { [weak self] (_ giftModel: GiftSectionModelType, _ num: String) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.delegate?.func__askforGiftMsg(giftModel: giftModel, giftNum: num)
                    self.delegate?.beforeChecked(giftModel: giftModel, giftNum: num)
                    //: return
                }
            }
        }
    }

    //: private func initMoreBtnView() {
    private func assemblage() {
        //: var arr = [MoreActionType]()
        var arr = [ShouldMirrorPath]()
        //: if inputStyle == .PrivateChat {
        if inputStyle == .PrivateChat {
            //: arr = [MoreActionType.Photo,
            arr = [ShouldMirrorPath.Photo,
                   //: MoreActionType.ShortVideo,
                   ShouldMirrorPath.ShortVideo,
                   //: MoreActionType.VideoCall,
                   ShouldMirrorPath.VideoCall,
                   //: MoreActionType.Location]
                   ShouldMirrorPath.Location]
//            arr = [ShouldMirrorPath.Photo,
//                   ShouldMirrorPath.ShortVideo,
//                   ShouldMirrorPath.VideoCall,
//                   ShouldMirrorPath.Gift,
//                   ShouldMirrorPath.Game]
//            // 游戏入口
//            let bit = WithAdministratorAppManager.share.appUserConfigMode.gameShowBit
//            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue ||
//               (bit != 2 && bit != 3) {
//                arr.removeAll(where: { $0 == .Game })
//            }
            //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
                //: arr.removeAll(where: { $0 == .VideoCall })
                arr.removeAll(where: { $0 == .VideoCall })
            }
            //: } else if inputStyle == .GroupChat {
        } else if inputStyle == .GroupChat {
            //: arr = [MoreActionType.Photo,
            arr = [ShouldMirrorPath.Photo,
                   //: MoreActionType.Gift]
                   ShouldMirrorPath.Gift]
            //: } else {
        } else {
            //: arr = [MoreActionType.Photo,
            arr = [ShouldMirrorPath.Photo,
                   //: MoreActionType.ShortVideo]
                   ShouldMirrorPath.ShortVideo]
        }
        //: for (i, type) in arr.enumerated() {
        for (i, type) in arr.enumerated() {
            //: var str = ""
            var str = ""
            //: switch type {
            switch type {
            //: case .Photo:
            case .Photo:
                //: str = "btn_talk_more_photo_nor"
                str = (String(str_reportCellData.suffix(6)) + "lk_m" + String(str_pointData.prefix(5)) + "hoto_nor")
            //: case .VideoCall:
            case .VideoCall:
                //: str = "btn_news_shotVideo_nor"
                str = (String(str_infoData.suffix(7)) + String(str_modelText.prefix(5)) + String(str_freeTitle))
            //: case .ShortVideo:
            case .ShortVideo:
                //: str = "btn_news_video_nor"
                str = (String(str_toGroupText.prefix(5)) + "ews_v" + str_pathData.replacingOccurrences(of: "color", with: "o") + "_nor")
            //: case .Location:
            case .Location:
                //: str = "btn_talk_map_nor"
                str = (String(str_fileText) + String(str_makeAddContent))
            //: case .Gift:
            case .Gift:
                //: str = "btn_talk_gift_nor"
                str = (String(str_equalName.suffix(6)) + String(str_errorData.prefix(4)) + "ift_nor")
            //: case .Game:
            case .Game:
                //: str = "btn_more_game_nor"
                str = (String(str_makeVideoName.suffix(5)) + "ore_ga" + String(str_adTitle))
            }
            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.setImage(UIImage.nearCounterval(name: str), for: .normal)
            btn.setImage(UIImage.nearCounterval(name: str), for: .normal)
            //: btn.setImage(UIImage.nearCounterval(name: str), for: .highlighted)
            btn.setImage(UIImage.nearCounterval(name: str), for: .highlighted)
            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: btn.tag = type.rawValue
            btn.tag = type.rawValue
            //: btn.addTarget(self, action: #selector(moreAction(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(option(sender:)), for: .touchUpInside)
            //: bottomView.addSubview(btn)
            bottomView.addSubview(btn)
            //: btn.snp.makeConstraints { (make) in
            btn.snp.makeConstraints { make in
                //: make.leading.equalTo(ScreenWidth/5.0 * CGFloat(i))
                make.leading.equalTo(ScreenWidth / 5.0 * CGFloat(i))
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(ScreenWidth/5)
                make.width.equalTo(ScreenWidth / 5)
            }
        }
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: @objc func clickSendBtn(sender: UIButton) {
    @objc func upwards(sender: UIButton) {
        //: sender.isSelected = false
        sender.isSelected = false

        //: if self.inputTextView.text.count > 0 {
        if self.inputTextView.text.count > 0 {
            //: func__sendTextStr()
            appearEqual()
            //: } else {
        } else {
            //: inputTextView.resignFirstResponder()
            inputTextView.resignFirstResponder()
        }
    }

    //: @objc func moreAction(sender: UIButton) {
    @objc func option(sender: UIButton) {
        //: self.inputTextView.resignFirstResponder()
        self.inputTextView.resignFirstResponder()
        //: guard let actionType = MoreActionType.init(rawValue: sender.tag) else { return }
        guard let actionType = ShouldMirrorPath(rawValue: sender.tag) else { return }
        //: if actionType == .Gift {
        if actionType == .Gift {
            //: clickgiftBtn()
            theory()
            //: } else {
        } else {
            //: self.delegate?.func__selectMoreFunAction(actionType: actionType)
            self.delegate?.saveer(actionType: actionType)
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor(hex: "F5F5F5")
        content.backgroundColor = UIColor(hex: (str_keyValue.replacingOccurrences(of: "near", with: "5")))
        //: content.layer.cornerRadius = 20
        content.layer.cornerRadius = 20
        //: content.clipsToBounds = true
        content.clipsToBounds = true
        //: self.addSubview(content)
        self.addSubview(content)
        //: return content
        return content
        //: }()
    }()

    //: lazy var voiceBtn: UIButton = {
    lazy var voiceBtn: UIButton = {
        //: let voice = UIButton.init()
        let voice = UIButton()
        //: voice.setImage(UIImage.nearCounterval(name: "btn_talk_voice_nor"), for: .normal)
        voice.setImage(UIImage.nearCounterval(name: (String(str_makeValueName.prefix(5)) + "alk_voi" + String(str_mData.suffix(6)))), for: .normal)
        //: voice.setImage(UIImage.nearCounterval(name: "btn_talk_voice_pre"), for: .highlighted)
        voice.setImage(UIImage.nearCounterval(name: (String(str_viewColorText.suffix(5)) + str_onTitle.replacingOccurrences(of: "gesture", with: "lk") + String(str_viewTitle.prefix(6)) + "_pre")), for: .highlighted)
        //: voice.addTarget(self, action: #selector(clickVoiceBtn(sender:)), for: .touchUpInside)
        voice.addTarget(self, action: #selector(actionConversation(sender:)), for: .touchUpInside)
        //: self.addSubview(voice)
        self.addSubview(voice)
        //: return voice
        return voice
        //: }()
    }()

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let sendction = UIButton.init()
        let sendction = UIButton()
        //: sendction.setImage(UIImage.nearCounterval(name: "btn_talk_send_pre"), for: .normal)
        sendction.setImage(UIImage.nearCounterval(name: (String(str_statusTimeText.suffix(6)) + "lk_s" + String(str_removeData.prefix(7)))), for: .normal)
        //: sendction.setImage(UIImage.nearCounterval(name: "btn_talk_send_nor"), for: .selected)
        sendction.setImage(UIImage.nearCounterval(name: (str_blueData.replacingOccurrences(of: "country", with: "b") + String(str_messageSizeValue.prefix(4)) + "alk_" + String(str_stackName.suffix(8)))), for: .selected)
        //: sendction.addTarget(self, action: #selector(clickSendBtn(sender:)), for: .touchUpInside)
        sendction.addTarget(self, action: #selector(upwards(sender:)), for: .touchUpInside)
        //: self.addSubview(sendction)
        self.addSubview(sendction)
        //: return sendction
        return sendction
        //: }()
    }()

    //: lazy var quoteView: InputQuoteView = {
    lazy var quoteView: EndowControl = {
        //: let quoteV = InputQuoteView()
        let quoteV = EndowControl()
        //: quoteV.isHidden = true
        quoteV.isHidden = true
        //: quoteV.layer.cornerRadius = 14
        quoteV.layer.cornerRadius = 14
        //: quoteV.backgroundColor = UIColor(hex: "#EBEBEB")
        quoteV.backgroundColor = UIColor(hex: (String(str_appName.prefix(7))))
        //: self.addSubview(quoteV)
        self.addSubview(quoteV)
        //: return quoteV
        return quoteV
        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: MediaThen = {
        //: let input = InputTextView()
        let input = MediaThen()
        //: input.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        input.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: input.placeholderColor = .init(hex: "#999999") ?? UIColor.gray
        input.placeholderColor = .init(hex: (str_iconName.replacingOccurrences(of: "device", with: "99") + str_removeValue.capitalized)) ?? UIColor.gray
        //: input.placeholder = "Type a message…".localized
        input.placeholder = (String(str_insideTitle) + String(str_actionActualData)).localized
        //: input.returnKeyType = .default
        input.returnKeyType = .default
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.clear
        input.backgroundColor = UIColor.clear
        //: input.textColor = UIColor.occurrence()
        input.textColor = UIColor.occurrence()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Regular, fontSize: 16)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.occurrence(), .font: UIFont.liveAttention(type: .Regular, fontSize: 16)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()

    //: lazy var recordButton: UIButton = {
    lazy var recordButton: UIButton = {
        //: let record = UIButton.init()
        let record = UIButton()
        //: record.setTitle("Hold to talk".localized, for: .normal)
        record.setTitle((String(str_effectName) + String(str_nameValue)).localized, for: .normal)
        //: record.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 16)
        record.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 16)
        //: record.setTitleColor(UIColor.occurrence(), for: .normal)
        record.setTitleColor(UIColor.occurrence(), for: .normal)
        //: record.setBackgroundColor(color: .white, forState: .normal)
        record.backgroundBlock(color: .white, forState: .normal)
        //: record.setBackgroundColor(color: .white, forState: .highlighted)
        record.backgroundBlock(color: .white, forState: .highlighted)
        //: record.addTarget(self, action: #selector(recordBtnDown), for: .touchDown)
        record.addTarget(self, action: #selector(downRequest), for: .touchDown)
        //: record.addTarget(self, action: #selector(recordBtnUp), for: .touchUpInside)
        record.addTarget(self, action: #selector(openRecordPan), for: .touchUpInside)
        //: record.addTarget(self, action: #selector(recordBtnCancel), for: [.touchUpOutside, .touchCancel])
        record.addTarget(self, action: #selector(modelDoing), for: [.touchUpOutside, .touchCancel])
        //: record.addTarget(self, action: #selector(recordBtnExit), for: .touchDragExit)
        record.addTarget(self, action: #selector(blind), for: .touchDragExit)
        //: record.addTarget(self, action: #selector(recordBtnEnter), for: .touchDragEnter)
        record.addTarget(self, action: #selector(getIn), for: .touchDragEnter)
        //: record.layer.borderWidth = 1
        record.layer.borderWidth = 1
        //: record.layer.cornerRadius = 20
        record.layer.cornerRadius = 20
        //: record.layer.borderColor = UIColor.init(hex: "#DDDDDD")?.cgColor
        record.layer.borderColor = UIColor(hex: (String(str_viewData) + String(str_colorContent)))?.cgColor

        //: record.isHidden = true
        record.isHidden = true
        //: record.clipsToBounds = true
        record.clipsToBounds = true
        //: contentView.addSubview(record)
        contentView.addSubview(record)
        //: contentView.bringSubviewToFront(record)
        contentView.bringSubviewToFront(record)
        //: return record
        return record
        //: }()
    }()

    //: lazy var giftView: TalkingChatGiftView = {
    lazy var giftView: MiniViewDelegate = {
        //: var type = GiftViewStyle.normal
        var type = ScaleLargessComparable.normal
        //: if inputStyle == .GroupChat {
        if inputStyle == .GroupChat {
            //: type = .groupChat
            type = .groupChat
        }
        //: let giftV = TalkingChatGiftView.init(style: type)
        let giftV = MiniViewDelegate(style: type)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        //: return giftV
        return giftV
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: deinit {
    deinit {
        //: _ = stopRecord()
        _ = behindSumerfoil()
    }
}

//: extension TalkingChatInputView: UITextViewDelegate {
extension ButtonCellView: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_: UITextView) {}

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        // 群聊@
        //: if self.inputStyle == .GroupChat && text == "@" && calculateAtCount() < 10 {
        if self.inputStyle == .GroupChat && text == "@" && recountFrom() < 10 {
            //: self.delegate?.func__selectMentionUser(range: NSRange(location: range.location, length: text.utf16.count))
            self.delegate?.mention(range: NSRange(location: range.location, length: text.utf16.count))
        }

        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: return true
        return true
    }

    //: func func__updateInputContentView() {
    func accept() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(40, min(100, textSize.height))
        let textHeight = max(40, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight + kLet_appMarginText + 58 + (self.quoteView.isHidden ? 0 : 36))
        self.delegate?.inputPricePlay(height: textHeight + kLet_appMarginText + 58 + (self.quoteView.isHidden ? 0 : 36))
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func angleNotification(notification: NSNotification) {
        //: if !showOtherInputView {
        if !showOtherInputView {
            //: let info = notification.userInfo!
            let info = notification.userInfo!
            //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
            var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
            //: kbRect = self.convert(kbRect, from: nil)
            kbRect = self.convert(kbRect, from: nil)

            //: let height = kbRect.size.height
            let height = kbRect.size.height

            //: self.delegate?.heightToBottomChanged(heightToBottom: height)
            self.delegate?.beforeConstraint(heightToBottom: height)
        }
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func gestureTitle(notification _: NSNotification) {
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.beforeConstraint(heightToBottom: 0)
    }
}

// MARK: - 发送文本

//: extension TalkingChatInputView {
extension ButtonCellView {
    //: func func__sendTextStr() {
    func appearEqual() {
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat { // 群聊
            //: let sendStr = self.handleSendText(text: self.inputTextView.attributedText)
            let sendStr = self.sendTouchTextMissive(text: self.inputTextView.attributedText)
            //: self.delegate?.func__sendTextMsg(msgStr: sendStr, quoteModel: quoteModel)
            self.delegate?.colorModel(msgStr: sendStr, quoteModel: quoteModel)
            //: self.inputTextView.attributedText = nil
            self.inputTextView.attributedText = nil
            //: self.inputTextView.font = self.inputAttr[NSAttributedString.Key.font] as? UIFont
            self.inputTextView.font = self.inputAttr[NSAttributedString.Key.font] as? UIFont
            //: self.inputTextView.textColor = self.inputAttr[NSAttributedString.Key.foregroundColor] as? UIColor
            self.inputTextView.textColor = self.inputAttr[NSAttributedString.Key.foregroundColor] as? UIColor

            //: } else {
        } else {
            //: self.delegate?.func__sendTextMsg(msgStr: inputTextView.text, quoteModel: quoteModel)
            self.delegate?.colorModel(msgStr: inputTextView.text, quoteModel: quoteModel)
        }
        //: self.quoteModel = nil
        self.quoteModel = nil
        //: self.inputTextView.text = ""
        self.inputTextView.text = ""
    }
}

// MARK: - 输入内容时停顿间隔检测

//: extension TalkingChatInputView {
extension ButtonCellView {
    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func query() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_checkInputContent),
                                               selector: #selector(duringFrom),
                                               //: object: self.inputTextView)
                                               object: self.inputTextView)
    }

    /// 开启超时检测
    //: private func interval_startPerformRequest() {
    private func statusUser() {
        //: self.perform(#selector(interval_checkInputContent), with: self.inputTextView, afterDelay: 0.5)
        self.perform(#selector(duringFrom), with: self.inputTextView, afterDelay: 0.5)
    }

    /// 输入内容间隔超过1秒
    //: @objc private func interval_checkInputContent() {
    @objc private func duringFrom() {
        //: self.delegate?.func_inputContentIntervalOneSecond()
        self.delegate?.sizeTo()
    }
}

// MARK: - 群聊

//: extension TalkingChatInputView {
extension ButtonCellView {
    /// 检测群聊@ 人数
    //: private func calculateAtCount() -> Int {
    private func recountFrom() -> Int {
        //: var count = 0
        var count = 0
        //: guard let attrText = self.inputTextView.attributedText else { return count }
        guard let attrText = self.inputTextView.attributedText else { return count }
        //: attrText.enumerateAttributes(in: NSRange(location: 0, length: attrText.length), using: { attrs, range, stop in
        attrText.enumerateAttributes(in: NSRange(location: 0, length: attrText.length), using: { attrs, _, _ in
            //: if attrs.keys.contains(NSAttributedString.Key.attachment) {
            if attrs.keys.contains(NSAttributedString.Key.attachment) {
                //: count += 1
                count += 1
            }
            //: })
        })

        //: if count >= 10 {
        if count >= 10 {
            //: self.func__showStatusBarErrorMsg(showMsg: "A maximum of 10 people can be @ one message".localized)
            self.atShow(showMsg: String(bytes: str_layerData.map{indexTable(title: $0)}, encoding: .utf8)!.localized)
        }

        //: return count
        return count
    }

    /// 替换@ 消息为富文本
    //: func receiveAtInfo(range: NSRange?, dict: [String: Any]) {
    func miss(range: NSRange?, dict: [String: Any]) {
        //: guard calculateAtCount() < 10 else { return }
        guard recountFrom() < 10 else { return }
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
//                    atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "")"
        let atStr = "@\(dict[(str_timeText.lowercased())] ?? "")"
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
        atInfo[(String(str_messageKeyData))] = atStr.count
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
    private func sendTouchTextMissive(text: NSAttributedString?) -> String {
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
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat {
            //: self.atArr.removeAll()
            self.atArr.removeAll()
            //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
            mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
                //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
                let atta = attrs[NSAttributedString.Key.attachment] as? MiniClickNameAttachment
                //: if atta != nil && range.length == 1 {
                if atta != nil && range.length == 1 {
                    //: if let name = atta!.atInfo["name"] {
                    if let name = atta!.atInfo[(str_timeText.lowercased())] {
                        //: let str = "<at>@\(name)</at> "
                        let str = "<at>@\(name)</at> "
                        //: string.append(str)
                        string.append(str)
                        //: self.atArr.append(atta!.atInfo["uid"]! as! String)
                        self.atArr.append(atta!.atInfo[(String(str_tableModelData))]! as! String)
                    }
                    //: } else {
                } else {
                    //: let str = mText.attributedSubstring(from: range).string
                    let str = mText.attributedSubstring(from: range).string
                    //: string.append(str)
                    string.append(str)
                }
            }
            //: } else {
        } else {
            //: string = mText.string
            string = mText.string
        }

        //: return string
        return string
    }
}

// MARK: - 礼物

//: extension TalkingChatInputView {
extension ButtonCellView {
    //: @objc func clickgiftBtn() {
    @objc func theory() {
        //: var type = GiftViewStyle.normal
        var type = ScaleLargessComparable.normal
        //: if inputStyle == .GroupChat {
        if inputStyle == .GroupChat {
            //: type = .groupChat
            type = .groupChat
        }
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: type, completion: {
        SumReactiveCompatible.share.dialog(type: type, completion: {
            //: self.func__showGiftChoiceView()
            self.demonstration()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func demonstration() {
        //: showOtherInputView = true
        showOtherInputView = true
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        //: if self.inputStyle == .GroupChat {
        if self.inputStyle == .GroupChat {
            //: giftView.chatRoomID = self.chatRoomID
            giftView.chatRoomID = self.chatRoomID
            //: giftView.setSeleteMemberList()
            giftView.userList()
        }
        //: currentViewController()?.view.addSubview(giftView)
        actionController()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.toponym()
    }
}

// MARK: - 语音

//: extension TalkingChatInputView {
extension ButtonCellView {
    //: @objc func clickVoiceBtn(sender: UIButton) {
    @objc func actionConversation(sender: UIButton) {
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { [weak self]  (isOpen: Bool) in
        LaissezPasserThen.withLoad(true) { [weak self] (isOpen: Bool) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if isOpen {
            if isOpen {
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if sender.isSelected {
                if sender.isSelected {
                    //: sender.setImage(UIImage.nearCounterval(name: "btn_talk_keyboard_nor"), for: .normal)
                    sender.setImage(UIImage.nearCounterval(name: (String(str_noData.prefix(6)) + "lk_k" + str_managerValue.replacingOccurrences(of: "total", with: "y") + "ard_no" + str_succeedValue.lowercased())), for: .normal)
                    //: sender.setImage(UIImage.nearCounterval(name: "btn_talk_keyboard_pre"), for: .highlighted)
                    sender.setImage(UIImage.nearCounterval(name: (String(str_priceValue.suffix(4)) + "talk_" + str_timeViewValue.replacingOccurrences(of: "send", with: "yb") + "oard" + String(str_oneTitle.prefix(4)))), for: .highlighted)
                    //: self.recordButton.isHidden = false
                    self.recordButton.isHidden = false
                    //: self.quoteView.isHidden = true
                    self.quoteView.isHidden = true
                    //: self.inputTextView.resignFirstResponder()
                    self.inputTextView.resignFirstResponder()
                    //: } else {
                } else {
                    //: sender.setImage(UIImage.nearCounterval(name: "btn_talk_voice_nor"), for: .normal)
                    sender.setImage(UIImage.nearCounterval(name: (String(str_makeValueName.prefix(5)) + "alk_voi" + String(str_mData.suffix(6)))), for: .normal)
                    //: sender.setImage(UIImage.nearCounterval(name: "btn_talk_voice_pre"), for: .highlighted)
                    sender.setImage(UIImage.nearCounterval(name: (String(str_viewColorText.suffix(5)) + str_onTitle.replacingOccurrences(of: "gesture", with: "lk") + String(str_viewTitle.prefix(6)) + "_pre")), for: .highlighted)
                    //: self.recordButton.isHidden = true
                    self.recordButton.isHidden = true
                    //: self.inputTextView.becomeFirstResponder()
                    self.inputTextView.becomeFirstResponder()
                    //: self.quoteView.isHidden = (self.quoteModel == nil)
                    self.quoteView.isHidden = (self.quoteModel == nil)
                }
                //: } else {
            } else {
                //: self.inputTextView.resignFirstResponder()
                self.inputTextView.resignFirstResponder()
            }
        }
    }

    //: @objc func recordBtnDown() {
    @objc func downRequest() {
        //: guard TalkingSocketManager.shared.isTalking == false else {
        guard DataSocketDelegate.shared.isTalking == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: return
            return
        }

        //: recordView = TalkingChatRecordView()
        recordView = UserThen()
        //: recordView?.frame = UIScreen.main.bounds
        recordView?.frame = UIScreen.main.bounds
        //: self.window?.addSubview(recordView!)
        self.window?.addSubview(recordView!)
        //: recordView?.showView()
        recordView?.addBottom()
        //: recordView?.setRecordStatus(status: .recording)
        recordView?.price(status: .recording)

        //: recordStartTime = NSDate.init()
        recordStartTime = NSDate()

        //: recordView?.setRecordStatus(status: .recording)
        recordView?.price(status: .recording)

        //: startRecord()
        reEnterAndDataFile()
        //: self.delegate?.func__starRecordBtnDown()
        self.delegate?.noBackground()
    }

    //: @objc func recordBtnCancel() {
    @objc func modelDoing() {
        //: guard TalkingSocketManager.shared.isTalking == false else { return }
        guard DataSocketDelegate.shared.isTalking == false else { return }
        //: recordView?.hidenView()
        recordView?.detailTheme()
        //: cancelRecord(isTooLong: false)
        touch(isTooLong: false)
    }

    //: @objc func recordBtnExit() {
    @objc func blind() {
        //: guard TalkingSocketManager.shared.isTalking == false else { return }
        guard DataSocketDelegate.shared.isTalking == false else { return }
        //: recordView?.setRecordStatus(status: .cancel)
        recordView?.price(status: .cancel)
    }

    //: @objc func recordBtnEnter() {
    @objc func getIn() {
        //: guard TalkingSocketManager.shared.isTalking == false else { return }
        guard DataSocketDelegate.shared.isTalking == false else { return }
        //: recordView?.setRecordStatus(status: .recording)
        recordView?.price(status: .recording)
    }

    //: @objc func recordBtnUp() {
    @objc func openRecordPan() {
        //: guard TalkingSocketManager.shared.isTalking == false else { return }
        guard DataSocketDelegate.shared.isTalking == false else { return }

        //: if (AVAudioSession.sharedInstance().recordPermission == .denied) {
        if AVAudioSession.sharedInstance().recordPermission == .denied {
            //: return
            return
        }
        //: let cunrren = NSDate.init()
        let cunrren = NSDate()
        //: let interval: TimeInterval = cunrren.timeIntervalSince1970 - recordStartTime.timeIntervalSince1970
        let interval: TimeInterval = cunrren.timeIntervalSince1970 - recordStartTime.timeIntervalSince1970

        //: if (interval < 1.0 || interval > RecordMaxDuration) {
        if interval < 1.0 || interval > RecordMaxDuration {
            //: if(interval < 1.0) {
            if interval < 1.0 {
                //: recordView?.setRecordStatus(status: .tooShoot)
                recordView?.price(status: .tooShoot)
                //: } else {
            } else {
                //: recordView?.setRecordStatus(status: .tooLong)
                recordView?.price(status: .tooLong)
            }

            //: cancelRecord(isTooLong: interval > RecordMaxDuration)
            touch(isTooLong: interval > RecordMaxDuration)

            //: recordView?.hidenView()
            recordView?.detailTheme()
            //: } else {
        } else {
            //: recordView?.hidenView()
            recordView?.detailTheme()
            //: let path = stopRecord()
            let path = behindSumerfoil()
            //: if path.isEmpty == false {
            if path.isEmpty == false {
                //: self.delegate? .func__sendVoiceMsg(voicePath: path, voiceTime: Int(interval))
                self.delegate?.success(voicePath: path, voiceTime: Int(interval))
            }
        }
    }

    /// 开始录音
    //: func startRecord() {
    func reEnterAndDataFile() {
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.playAndRecord)
            try session.setCategory(AVAudioSession.Category.playAndRecord)
            //: try session.setActive(true)
            try session.setActive(true)
            //: } catch {
        } catch {}

        //: let recordSetting  = [
        let recordSetting = [
            // 编码格式
            //: AVFormatIDKey: kAudioFormatLinearPCM,
            AVFormatIDKey: kAudioFormatLinearPCM,
            // 采样率
            //: AVSampleRateKey: NSNumber(value: 8000.00),
            AVSampleRateKey: NSNumber(value: 8000.00),
            // 通道数
            //: AVNumberOfChannelsKey: NSNumber(value: 1),
            AVNumberOfChannelsKey: NSNumber(value: 1),
            // 采样位数
            //: AVLinearPCMBitDepthKey: NSNumber(value: 16),
            AVLinearPCMBitDepthKey: NSNumber(value: 16),
            // 录音质量
            //: AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue)
            AVEncoderAudioQualityKey: NSNumber(value: AVAudioQuality.high.rawValue), // 录音质量

            //: ] as [String: Any]
        ] as [String: Any]

        //: let path =  getVoiceRecordLocalPathWithFileType(path: "wav")
        let path = deadlineEffect(path: (str_leadingName.replacingOccurrences(of: "white", with: "wa")) as NSString)
        //: let url = URL.init(fileURLWithPath: path)
        let url = URL(fileURLWithPath: path)

        //: do {
        do {
            //: try  recorder = AVAudioRecorder.init(url: url, settings: recordSetting)
            try recorder = AVAudioRecorder(url: url, settings: recordSetting)
            //: recorder?.isMeteringEnabled = true
            recorder?.isMeteringEnabled = true
            //: recorder?.prepareToRecord()
            recorder?.prepareToRecord()
            //: recorder?.record()
            recorder?.record()
            //: recorder?.updateMeters()
            recorder?.updateMeters()
            //: duration = 0
            duration = 0

            //: recordTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(recordTick(time:)), userInfo: nil, repeats: true)
            recordTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(laborResources(time:)), userInfo: nil, repeats: true)
            //: if let curTime: Timer = recordTimer {
            if let curTime: Timer = recordTimer {
                //: RunLoop.main.add(curTime, forMode: .common)
                RunLoop.main.add(curTime, forMode: .common)
            }
            //: } catch {
        } catch {}
    }

    //: @objc func recordTick(time: Timer) {
    @objc func laborResources(time _: Timer) {
        //: recorder?.updateMeters()
        recorder?.updateMeters()
        //: let interval = recorder?.currentTime ?? 0
        let interval = recorder?.currentTime ?? 0
        //: duration += 1
        duration += 1

        //: recordView?.durationLabel.text = String(duration)
        recordView?.durationLabel.text = String(duration)

        // 超时自动发送
        //: if interval>RecordMaxDuration {
        if interval > RecordMaxDuration {
            //: let path =  stopRecord()
            let path = behindSumerfoil()
            //: recordView?.setRecordStatus(status: .tooLong)
            recordView?.price(status: .tooLong)

            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0, execute: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.recordView?.hidenView()
                self.recordView?.detailTheme()
                //: })
            }
            //: if path.isEmpty == false {
            if path.isEmpty == false {
                //: self.delegate? .func__sendVoiceMsg(voicePath: path, voiceTime: 30)
                self.delegate?.success(voicePath: path, voiceTime: 30)
            }
        }
    }

    //: func stopRecord()->String {
    func behindSumerfoil() -> String {
        //: if recordTimer != nil {
        if recordTimer != nil {
            //: recordTimer?.invalidate()
            recordTimer?.invalidate()
            //: recordTimer = nil
            recordTimer = nil
        }
        //: if recorder?.isRecording != false {
        if recorder?.isRecording != false {
            //: recorder?.stop()
            recorder?.stop()
        }
        //: return recorder?.url.path ?? ""
        return recorder?.url.path ?? ""
    }

    //: func getVoiceRecordLocalPathWithFileType(path: NSString) -> String {
    func deadlineEffect(path: NSString) -> String {
        //: if !FileManager.default.fileExists(atPath: Talking_Chat_record_SandboxPath) {
        if !FileManager.default.fileExists(atPath: kLet_keyMarginClickText) {
            //: do {
            do {
                //: try FileManager.default.createDirectory(atPath: Talking_Chat_record_SandboxPath, withIntermediateDirectories: true, attributes: nil)
                try FileManager.default.createDirectory(atPath: kLet_keyMarginClickText, withIntermediateDirectories: true, attributes: nil)
                //: }catch {
            } catch {}
        }

        //: let timestr = NSDate.timeIntervalSinceReferenceDate
        let timestr = NSDate.timeIntervalSinceReferenceDate
        //: let uid = WithAdministratorAppManager.share.loginUserMode.userID
        let uid = WithAdministratorAppManager.share.loginUserMode.userID
        //: if uid.count == 0 { return "" }
        if uid.count == 0 { return "" }

        //: return Talking_Chat_record_SandboxPath + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
        return kLet_keyMarginClickText + "_" + uid + "_" + String(Int(timestr)) + "." + (path as String)
    }

    //: func cancelRecord(isTooLong: Bool) {
    func touch(isTooLong: Bool) {
        //: if recordTimer != nil {
        if recordTimer != nil {
            //: recordTimer?.invalidate()
            recordTimer?.invalidate()
            //: recordTimer = nil
            recordTimer = nil
        }
        //: if recorder?.isRecording != false {
        if recorder?.isRecording != false {
            //: recorder?.stop()
            recorder?.stop()
        }

        //: if isTooLong {
        if isTooLong {
            //: return
            return
        }
        //: let path = recorder?.url.path
        let path = recorder?.url.path
        //: if FileManager.default.fileExists(atPath: path!) {
        if FileManager.default.fileExists(atPath: path!) {
            //: do {
            do {
                //: try FileManager.default.removeItem(atPath: path!)
                try FileManager.default.removeItem(atPath: path!)
                //: }catch {
            } catch {}
        }
    }
}
