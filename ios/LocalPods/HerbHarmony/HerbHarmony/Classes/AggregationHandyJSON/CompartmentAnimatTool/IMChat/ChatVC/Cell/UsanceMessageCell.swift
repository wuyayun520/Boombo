
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viewData:[UInt8] = [0xdc,0xdb,0xdc,0xc1,0x9d,0xd6,0xda,0xd1,0xd0,0xc7,0x8f,0x9c,0x95,0xdd,0xd4,0xc6,0x95,0xdb,0xda,0xc1,0x95,0xd7,0xd0,0xd0,0xdb,0x95,0xdc,0xd8,0xc5,0xd9,0xd0,0xd8,0xd0,0xdb,0xc1,0xd0,0xd1]

/*: "icon_chat_start" :*/
fileprivate let str_selectionText:String = "image guard make error leticon_c"
fileprivate let str_contentData:String = "view value gift returnhat_start"

/*: "icon_chat_lock" :*/
fileprivate let str_makeToolAppValue:String = "icallon"
fileprivate let str_originModeName:String = "LOCK"

/*: "icon_chat_burned" :*/
fileprivate let str_indicatorValue:String = "icon_clet gap equal"
fileprivate let str_atName:[Character] = ["b","u","r","n","e","d"]

/*: "icon_chat_burned_shan" :*/
fileprivate let str_makeText:[Character] = ["i","c","o","n","_","c","h","a","t","_","b","u","r","n"]
fileprivate let str_lengthCenterInnerName:[Character] = ["e","d","_","s","h","a","n"]

/*: "Already burned" :*/
fileprivate let str_taskTitle:[Character] = ["A","l","r","e","a","d","y"," ","b","u","r","n","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UsanceMessageCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: import FLAnimatedImage
import FLAnimatedImage

//: class TalkingChatVideoMsgCell: TalkingChatBaseMsgCell {
class UsanceMessageCell: MTouchMsgCell {
    //: var videoData: DemonstrateCellData?
    var videoData: DemonstrateCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.container.addSubview(picImgView)
        self.container.addSubview(picImgView)
        //: picImgView.addSubview(self.playImgView)
        picImgView.addSubview(self.playImgView)
        //: picImgView.addSubview(self.shadeView)
        picImgView.addSubview(self.shadeView)
        //: picImgView.addSubview(self.lockImgView)
        picImgView.addSubview(self.lockImgView)
        //: picImgView.addSubview(self.burnedImgView)
        picImgView.addSubview(self.burnedImgView)
        //: picImgView.addSubview(self.dutationLab)
        picImgView.addSubview(self.dutationLab)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viewData.map{$0^181}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: private lazy var picImgView: FLAnimatedImageView = {
    private lazy var picImgView: FLAnimatedImageView = {
        //: let imgV = FLAnimatedImageView.init()
        let imgV = FLAnimatedImageView()
        //: imgV.layer.cornerRadius = 10
        imgV.layer.cornerRadius = 10
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.backgroundColor = UIColor.white
        imgV.backgroundColor = UIColor.white
        //: imgV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imgV.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: return imgV
        return imgV
        //: }()
    }()

    // 播放图标
    //: private lazy var playImgView: UIImageView = {
    private lazy var playImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.image = UIImage.nearCounterval(name: "icon_chat_start")
        imgV.image = UIImage.nearCounterval(name: (String(str_selectionText.suffix(6)) + String(str_contentData.suffix(9))))
        //: return imgV
        return imgV
        //: }()
    }()

    // 半透明遮罩
    //: private lazy var shadeView: UIView = {
    private lazy var shadeView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(white: 0, alpha: 0.55)
        view.backgroundColor = UIColor(white: 0, alpha: 0.55)
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()

    // 私密视频“锁”标识
    //: private lazy var lockImgView: UIImageView = {
    private lazy var lockImgView: UIImageView = {
        //: let imgV = UIImageView.init()
        let imgV = UIImageView()
        //: imgV.alpha = 0.9
        imgV.alpha = 0.9
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.image = UIImage.nearCounterval(name: "icon_chat_lock")
        imgV.image = UIImage.nearCounterval(name: (str_makeToolAppValue.replacingOccurrences(of: "call", with: "c") + "_chat_" + str_originModeName.lowercased()))
        //: return imgV
        return imgV
        //: }()
    }()

    // 已“阅后即焚”标识
    //: private lazy var burnedImgView: TalkingButton = {
    private lazy var burnedImgView: RoomThen = {
        //: let imgV = TalkingButton.init()
        let imgV = RoomThen()
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.setBackgroundImage(UIImage.nearCounterval(name: "icon_chat_burned"), for: .normal)
        imgV.setBackgroundImage(UIImage.nearCounterval(name: (String(str_indicatorValue.prefix(6)) + "hat_" + String(str_atName))), for: .normal)
        //: imgV.setImage(UIImage.nearCounterval(name: "icon_chat_burned_shan"), for: .normal)
        imgV.setImage(UIImage.nearCounterval(name: (String(str_makeText) + String(str_lengthCenterInnerName))), for: .normal)
        //: imgV.imageAlignment = .top
        imgV.imageAlignment = .top
        //: imgV.spaceBetweenTitleAndImage = 20
        imgV.spaceBetweenTitleAndImage = 20
        //: imgV.setTitle("Already burned".localized, for: .normal)
        imgV.setTitle((String(str_taskTitle)).localized, for: .normal)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.titleLabel?.font = UIFont.unprecedented(fontSize: 16)
        imgV.titleLabel?.font = UIFont.unprecedented(fontSize: 16)
        //: return imgV
        return imgV
        //: }()
    }()

    // 视频时长
    //: private lazy var dutationLab: UILabel = {
    private lazy var dutationLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.backgroundColor = UIColor(white: 0, alpha: 0.5)
        label.backgroundColor = UIColor(white: 0, alpha: 0.5)
        //: label.textColor = UIColor.white
        label.textColor = UIColor.white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.font = UIFont.unprecedented(fontSize: 14)
        label.font = UIFont.unprecedented(fontSize: 14)
        //: label.layer.cornerRadius = 10
        label.layer.cornerRadius = 10
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: return label
        return label
        //: }()
    }()
}

