
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_directionData:String = "picture color position live#33005B"

/*: "get json error" :*/
fileprivate let str_itemValue:[Character] = ["g","e","t"," ","j"]
fileprivate let str_pathData:[Character] = ["s","o","n"," ","e","r","r","o","r"]

/*: "btn_live_mini_nor" :*/
fileprivate let str_makeData:[Character] = ["b","t","n","_","l","i","v","e","_","m"]
fileprivate let str_windowCommentName:[Character] = ["i","n","i","_","n","o","r"]

/*: "icon_views_number" :*/
fileprivate let str_aspectText:[Character] = ["i","c","o","n","_","v","i","e","w","s","_","n","u","m","b"]
fileprivate let str_statusContent:String = "elog"

/*: "Random Video" :*/
fileprivate let str_titleData:[Character] = ["R","a","n","d","o","m"," "]
fileprivate let str_formatText:String = "Videotext video text return"

/*: "Accept Video Match Call" :*/
fileprivate let str_nearName:String = "list shadowAccept"
fileprivate let str_appText:String = "eo Mview section render let"
fileprivate let str_popValue:[Character] = ["a","t","c","h"," ","C","a","l","l"]

/*: "%@ chatting" :*/
fileprivate let str_modelText:String = "error false location%@ chat"
fileprivate let str_onceData:String = "tisking"

/*: "chattingNum" :*/
fileprivate let str_ofViewValue:[Character] = ["c","h","a","t","t","i","n","g","N","u"]
fileprivate let str_barName:String = "generate"

/*: "type" :*/
fileprivate let str_buttonContent:[UInt8] = [0x1d,0x10,0x19,0xc]

private func sectionTab(full num: UInt8) -> UInt8 {
    return num ^ 105
}

/*: "randomVideo" :*/
fileprivate let str_iconName:String = "ranbackom"
fileprivate let str_clearName:String = "Videoleading text"

/*: "-1" :*/
fileprivate let str_destroyName:String = "-screen"

/*: "value" :*/
fileprivate let str_designTitle:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerMediaViewController.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class ManagerMediaViewController: NameViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        atLab()
        //: setupSubViewsConstraint()
        counteraction()
        //: req_videoMatchCheck()
        checkQuery()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(str_directionData.suffix(7))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = DigitiserReactiveCompatible.default.game(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.believe()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_itemValue) + String(str_pathData)))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_makeData) + String(str_windowCommentName))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(library), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_aspectText) + str_statusContent.replacingOccurrences(of: "log", with: "r"))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.nearCounterval(name: (String(str_aspectText) + str_statusContent.replacingOccurrences(of: "log", with: "r"))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(str_titleData) + String(str_formatText.prefix(5))).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.behindUpRoom(fontSize: 20)
        lab1.font = UIFont.behindUpRoom(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(str_nearName.suffix(6)) + " Vid" + String(str_appText.prefix(4)) + String(str_popValue)).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.unprecedented(fontSize: 15)
        lab2.font = UIFont.unprecedented(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.alright()
        swit.onTintColor = UIColor.alright()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(fileKey), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension ManagerMediaViewController {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func checkQuery() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        NumberimateReactiveCompatible.dismissAction { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(str_modelText.suffix(7)) + str_onceData.replacingOccurrences(of: "skin", with: "n")).localizedArguments(json[(String(str_ofViewValue) + str_barName.replacingOccurrences(of: "generate", with: "m"))].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func eventChange() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: str_buttonContent.map{sectionTab(full: $0)}, encoding: .utf8)!: (str_iconName.replacingOccurrences(of: "back", with: "d") + String(str_clearName.prefix(5)))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(String(str_designTitle))] = value
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        QuantityeractionThen.sceneInAddCompletion(params: params) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: WithAdministratorAppManager.share.appUserConfigMode.randomVideo = value
            WithAdministratorAppManager.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.believe()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension ManagerMediaViewController {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func library() {
        //: getNavigationController()?.popViewController(animated: false)
        navigation()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func fileKey() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        eventChange()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension ManagerMediaViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func atLab() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func counteraction() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(kLet_messageContent + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
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

    /// 刷新UI
    //: private func refreshUI() {
    private func believe() {
        //: if WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1" {
        if WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1")
    }
}
