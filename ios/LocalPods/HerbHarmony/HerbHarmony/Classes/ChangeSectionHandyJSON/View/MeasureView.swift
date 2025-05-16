
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_logData:[UInt8] = [0x99,0x9e,0x99,0xa4,0x58,0x93,0x9f,0x94,0x95,0xa2,0x6a,0x59,0x50,0x98,0x91,0xa3,0x50,0x9e,0x9f,0xa4,0x50,0x92,0x95,0x95,0x9e,0x50,0x99,0x9d,0xa0,0x9c,0x95,0x9d,0x95,0x9e,0xa4,0x95,0x94]

fileprivate func styleApp(cell num: UInt8) -> UInt8 {
    let value = Int(num) + 208
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_playerData:String = "btn_drender in"
fileprivate let str_listValue:[Character] = ["y","n","a","m","i"]
fileprivate let str_videoText:String = "c_stopof location"

/*: "icon_Topping_bg" :*/
fileprivate let str_sectionIndexName:[Character] = ["i","c","o","n","_","T","o","p"]
fileprivate let str_centerData:[Character] = ["p"]
fileprivate let str_voiceName:String = "ing_bglet bind origin"

/*: "#F5F5F5" :*/
fileprivate let str_modelValue:String = "#F5F5Fas extension import text return"
fileprivate let str_rowTitle:[Character] = ["5"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MeasureView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import UIKit
import UIKit

//: import SwiftUI
import SwiftUI

//: class TalkingMomentVideoCell: UIView {
class MeasureView: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.corner()
        //: self.setupSubViewsConstraint()
        self.nowadays()
        //: self.bindInteraction()
        self.premiereCounteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_logData.map{styleApp(cell: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: ButtonPlayerManager = {
        //: var  player: TalkingVideoPlayerManager
        var player: ButtonPlayerManager
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = ButtonPlayerManager.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = ButtonPlayerManager()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.manager(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.nearCounterval(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.nearCounterval(name: (String(str_playerData.prefix(5)) + String(str_listValue) + String(str_videoText.prefix(6)) + "_nor")))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.nearCounterval(name: "icon_Topping_bg")
        img.image = UIImage.nearCounterval(name: (String(str_sectionIndexName) + String(str_centerData) + String(str_voiceName.prefix(6))))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension MeasureView {
    //: @objc func enterBackgroundNotification() {
    @objc func pathNotification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.behindButton()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func getEnableUponNotification() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.actionController()!.isKind(of: ShouldBridgeRecognizerDelegate.self) {
            //: self.player.resume()
            self.player.beforeAdd()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func perimeter(model: ExtraMeasurable, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.nearSquare(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func edit() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.drunk(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.manager(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.last(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func party() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.modelPlay()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.manager(bEnable: true)
    }

    //: func pausePlay() {
    func clothDrunkError() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.behindButton()
        }
    }

    //: func resume() {
    func quitMake() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.manager(bEnable: true)
        //: self.player.resume()
        self.player.beforeAdd()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension MeasureView: MainReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func poolPlayerReport(player _: ButtonPlayerManager, status: TotalPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.manager(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.last(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func informant(player _: ButtonPlayerManager, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func showSub(player _: ButtonPlayerManager, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension MeasureView {
    // 添加视图
    //: private func setupSubviews() {
    private func corner() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(str_modelValue.prefix(6)) + String(str_rowTitle)))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func nowadays() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func premiereCounteraction() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(pathNotification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getEnableUponNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
