
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputValue:[UInt8] = [0xbf,0xc4,0xbf,0xca,0x7e,0xb9,0xc5,0xba,0xbb,0xc8,0x90,0x7f,0x76,0xbe,0xb7,0xc9,0x76,0xc4,0xc5,0xca,0x76,0xb8,0xbb,0xbb,0xc4,0x76,0xbf,0xc3,0xc6,0xc2,0xbb,0xc3,0xbb,0xc4,0xca,0xbb,0xba]

fileprivate func pathTable(text num: UInt8) -> UInt8 {
    let value = Int(num) - 86
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MiniskirtMiniView.swift
//  AbroadTalking
//
//  Created by young on 2023/6/16.
//

//: import UIKit
import UIKit

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: class UserLivePullStreamsView: TalkingBaseMiniView {
class MiniskirtMiniView: ShowView {
    // 播放结束Block
    //: var playEndBlock: (() -> Void)?
    var playEndBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubViewsConstraint()
        loadConstraint()
        //: addTapGesture()
        tapGesture()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputValue.map{pathTable(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowView: UIView = {
    private lazy var shadowView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        view.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 76, height: 115), cornerRadius: 10).cgPath
        //: view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.74, green: 0.74, blue: 0.74, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 8
        view.layer.shadowRadius = 8
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = { // 视频渲染视图
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .occurrence()
        view.backgroundColor = .occurrence()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = false
        view.isUserInteractionEnabled = false
        //: self.addSubview(view)
        self.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TXLivePlayer = {
    private lazy var player: TXLivePlayer = {
        //: var player = TXLivePlayer()
        var player = TXLivePlayer()
        //: player.delegate = self
        player.delegate = self
        //: player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        player.setRenderMode(.RENDER_MODE_FILL_SCREEN)
        //: player.setMute(true)
        player.setMute(true)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension UserLivePullStreamsView {
extension MiniskirtMiniView {
    /// 开始播放直播
    //: func setupPlayer(liveUrl: String) {
    func physicalStructureUrl(liveUrl: String) {
        //: self.player.startLivePlay(liveUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        self.player.startLivePlay(liveUrl, type: TX_Enum_PlayType.PLAY_TYPE_LIVE_FLV)
        //: self.player.setupVideoWidget(renderView.bounds, contain: renderView, insert: 0)
        self.player.setupVideoWidget(renderView.bounds, contain: renderView, insert: 0)
    }
}

// MARK: - TXLivePlayListener【直播拉流监听】

//: extension UserLivePullStreamsView: TXLivePlayListener {
extension MiniskirtMiniView: TXLivePlayListener {
    //: func onPlayEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPlayEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        // 拉流失败，退出播放
        //: if evtID == PLAY_EVT_PLAY_END.rawValue ||
        if evtID == PLAY_EVT_PLAY_END.rawValue ||
            //: evtID == PLAY_ERR_NET_DISCONNECT.rawValue ||
            evtID == PLAY_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            evtID == PLAY_ERR_GET_RTMP_ACC_URL_FAIL.rawValue ||
            //: evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            evtID == PLAY_ERR_HEVC_DECODE_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            evtID == PLAY_ERR_STREAM_SWITCH_FAIL.rawValue ||
            //: evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue {
            evtID == PLAY_ERR_STREAM_SERVER_REFUSED.rawValue
        {
            //: self.playEndBlock?()
            self.playEndBlock?()
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}
}

// MARK: - Layout

//: extension UserLivePullStreamsView {
extension MiniskirtMiniView {
    // 更新约束
    //: private func setupSubViewsConstraint() {
    private func loadConstraint() {
        //: self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        self.bounds = CGRect(x: 0, y: 0, width: 88, height: 127)
        //: self.shadowView.frame = CGRect(x: 6, y: 6, width: 76, height: 115)
        self.shadowView.frame = CGRect(x: 6, y: 6, width: 76, height: 115)
        //: self.bgView.frame = self.shadowView.frame
        self.bgView.frame = self.shadowView.frame
        //: self.renderView.frame = self.shadowView.frame
        self.renderView.frame = self.shadowView.frame
    }
}
