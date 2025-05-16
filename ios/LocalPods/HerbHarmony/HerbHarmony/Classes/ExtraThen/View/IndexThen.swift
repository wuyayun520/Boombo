
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_actualVideoValue:[UInt8] = [0xef,0xf4,0xef,0xfa,0xae,0xe9,0xf5,0xea,0xeb,0xf8,0xc0,0xaf,0xa6,0xee,0xe7,0xf9,0xa6,0xf4,0xf5,0xfa,0xa6,0xe8,0xeb,0xeb,0xf4,0xa6,0xef,0xf3,0xf6,0xf2,0xeb,0xf3,0xeb,0xf4,0xfa,0xeb,0xea]

fileprivate func fallOff(name num: UInt8) -> UInt8 {
    let value = Int(num) + 122
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_recording" :*/
fileprivate let str_regularValue:String = "lab numberbtn_r"
fileprivate let str_roomData:String = "dintext"

/*: "btn_marching" :*/
fileprivate let str_indexValue:String = "false head modelbtn_"

/*: "btn_upload" :*/
fileprivate let str_deviceData:[Character] = ["b","t","n","_","u"]
fileprivate let str_infoValue:String = "statusload"

/*: "btn_audition" :*/
fileprivate let str_equalCommentName:[Character] = ["b","t","n","_","a","u","d","i","t","i","o","n"]

/*: "Click to listen" :*/
fileprivate let str_liveTitle:String = "Click string with"
fileprivate let str_bottomName:[Character] = ["t","o"," ","l","i","s","t","e","n"]

/*: "Click to start recording" :*/
fileprivate let str_coinName:String = "action mode leadingClick"
fileprivate let str_liveValue:[Character] = ["s","t","a","r","t"," ","r","e","c","o","r","d","i","n","g"]

/*: "00:00" :*/
fileprivate let str_resultEqualData:String = "contentcontent:contentcontent"

/*: "brn_cycle" :*/
fileprivate let str_executeValue:String = "case to first name cellbrn_cyc"
fileprivate let str_leadingHiddenTitle:String = "linsert"

/*: "Come back" :*/
fileprivate let str_networkText:String = "white make frame make importCome "

/*: "btn_submit" :*/
fileprivate let str_labToValue:String = "verticaltn"
fileprivate let str_colorValue:String = "route in slide_submit"

/*: "Submit" :*/
fileprivate let str_socialRoomValue:[Character] = ["S"]
fileprivate let str_photoAttentionName:[Character] = ["u","b","m","i","t"]

/*: "Click to finish recording" :*/
fileprivate let str_touchValue:String = "manager category labelClick "
fileprivate let str_needData:[Character] = ["t","o"," ","f","i","n","i","s","h"," ","r","e","c","o"]
fileprivate let str_backgroundName:String = "rdimessage"

/*: "Under time" :*/
fileprivate let str_norValue:[Character] = ["U","n","d","e","r"," ","t","i"]
fileprivate let str_makeValue:String = "mroom"

/*: "Click to pause" :*/
fileprivate let str_beginVideoValue:[Character] = ["C","l","i","c","k"," ","t","o"," ","p","a","u","s","e"]

/*: "Click to play" :*/
fileprivate let str_intervalChanceErrorValue:String = "Clickreturn string"
fileprivate let str_yourName:[Character] = [" ","t","o"," ","p","l","a","y"]

/*: "filePath" :*/
fileprivate let str_thirdValue:[UInt8] = [0x65,0x6a,0x6f,0x66,0x53,0x62,0x77,0x6b]

private func backgroundData(view num: UInt8) -> UInt8 {
    return num ^ 3
}

/*: "time" :*/
fileprivate let str_coordinateName:[UInt8] = [0x21,0x3c,0x38,0x30]

/*: "Recording cancelled" :*/
fileprivate let str_playerData:[Character] = ["R","e","c","o","r","d","i","n","g"," ","c"]
fileprivate let str_sharedName:String = "atopc"
fileprivate let str_labelData:String = "ELLED"

/*: "get json error" :*/
fileprivate let str_roomTimeRegisterValue:[Character] = ["g","e","t"," ","j","s","o","n"," ","e"]
fileprivate let str_marginOmitData:String = "giftor"

/*: "%02d:%02d" :*/
fileprivate let str_componentText:String = "%02d:%let party if"
fileprivate let str_textWithTitle:String = "02dplease frame"

/*: "btn_delete" :*/
fileprivate let str_fillText:String = "model string size rawbtn_d"
fileprivate let str_fieldValue:[Character] = ["e","l","e","t","e"]

/*: "Add voice message" :*/
fileprivate let str_pathText:String = "table iAdd vo"
fileprivate let str_aContent:String = "ssagshare"

/*: "Record a voice for 3-10s" :*/
fileprivate let str_viewName:String = "a stringReco"
fileprivate let str_hiddenData:String = "oice with extension group"
fileprivate let str_inputValue:String = "3-10stop right title mid"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum TitleValueConvertible: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum SumerfoilKeyRepresentable: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class IndexThen: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: SumerfoilKeyRepresentable? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.onCallSubviews()
        //: self.setupSubViewsConstraint()
        self.half()
        //: self.bindInteraction()
        self.counteractionSumeraction()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clueBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_actualVideoValue.map{fallOff(name: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_regularValue.suffix(5)) + "ecor" + str_roomData.replacingOccurrences(of: "text", with: "g"))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.nearCounterval(name: (String(str_regularValue.suffix(5)) + "ecor" + str_roomData.replacingOccurrences(of: "text", with: "g"))), for: .highlighted)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_indexValue.suffix(4)) + "marching")), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = TitleValueConvertible.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumimate(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_deviceData) + str_infoValue.replacingOccurrences(of: "status", with: "p"))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_equalCommentName))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = TitleValueConvertible.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumimate(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.text = "Click to listen".localized
        lb.text = (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 17)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 17)
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(str_coinName.suffix(5)) + " to " + String(str_liveValue)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.text = "00:00"
        lb.text = (str_resultEqualData.replacingOccurrences(of: "content", with: "0"))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_executeValue.suffix(7)) + str_leadingHiddenTitle.replacingOccurrences(of: "insert", with: "e"))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = TitleValueConvertible.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumimate(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.text = "Come back".localized
        lb.text = (String(str_networkText.suffix(5)) + "back").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_labToValue.replacingOccurrences(of: "vertical", with: "b") + String(str_colorValue.suffix(7)))), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = TitleValueConvertible.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumimate(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.text = "Submit".localized
        lb.text = (String(str_socialRoomValue) + String(str_photoAttentionName)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: OffRecorderDelegate? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = OffRecorderDelegate.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension IndexThen {
    //: func showUIViaState() {
    func buttonFor() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func skin() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.by()
        //: stopPlay()
        postPullUpShort()
        //: self.audioTool?.destroy()
        self.audioTool?.buttonExecute()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func create() {
        //: leftRecordSVGAParser()
        change()
        //: rightRecordSVGAParser()
        than()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.getDown()
        //: stopPlay()
        postPullUpShort()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(str_touchValue.suffix(6)) + String(str_needData) + str_backgroundName.replacingOccurrences(of: "message", with: "ng")).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func digitiser() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.by()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            buttonFor()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(str_coinName.suffix(5)) + " to " + String(str_liveValue)).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (str_resultEqualData.replacingOccurrences(of: "content", with: "0"))
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.atShow(showMsg: (String(str_norValue) + str_makeValue.replacingOccurrences(of: "room", with: "e")).localized)
        }
    }

    //: func play() {
    func popQuery() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.draw()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(str_beginVideoValue)).localized
            //: listenSVGAParser()
            person()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            punish()
        }
    }

    //: func stopPlay() {
    func postPullUpShort() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.reinInPlay()
        //: var text = "Click to play".localized
        var text = (String(str_intervalChanceErrorValue.prefix(5)) + String(str_yourName)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func referReset() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.reinInPlay()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_coinName.suffix(5)) + " to " + String(str_liveValue)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_resultEqualData.replacingOccurrences(of: "content", with: "0"))

        //: showUIViaState()
        buttonFor()
    }

    //: func finish() {
    func time() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.reinInPlay()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: str_thirdValue.map{backgroundData(view: $0)}, encoding: .utf8)!: self.filePath, String(bytes: str_coordinateName.map{$0^85}, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func punish() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            atShow(showMsg: kLet_detailMessageValue)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(str_beginVideoValue)).localized
        //: listenSVGAParser()
        person()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func sumimate(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case TitleValueConvertible.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            LaissezPasserThen.withLoad(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.atShow(showMsg: kLet_viewData)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isTalking else {
                    guard !DataSocketDelegate.shared.isTalking else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.atShow(showMsg: kLet_keyTitle)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.create()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.digitiser()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case TitleValueConvertible.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.popQuery()
                //: }else {
            } else {
                //: self.stopPlay()
                self.postPullUpShort()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case TitleValueConvertible.Reset.rawValue:
            //: reset()
            referReset()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case TitleValueConvertible.Finish.rawValue:
            //: finish()
            time()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func viewBagImage() {
        //: stopPlay()
        postPullUpShort()
        //: dismiss()
        customFinish()
    }

    //: @objc func appDidEnterBack() {
    @objc func clueBack() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.atShow(showMsg: (String(str_playerData) + str_sharedName.replacingOccurrences(of: "top", with: "n") + str_labelData.lowercased()))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.by()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(str_coinName.suffix(5)) + " to " + String(str_liveValue)).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (str_resultEqualData.replacingOccurrences(of: "content", with: "0"))
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        buttonFor()
    }

    //: func show() {
    func piece() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
    }

    //: func dismiss() {
    func customFinish() {
        //: releaseSoundView()
        skin()
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func person() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = DigitiserReactiveCompatible.default.game(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_roomTimeRegisterValue) + str_marginOmitData.replacingOccurrences(of: "gift", with: "rr")))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func change() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = DigitiserReactiveCompatible.default.game(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_roomTimeRegisterValue) + str_marginOmitData.replacingOccurrences(of: "gift", with: "rr")))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func than() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = DigitiserReactiveCompatible.default.game(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_roomTimeRegisterValue) + str_marginOmitData.replacingOccurrences(of: "gift", with: "rr")))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension IndexThen: HandleToolDelegate {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func call(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            digitiser()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func push(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func writtenAccountCell(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        digitiser()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func domainName(status: GiftNumeric) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.rowOff()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized : (String(str_intervalChanceErrorValue.prefix(5)) + String(str_yourName)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(str_liveTitle.prefix(6)) + String(str_bottomName)).localized : (String(str_intervalChanceErrorValue.prefix(5)) + String(str_yourName)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension IndexThen {
    // 添加视图
    //: private func setupSubviews() {
    private func onCallSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func half() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.nearCounterval(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.nearCounterval(name: (String(str_fillText.suffix(5)) + String(str_fieldValue))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(viewBagImage), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .occurrence()
        titleLb.textColor = .occurrence()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(str_pathText.suffix(6)) + "ice me" + str_aContent.replacingOccurrences(of: "share", with: "e")).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.liveAttention(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.liveAttention(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .inexpensiveness()
        explainLb.textColor = .inexpensiveness()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(str_viewName.suffix(4)) + "rd a v" + String(str_hiddenData.prefix(5)) + "for " + String(str_inputValue.prefix(5))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func counteractionSumeraction() {
        //: showUIViaState()
        buttonFor()
    }
}
