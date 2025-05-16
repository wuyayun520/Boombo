
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_topInfoTitle:[UInt8] = [0xcf,0xc8,0xcf,0xd2,0x8e,0xc5,0xc9,0xc2,0xc3,0xd4,0x9c,0x8f,0x86,0xce,0xc7,0xd5,0x86,0xc8,0xc9,0xd2,0x86,0xc4,0xc3,0xc3,0xc8,0x86,0xcf,0xcb,0xd6,0xca,0xc3,0xcb,0xc3,0xc8,0xd2,0xc3,0xc2]

private func firstListener(mid num: UInt8) -> UInt8 {
    return num ^ 166
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_textTabName:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s","t","o"]
fileprivate let str_colorCanTitle:String = "popular view valuep_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TUserDetailHeaderItemCell: UICollectionViewCell {
class EnableReactiveCompatible: UICollectionViewCell {
    //: var playFinishBlock: (() -> Void)?
    var playFinishBlock: (() -> Void)? // 视频是否播放完毕
    //: private var videoUrl = ""            // 视频地址
    private var videoUrl = "" // 视频地址

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_topInfoTitle.map{firstListener(mid: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var bgImgView: UIImageView = {
    lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.placeSquareBigImgBanner()
        imgV.image = UIImage.firstMake()
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: ButtonPlayerManager = {
        //: var player = TalkingVideoPlayerManager()
        var player = ButtonPlayerManager()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.manager(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var coverView: UIImageView = {
    private lazy var coverView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let imag = UIImageView(image: UIImage.nearCounterval(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.nearCounterval(name: (String(str_textTabName) + String(str_colorCanTitle.suffix(5)))))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TUserDetailHeaderItemCell {
extension EnableReactiveCompatible {
    //: func configModel(videoUrl: String, imgUrl: String ) {
    func leave(videoUrl: String, imgUrl: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
        //: self.coverView.setUrlImage(urlStr: imgUrl)
        self.coverView.nearSquare(urlStr: imgUrl)
    }

    /// 开始播放视频
    //: func setupPlayer() {
    func assumedName() {
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self.coverView)
        self.player.drunk(url: videoUrl, view: self.coverView)
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.last(renderMode: .FILL_SCREEN)
    }
}

// MARK: - MainReactiveCompatible

//: extension TUserDetailHeaderItemCell: TalkingVideoPlayerDelegate {
extension EnableReactiveCompatible: MainReactiveCompatible {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func poolPlayerReport(player _: ButtonPlayerManager, status: TotalPlayerStatus) {
        //: if (status == .Pausing) {
        if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: self.player.stopPlay()
            self.player.modelPlay()
            // 视频播放完毕回调block
            //: if playFinishBlock != nil {
            if playFinishBlock != nil {
                //: playFinishBlock!()
                playFinishBlock!()
            }
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {}
    func informant(player _: ButtonPlayerManager, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {}
    func showSub(player _: ButtonPlayerManager, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension TUserDetailHeaderItemCell {
extension EnableReactiveCompatible {
    /// 图片
    //: func setImageView() {
    func addText() {
        //: contentView.addSubview(bgImgView)
        contentView.addSubview(bgImgView)
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 视频
    //: func setVideoView() {
    func realizedRefuse() {
        //: contentView.addSubview(coverView)
        contentView.addSubview(coverView)
        //: coverView.snp.remakeConstraints { make in
        coverView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: coverView.addSubview(playimageView)
        coverView.addSubview(playimageView)
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 63, height: 63))
            make.size.equalTo(CGSize(width: 63, height: 63))
        }
    }
}
