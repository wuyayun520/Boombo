
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelFormatValue:[UInt8] = [0x84,0x89,0x84,0x8f,0x43,0x7e,0x8a,0x7f,0x80,0x8d,0x55,0x44,0x3b,0x83,0x7c,0x8e,0x3b,0x89,0x8a,0x8f,0x3b,0x7d,0x80,0x80,0x89,0x3b,0x84,0x88,0x8b,0x87,0x80,0x88,0x80,0x89,0x8f,0x80,0x7f]

fileprivate func clearManager(info num: UInt8) -> UInt8 {
    let value = Int(num) - 27
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_video" :*/
fileprivate let str_kitName:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o"]

/*: "Receive video calls" :*/
fileprivate let str_handleName:String = "Receilab self clear var color"
fileprivate let str_progressData:String = "make online equal image labve "
fileprivate let str_actionTitle:String = "vidobserve"

/*: "icon_me_voice" :*/
fileprivate let str_shareData:[Character] = ["i","c","o","n","_","m","e","_","v","o","i","c","e"]

/*: "Receive voice calls" :*/
fileprivate let str_kitOfContent:[Character] = ["R","e","c","e","i"]
fileprivate let str_gestureContent:String = "ve vsource request session model no"
fileprivate let str_colorData:String = "arequestrequests"

/*: "icon_me_randomvideo" :*/
fileprivate let str_effectData:String = "scale"
fileprivate let str_originTitle:String = "con_meprivate cell let in text"
fileprivate let str_bagData:String = "itemideo"

/*: "Random Video" :*/
fileprivate let str_blankBlockValue:String = "count view viewRandom "
fileprivate let str_labTopData:String = "self style print in screenVideo"

/*: "-1" :*/
fileprivate let str_toolData:String = "-1"

/*: "value" :*/
fileprivate let str_shareYourValue:String = "vsenselue"

/*: "type" :*/
fileprivate let str_errorShapeValue:[Character] = ["t","y","p","e"]

/*: "videoAuth" :*/
fileprivate let str_keyData:String = "VID"
fileprivate let str_packageText:String = "eoAuthview equal view"

/*: "voiceAuth" :*/
fileprivate let str_tableData:[Character] = ["v","o","i","c","e"]
fileprivate let str_remoteName:String = "guard at class put onlineAuth"

/*: "randomVideo" :*/
fileprivate let str_layerValue:[Character] = ["r","a","n","d","o","m","V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SaddleViewCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum RetardationVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class SaddleViewCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: RetardationVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelFormatValue.map{clearManager(info: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.alright()
        swit.onTintColor = UIColor.alright()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(label), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension SaddleViewCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func sort(type: RetardationVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.nearCounterval(name: "icon_me_video")
            icon.image = UIImage.nearCounterval(name: (String(str_kitName)))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(str_handleName.prefix(5)) + String(str_progressData.suffix(3)) + str_actionTitle.replacingOccurrences(of: "observe", with: "e") + "o calls").localized
            //: switchView.isOn = (WithAdministratorAppManager.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (WithAdministratorAppManager.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.nearCounterval(name: "icon_me_voice")
            icon.image = UIImage.nearCounterval(name: (String(str_shareData)))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(str_kitOfContent) + String(str_gestureContent.prefix(4)) + "oice c" + str_colorData.replacingOccurrences(of: "request", with: "l")).localized
            //: switchView.isOn = (WithAdministratorAppManager.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (WithAdministratorAppManager.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.nearCounterval(name: "icon_me_randomvideo")
            icon.image = UIImage.nearCounterval(name: (str_effectData.replacingOccurrences(of: "scale", with: "i") + String(str_originTitle.prefix(6)) + "_rando" + str_bagData.replacingOccurrences(of: "item", with: "mv")))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(str_blankBlockValue.suffix(7)) + String(str_labTopData.suffix(5))).localized
            //: switchView.isOn = (WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func label() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(str_shareYourValue.replacingOccurrences(of: "sense", with: "a"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(String(str_errorShapeValue))] = (str_keyData.lowercased() + String(str_packageText.prefix(6)))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(String(str_errorShapeValue))] = (String(str_tableData) + String(str_remoteName.suffix(4)))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(String(str_errorShapeValue))] = (String(str_layerValue))
        }
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        QuantityeractionThen.sceneInAddCompletion(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: WithAdministratorAppManager.share.loginUserMode.videoAuth = value
                WithAdministratorAppManager.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: WithAdministratorAppManager.share.loginUserMode.voiceAuth = value
                WithAdministratorAppManager.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: WithAdministratorAppManager.share.appUserConfigMode.randomVideo = value
                WithAdministratorAppManager.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (ShouldKingfisherCompatible.shared as! ShouldKingfisherCompatible).femaleSection()
        }
    }
}
