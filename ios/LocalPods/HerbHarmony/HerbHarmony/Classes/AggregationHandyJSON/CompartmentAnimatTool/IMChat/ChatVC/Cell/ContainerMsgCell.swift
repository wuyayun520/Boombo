
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_roomTitle:[UInt8] = [0x92,0x95,0x92,0x8f,0xd3,0x98,0x94,0x9f,0x9e,0x89,0xc1,0xd2,0xdb,0x93,0x9a,0x88,0xdb,0x95,0x94,0x8f,0xdb,0x99,0x9e,0x9e,0x95,0xdb,0x92,0x96,0x8b,0x97,0x9e,0x96,0x9e,0x95,0x8f,0x9e,0x9f]

private func deviceLive(info num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "extra" :*/
fileprivate let str_countData:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let str_clearValue:String = "msgInfoelse class"

/*: "icon_talk_left_voive_3" :*/
fileprivate let str_modelName:[Character] = ["i","c","o","n","_","t","a","l","k","_","l","e"]
fileprivate let str_effectData:String = "ft_type else user"
fileprivate let str_liveTapText:[Character] = ["v","o","i","v","e","_","3"]

/*: "icon_talk_right_voive_3" :*/
fileprivate let str_sizeCancelName:String = "icon_telse normal in"
fileprivate let str_resultPriceValue:String = "background titleght_voi"
fileprivate let str_sourceData:[Character] = ["v","e","_","3"]

/*: "%ld″" :*/
fileprivate let str_componentDragName:[Character] = ["%","l","d","″"]

/*: "audioLength" :*/
fileprivate let str_bagName:String = "model coloraudioL"

/*: "isPlayingStatus" :*/
fileprivate let str_recordData:String = "equal with valueisPlayi"
fileprivate let str_endData:String = "true following size enter framengStatus"

/*: "activityShowStatus" :*/
fileprivate let str_infoName:String = "actisizei"
fileprivate let str_addTitle:String = "data letowStatus"

/*: "0″" :*/
fileprivate let str_byTitle:String = "0\u{2033}"

/*: "FF506D" :*/
fileprivate let str_popData:String = "viewview506D"

/*: "icon_talk_left_voive_1" :*/
fileprivate let str_smallData:String = "icon_telse quick self"
fileprivate let str_signContent:String = "left_model notice app"
fileprivate let str_directionValue:[Character] = ["v","o","i","v","e","_","1"]

/*: "icon_talk_left_voive_2" :*/
fileprivate let str_createName:[Character] = ["i","c","o","n","_","t","a","l","k","_","l"]
fileprivate let str_modeText:String = "efshare"
fileprivate let str_makeImageText:[Character] = ["_","v","o","i","v","e","_","2"]

/*: "icon_talk_right_voive_1" :*/
fileprivate let str_frameValue:[Character] = ["i","c","o","n","_","t","a","l","k","_","r","i","g","h","t","_","v","o","i"]
fileprivate let str_rawNearData:String = "self self methodve_1"

/*: "icon_talk_right_voive_2" :*/
fileprivate let str_hideData:[Character] = ["i","c","o","n","_","t"]
fileprivate let str_liveData:[Character] = ["a"]
fileprivate let str_topTableText:String = "back face itemlk_ri"
fileprivate let str_styleData:String = "raw range frame super tovoive_2"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerMsgCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class ContainerMsgCell: MTouchMsgCell {
    //: var audioData: VoxCellData?
    var audioData: VoxCellData?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        thanModel()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_roomTitle.map{deviceLive(info: $0)}, encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: audioData = data as? VoxCellData
        audioData = data as? VoxCellData
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic[(String(str_countData))]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic[(String(str_clearValue.prefix(7)))]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = TUIMsgChatManager.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.occurrence()
                self.lenLB.textColor = UIColor.occurrence()
                //: self.voiceImageV.image = UIImage.nearCounterval(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.nearCounterval(name: (String(str_modelName) + String(str_effectData.prefix(3)) + String(str_liveTapText)))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = colorMode()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.nearCounterval(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.nearCounterval(name: (String(str_sizeCancelName.prefix(6)) + "alk_ri" + String(str_resultPriceValue.suffix(7)) + String(str_sourceData)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = priceImag()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(str_bagName.suffix(6)) + "ength")].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(str_bagName.suffix(6)) + "ength")].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(str_recordData.suffix(7)) + String(str_endData.suffix(8)))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (str_infoName.replacingOccurrences(of: "size", with: "v") + "tySh" + String(str_addTitle.suffix(8)))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    }

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.occurrence()
        label.textColor = UIColor.occurrence()
        //: label.font = UIFont.unprecedented(fontSize: 17)
        label.font = UIFont.unprecedented(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: (str_popData.replacingOccurrences(of: "view", with: "F")))
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension ContainerMsgCell {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func colorMode() -> [UIImage] {
        //: return [UIImage.nearCounterval(name: "icon_talk_left_voive_1"), UIImage.nearCounterval(name: "icon_talk_left_voive_2"), UIImage.nearCounterval(name: "icon_talk_left_voive_3")]
        return [UIImage.nearCounterval(name: (String(str_smallData.prefix(6)) + "alk_" + String(str_signContent.prefix(5)) + String(str_directionValue))), UIImage.nearCounterval(name: (String(str_createName) + str_modeText.replacingOccurrences(of: "share", with: "t") + String(str_makeImageText))), UIImage.nearCounterval(name: (String(str_modelName) + String(str_effectData.prefix(3)) + String(str_liveTapText)))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func priceImag() -> [UIImage] {
        //: return [UIImage.nearCounterval(name: "icon_talk_right_voive_1"), UIImage.nearCounterval(name: "icon_talk_right_voive_2"), UIImage.nearCounterval(name: "icon_talk_right_voive_3")]
        return [UIImage.nearCounterval(name: (String(str_frameValue) + String(str_rawNearData.suffix(4)))), UIImage.nearCounterval(name: (String(str_hideData) + String(str_liveData) + String(str_topTableText.suffix(5)) + "ght_" + String(str_styleData.suffix(7)))), UIImage.nearCounterval(name: (String(str_sizeCancelName.prefix(6)) + "alk_ri" + String(str_resultPriceValue.suffix(7)) + String(str_sourceData)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension ContainerMsgCell {
    //: func designCellView() {
    func thanModel() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = MeanSunLanguageManager.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
