
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexInfoShareContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Move here to cancel" :*/
fileprivate let str_imageMakeValue:String = "model sizeMove "
fileprivate let str_tableValue:String = " to return color"
fileprivate let str_layerValue:String = "collection"

/*: "btn_talk_voice_recording_nor" :*/
fileprivate let str_dataValue:String = "btn_theight push make to green"
fileprivate let str_labValue:String = "ice_rereturn view mask background"
fileprivate let str_requestDeleteValue:String = "let air name versiong_nor"

/*: "Release to cancel" :*/
fileprivate let str_blockName:String = "Releasmodel reason minimum direction"
fileprivate let str_leadingValue:[Character] = [" ","c","a","n","c","e","l"]

/*: "#FF506D" :*/
fileprivate let str_verticalAddNameData:[Character] = ["#","F","F","5","0","6"]
fileprivate let str_appValue:String = "reply"

/*: "btn_talk_voice_recording_warn_nor" :*/
fileprivate let str_listBetweenBottomName:[UInt8] = [0x56,0x40,0x5a,0x6b,0x40,0x55,0x58,0x5f,0x6b,0x42,0x5b,0x5d,0x57,0x51,0x6b,0x46,0x51,0x57,0x5b,0x46,0x50,0x5d,0x5a,0x53,0x6b,0x43,0x55,0x46,0x5a,0x6b,0x5a,0x5b,0x46]

private func buildMessage(gift num: UInt8) -> UInt8 {
    return num ^ 52
}

/*: "The upper limit is reached" :*/
fileprivate let str_lengthName:String = "The upequal succeed"
fileprivate let str_outputSecondText:String = "let self text image pathmit "
fileprivate let str_kindName:String = "EACHE"
fileprivate let str_appContent:[Character] = ["d"]

/*: "30″" :*/
fileprivate let str_transactionData:String = "30″"

/*: "Under time" :*/
fileprivate let str_availableName:String = "in in let centerUnder "
fileprivate let str_colorValue:[Character] = ["t","i","m","e"]

/*: "Talk too short" :*/
fileprivate let str_removeData:String = "operate list modelTalk t"
fileprivate let str_showData:String = "olab"

/*: "0″" :*/
fileprivate let str_sexTitle:[Character] = ["0","″"]

/*: "get json error" :*/
fileprivate let str_dataTitle:String = "get jsresign image make let center"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import UIKit
import UIKit

//: enum RecordStatus: Int {
enum ShowBasicType: Int {
    //: case todefault = 0
    case todefault = 0 // 未开始
    //: case recording
    case recording // 正在录制
    //: case tooShoot
    case tooShoot // 录音时长过短
    //: case tooLong
    case tooLong // 录音时长过长
    //: case cancel
    case cancel // 录音取消
}