//: extension TalkingChatVideoMsgCell {
extension UsanceMessageCell {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: self.videoData = data as? DemonstrateCellData
        self.videoData = data as? DemonstrateCellData
        //: guard let newData = self.videoData else { return }
        guard let newData = self.videoData else { return }
        //: self.picImgView.backgroundColor = UIColor.white
        self.picImgView.backgroundColor = UIColor.white
        //: let videoModel = newData.msgModel.msgInfo.video
        let videoModel = newData.msgModel.msgInfo.video
        //: let duration = videoModel.duration > 0 ? videoModel.duration:newData.msgModel.msgInfo.customSend.duration
        let duration = videoModel.duration > 0 ? videoModel.duration : newData.msgModel.msgInfo.customSend.duration
        //: self.dutationLab.text = NSDate.videoTimeFormat(totalTime: duration)
        self.dutationLab.text = NSDate.upTime(totalTime: duration)
        //: self.playImgView.isHidden = false
        self.playImgView.isHidden = false
        //: self.shadeView.isHidden = true
        self.shadeView.isHidden = true
        //: self.lockImgView.isHidden = true
        self.lockImgView.isHidden = true
        //: self.burnedImgView.isHidden = true
        self.burnedImgView.isHidden = true

        //: var imgIsMosaic = true
        var imgIsMosaic = true

