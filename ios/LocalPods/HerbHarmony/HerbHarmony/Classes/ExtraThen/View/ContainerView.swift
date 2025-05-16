
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorData:[UInt8] = [0x80,0x87,0x80,0x9d,0xc1,0x8a,0x86,0x8d,0x8c,0x9b,0xd3,0xc0,0xc9,0x81,0x88,0x9a,0xc9,0x87,0x86,0x9d,0xc9,0x8b,0x8c,0x8c,0x87,0xc9,0x80,0x84,0x99,0x85,0x8c,0x84,0x8c,0x87,0x9d,0x8c,0x8d]

/*: "Video Cover" :*/
fileprivate let str_sizeData:[Character] = ["V","i","d","e","o"," ","C"]
fileprivate let str_centerData:[Character] = ["o","v","e","r"]

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let str_sectionValue:[UInt8] = [0xcc,0xe9,0xe9,0xe4,0xe3,0xea,0xad,0xec,0xad,0xfb,0xe4,0xe9,0xe8,0xe2,0xad,0xee,0xe2,0xfb,0xe8,0xff,0xad,0xf9,0xe2,0xad,0xfe,0xe5,0xe2,0xfa,0xad,0xf9,0xe5,0xe8,0xad,0xee,0xe5,0xec,0xff,0xe0,0xad,0xee,0xec,0xe3,0xad,0xea,0xe8,0xf9,0xad,0xe0,0xe2,0xff,0xe8,0xad,0xea,0xe2,0xe2,0xe9,0xad,0xeb,0xe8,0xe8,0xe1,0xe4,0xe3,0xea,0xfe,0xa3]

private func appSpend(a num: UInt8) -> UInt8 {
    return num ^ 141
}

/*: "img_me_edit_video_default" :*/
fileprivate let str_toData:String = "img_minside true to"
fileprivate let str_progressData:[Character] = ["e","_","e","d","i","t","_","v","i","d","e","o","_","d","e","f","a","u","l","t"]

/*: "btn_me_edit_photo_change" :*/
fileprivate let str_intimateData:String = "round makebtn_m"
fileprivate let str_atName:String = "t_phlast equal"
fileprivate let str_drawValue:String = "button"
fileprivate let str_withEditTitle:String = "HANGE"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let str_iconName:[Character] = ["b","t","n","_","d","y","n","a","m","i"]
fileprivate let str_shareValue:[Character] = ["c"]
fileprivate let str_tableText:String = "_stotype make array view"

/*: "#FF506D" :*/
fileprivate let str_messageData:[Character] = ["#","F"]
fileprivate let str_becomeCellTitle:[Character] = ["F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let str_mName:[Character] = ["R","e","v","i","e","w","i","n","g"]

/*: "Shoot video at least 5 seconds" :*/
fileprivate let str_videoData:[Character] = ["S","h","o","o","t"," ","v","i","d","e","o"," ","a","t"," ","l","e","a","s","t"," ","5"]
fileprivate let str_pathText:String = "cell extension wrap se"
fileprivate let str_infoPicName:String = "colayerds"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContainerView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import UIKit
import UIKit

//: import Photos
import Photos

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class ContainerView: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        mode()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorData.map{$0^233}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        kindTo()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.text = "Video Cover".localized
        lb.text = (String(str_sizeData) + String(str_centerData)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.inexpensiveness()
        lb.textColor = UIColor.inexpensiveness()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: str_sectionValue.map{appSpend(a: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.nearCounterval(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_toData.prefix(5)) + String(str_progressData))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bombUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_intimateData.suffix(5)) + "e_edi" + String(str_atName.prefix(4)) + "oto_" + str_drawValue.replacingOccurrences(of: "button", with: "c") + str_withEditTitle.lowercased())), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(socialRank), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.nearCounterval(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.nearCounterval(name: (String(str_iconName) + String(str_shareValue) + String(str_tableText.prefix(4)) + "p_nor"))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 12)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(str_messageData) + String(str_becomeCellTitle)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(str_mName)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension ContainerView {
    //: func upDateCellView(videoPlayPath: String) {
    func deal(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func date(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.howeverFinish(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func bedSizeMidstreamAccumulation(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension ContainerView {
    //: @objc private func changeBtnClick() {
    @objc private func socialRank() {
        //: if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
        if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
           //: WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ShowWindowManager.shared.mObjectDetail()
            //: return
            return
        }
        //: seleteVideoTool()
        popTool()
    }

    //: @objc private func iconbtnclick() {
    @objc private func bombUp() {
        //: if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
        if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
           //: WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue,
           //: WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            ShowWindowManager.shared.mObjectDetail()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            popTool()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = ViewManagerReactiveCompatible(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.actionController()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func popTool() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        LaissezPasserThen.conceptAlbum(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = EqualToolThen.magnification(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.actionController()?.present(vc, animated: true)
                //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
                vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                                //: assets: PHAsset?)  in
                                                                assets: PHAsset?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                        EqualToolThen.dataStorageMedium(asset: assets) { filePath in

                            //: guard filePath != nil else { return }
                            guard filePath != nil else { return }
                            //: let asset = AVURLAsset.init(url: filePath!)
                            let asset = AVURLAsset(url: filePath!)
                            //: let time = asset.duration
                            let time = asset.duration
                            //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.compressedLabelVisualCommunication(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.atShow(showMsg: (String(str_videoData) + String(str_pathText.suffix(3)) + str_infoPicName.replacingOccurrences(of: "layer", with: "n")).localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func compressedLabelVisualCommunication(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = PriceEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: ProgressHUD.dismiss()
        StandardProgressHUD.giftTo()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.actionController()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func join() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension ContainerView {
    /// 添加视图
    //: private func setupSubviews() {
    private func mode() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func kindTo() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