//: class TalkingChatRecordView: UIView {
class UserThen: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: customUI()
        sumDown()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexInfoShareContent.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(252+kLet_appMarginText)
            make.height.equalTo(252 + kLet_appMarginText)
        }

        //: topTipLabel.snp.makeConstraints { make in
        topTipLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(21)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: durationLabel.snp.makeConstraints { make in
        durationLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: leftPlayer.snp.makeConstraints { make in
        leftPlayer.snp.makeConstraints { make in
            //: make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: rightPlayer.snp.makeConstraints { make in
        rightPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: micImageView.snp.makeConstraints { make in
        micImageView.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.top.equalTo(durationLabel.snp.bottom).offset(32)
            make.top.equalTo(durationLabel.snp.bottom).offset(32)
            //: make.width.height.equalTo(99)
            make.width.height.equalTo(99)
        }

        //: microphonePlayer.snp.makeConstraints { make in
        microphonePlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }
        //: microphoneRedPlayer.snp.makeConstraints { make in
        microphoneRedPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }

        //: leftRedPlayer.snp.makeConstraints { make in
        leftRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(leftPlayer)
            make.edges.equalTo(leftPlayer)
        }
        //: rightRedPlayer.snp.makeConstraints { make in
        rightRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(rightPlayer)
            make.edges.equalTo(rightPlayer)
        }
    }

    //: public func customUI () {
    public func sumDown() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topTipLabel)
        contentView.addSubview(topTipLabel)
        //: contentView.addSubview(durationLabel)
        contentView.addSubview(durationLabel)
        //: contentView.addSubview(leftPlayer)
        contentView.addSubview(leftPlayer)
        //: contentView.addSubview(rightPlayer)
        contentView.addSubview(rightPlayer)
        //: contentView.addSubview(micImageView)
        contentView.addSubview(micImageView)
        //: contentView.addSubview(microphonePlayer)
        contentView.addSubview(microphonePlayer)
        //: contentView.addSubview(microphoneRedPlayer)
        contentView.addSubview(microphoneRedPlayer)
        //: contentView.addSubview(leftRedPlayer)
        contentView.addSubview(leftRedPlayer)
        //: contentView.addSubview(rightRedPlayer)
        contentView.addSubview(rightRedPlayer)
    }

    //: public func setRecordStatus (status: RecordStatus) {
    public func price(status: ShowBasicType) {
        //: leftRedPlayer.isHidden = status.rawValue <= 1
        leftRedPlayer.isHidden = status.rawValue <= 1
        //: rightRedPlayer.isHidden = status.rawValue <= 1
        rightRedPlayer.isHidden = status.rawValue <= 1
        //: microphoneRedPlayer.isHidden = status.rawValue <= 1
        microphoneRedPlayer.isHidden = status.rawValue <= 1
        //: microphonePlayer.isHidden = status.rawValue > 1
        microphonePlayer.isHidden = status.rawValue > 1

        //: switch status {
        switch status {
        //: case .recording:
        case .recording:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_imageMakeValue.suffix(5)) + "here" + String(str_tableValue.prefix(4)) + "cance" + str_layerValue.replacingOccurrences(of: "collection", with: "l")).localized
            //: durationLabel.textColor = UIColor.occurrence()
            durationLabel.textColor = UIColor.occurrence()
            //: micImageView.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.nearCounterval(name: (String(str_dataValue.prefix(5)) + "alk_vo" + String(str_labValue.prefix(6)) + "cordin" + String(str_requestDeleteValue.suffix(5))))
        //: break
        //: case .cancel:
        case .cancel:
            //: topTipLabel.text = "Release to cancel".localized
            topTipLabel.text = (String(str_blockName.prefix(6)) + "e to" + String(str_leadingValue)).localized
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_verticalAddNameData) + str_appValue.replacingOccurrences(of: "reply", with: "D")))
            //: micImageView.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.nearCounterval(name: String(bytes: str_listBetweenBottomName.map{buildMessage(gift: $0)}, encoding: .utf8)!)
            //: break

        //: case .tooLong:
        case .tooLong:
            //: topTipLabel.text = "The upper limit is reached".localized
            topTipLabel.text = (String(str_lengthName.prefix(6)) + "per li" + String(str_outputSecondText.suffix(4)) + "is r" + str_kindName.lowercased() + String(str_appContent)).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_verticalAddNameData) + str_appValue.replacingOccurrences(of: "reply", with: "D")))
            //: micImageView.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.nearCounterval(name: String(bytes: str_listBetweenBottomName.map{buildMessage(gift: $0)}, encoding: .utf8)!)
            //: break

        //: case .tooShoot:
        case .tooShoot:
            //: func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            atShow(showMsg: (String(str_availableName.suffix(6)) + String(str_colorValue)).localized)
            //: topTipLabel.text = "Talk too short".localized
            topTipLabel.text = (String(str_removeData.suffix(6)) + "oo sh" + str_showData.replacingOccurrences(of: "lab", with: "rt")).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(str_verticalAddNameData) + str_appValue.replacingOccurrences(of: "reply", with: "D")))
            //: micImageView.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.nearCounterval(name: String(bytes: str_listBetweenBottomName.map{buildMessage(gift: $0)}, encoding: .utf8)!)
            //: break

        //: default:
        default:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(str_imageMakeValue.suffix(5)) + "here" + String(str_tableValue.prefix(4)) + "cance" + str_layerValue.replacingOccurrences(of: "collection", with: "l")).localized
            //: durationLabel.text = "0″"
            durationLabel.text = "0″"
            //: durationLabel.textColor = UIColor.occurrence()
            durationLabel.textColor = UIColor.occurrence()
            //: micImageView.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.nearCounterval(name: (String(str_dataValue.prefix(5)) + "alk_vo" + String(str_labValue.prefix(6)) + "cordin" + String(str_requestDeleteValue.suffix(5))))
            //: break
        }
    }

    //: public func showView () {
    public func addBottom() {
        //: durationLabel.text = "0″"
        durationLabel.text = "0″"
        //: durationLabel.textColor = UIColor.occurrence()
        durationLabel.textColor = UIColor.occurrence()
    }

    //: public func hidenView () {
    public func detailTheme() {
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    //: public func startAnimation () {
    public func stud() {
        //: setRecordStatus(status: .todefault)
        price(status: .todefault)
    }

    //: public func setPlayer (player: SVGAPlayer, status: RecordStatus) {
    public func shankAction(player: SVGAPlayer, status: ShowBasicType) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            var url = DigitiserReactiveCompatible.default.game(type: .Chat_Record_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Red)
                url = DigitiserReactiveCompatible.default.game(type: .Chat_Record_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_dataTitle.prefix(6)) + "on error"))
        }
    }

    //: public func setMicrophonePlayer (player: SVGAPlayer, status: RecordStatus) {
    public func bowler(player: SVGAPlayer, status: ShowBasicType) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            var url = DigitiserReactiveCompatible.default.game(type: .Greet_Corrugated_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Red)
                url = DigitiserReactiveCompatible.default.game(type: .Greet_Corrugated_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_dataTitle.prefix(6)) + "on error"))
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor.init(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        content.backgroundColor = UIColor(red: 234 / 255.0, green: 234 / 255.0, blue: 234 / 255.0, alpha: 1.0)
        //: return content
        return content
        //: }()
    }()

    //: lazy var topTipLabel: UILabel = {
    lazy var topTipLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.inexpensiveness()
        lb.textColor = UIColor.inexpensiveness()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Move here to cancel".localized
        lb.text = (String(str_imageMakeValue.suffix(5)) + "here" + String(str_tableValue.prefix(4)) + "cance" + str_layerValue.replacingOccurrences(of: "collection", with: "l")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var leftPlayer: SVGAPlayer = {
    lazy var leftPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        shankAction(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var durationLabel: UILabel = {
    lazy var durationLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "0″"
        lb.text = "0″"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var rightPlayer: SVGAPlayer = {
    lazy var rightPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        shankAction(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphonePlayer: SVGAPlayer = {
    lazy var microphonePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .todefault)
        bowler(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphoneRedPlayer: SVGAPlayer = {
    lazy var microphoneRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .tooLong)
        bowler(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var micImageView: UIImageView = {
    lazy var micImageView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "btn_talk_voice_recording_nor")
        img.image = UIImage.nearCounterval(name: (String(str_dataValue.prefix(5)) + "alk_vo" + String(str_labValue.prefix(6)) + "cordin" + String(str_requestDeleteValue.suffix(5))))
        //: return img
        return img
        //: }()
    }()

    //: lazy var leftRedPlayer: SVGAPlayer = {
    lazy var leftRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        shankAction(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRedPlayer: SVGAPlayer = {
    lazy var rightRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        shankAction(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()
}