        //: if videoModel.lockStatus == 1 {
        if videoModel.lockStatus == 1 { // 锁定状态，添加"锁"标识
            //: self.shadeView.isHidden = false
            self.shadeView.isHidden = false
            //: self.lockImgView.isHidden = false
            self.lockImgView.isHidden = false
            //: } else if videoModel.burnStatus == 1 {
        } else if videoModel.burnStatus == 1 { // 已阅后即焚，销毁
            //: self.playImgView.isHidden = true
            self.playImgView.isHidden = true
            //: self.shadeView.isHidden = false
            self.shadeView.isHidden = false
            //: self.burnedImgView.isHidden = false
            self.burnedImgView.isHidden = false
            //: } else if (videoModel.lockStatus != 1 && videoModel.burnStatus == -1) {
        } else if videoModel.lockStatus != 1, videoModel.burnStatus == -1 { // 已解锁的永久私密视频，展示原图
            //: imgIsMosaic = false
            imgIsMosaic = false
        }
        //: self.loadIntimatePhoto(urlStr: videoModel.coverImg, isMosaic: imgIsMosaic)
        self.gestureMosaic(urlStr: videoModel.coverImg, isMosaic: imgIsMosaic)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.picImgView.snp.remakeConstraints { make in
        self.picImgView.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(2)
            make.top.equalTo(2)
            //: make.width.height.equalTo(120)
            make.width.height.equalTo(120)
        }
        //: self.dutationLab.snp.remakeConstraints { make in
        self.dutationLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(64)
            make.leading.equalTo(64)
            //: make.top.equalTo(94)
            make.top.equalTo(94)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.playImgView.snp.remakeConstraints { make in
        self.playImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(46)
            make.width.equalTo(46)
            //: make.height.equalTo(47)
            make.height.equalTo(47)
        }
        //: self.shadeView.snp.remakeConstraints { make in
        self.shadeView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: self.lockImgView.snp.remakeConstraints { make in
        self.lockImgView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(35)
            make.width.equalTo(35)
            //: make.height.equalTo(45)
            make.height.equalTo(45)
        }
        //: self.burnedImgView.snp.remakeConstraints { make in
        self.burnedImgView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: func loadIntimatePhoto(urlStr: String, isMosaic: Bool) -> Void {
    func gestureMosaic(urlStr: String, isMosaic: Bool) {
        //: guard let newData = self.videoData else { return }
        guard let newData = self.videoData else { return }
        //: let coverImgPath = newData.msgModel.msgInfo.customSend.localCoverImg
        let coverImgPath = newData.msgModel.msgInfo.customSend.localCoverImg

        //: let isExit = FileManager.default.fileExists(atPath: coverImgPath)
        let isExit = FileManager.default.fileExists(atPath: coverImgPath)
        //: if !coverImgPath.isEmptyString && isExit {
        if !coverImgPath.isEmptyString, isExit { // 加载本地
            //: let data = NSData(contentsOfFile: coverImgPath)
            let data = NSData(contentsOfFile: coverImgPath)
            //: let image = UIImage(data: data! as Data)
            let image = UIImage(data: data! as Data)
            //: if isMosaic {
            if isMosaic {
                //: self.picImgView.image = UIImage.error(image, size: 90)
                self.picImgView.image = UIImage.error(image, size: 90)
                //: } else {
            } else {
                //: self.picImgView.image = image
                self.picImgView.image = image
            }
            //: } else {
        } else { // 网络图片
            //: self.picImgView.setCookieToUrlImage(urlStr: urlStr) {  [weak self] image in
            self.picImgView.oreoCookieWhiteCompletion(urlStr: urlStr) { [weak self] image in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if image != nil && isMosaic {
                if image != nil, isMosaic {
                    //: self.picImgView.image = UIImage.error(image, size: 90)
                    self.picImgView.image = UIImage.error(image, size: 90)
                }
            }
        }
    }

    //: func removeGes() {
    func imageInstanceGes() {
        //: for  ges in self.container.gestureRecognizers! {
        for ges in self.container.gestureRecognizers! {
            //: self.container.removeGestureRecognizer(ges)
            self.container.removeGestureRecognizer(ges)
        }
    }
}
