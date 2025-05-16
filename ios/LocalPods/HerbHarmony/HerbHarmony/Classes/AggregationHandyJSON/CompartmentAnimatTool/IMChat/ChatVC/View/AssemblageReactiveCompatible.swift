
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_commitData:[UInt8] = [0x77,0x70,0x77,0x6a,0x36,0x7d,0x71,0x7a,0x7b,0x6c,0x24,0x37,0x3e,0x76,0x7f,0x6d,0x3e,0x70,0x71,0x6a,0x3e,0x7c,0x7b,0x7b,0x70,0x3e,0x77,0x73,0x6e,0x72,0x7b,0x73,0x7b,0x70,0x6a,0x7b,0x7a]

private func indexMedium(main num: UInt8) -> UInt8 {
    return num ^ 30
}

/*: "nav_back_black_nor" :*/
fileprivate let str_centerClickName:[Character] = ["n","a","v","_","b","a","c","k","_","b"]
fileprivate let str_proData:[Character] = ["l","a","c","k","_","n","o","r"]

/*: "btn_detail_more" :*/
fileprivate let str_imageBeautyTitle:String = "btn_open not"
fileprivate let str_iconValue:String = "make model name_more"

/*: "btn_chat_videocall" :*/
fileprivate let str_nowTitle:String = "view imagebtn_ch"
fileprivate let str_managerName:String = "ideotitleall"

/*: "icon_lounge" :*/
fileprivate let str_cellTitle:String = "answer extension string text typeicon_lo"
fileprivate let str_imageEmptyData:String = "ubare"

/*: "Official" :*/
fileprivate let str_enableData:[Character] = ["O","f","f","i","c"]
fileprivate let str_rawName:[Character] = ["i","a","l"]

/*: "Online List" :*/
fileprivate let str_reportText:[Character] = ["O","n","l","i","n","e"," ","L","i","s","t"]

/*: "icon_privateChat_intimate" :*/
fileprivate let str_callPullName:[Character] = ["i","c","o","n","_","p","r"]
fileprivate let str_nameCenterData:String = "ivaby"
fileprivate let str_behindText:String = "button number the_int"

/*: "#FF60B9" :*/
fileprivate let str_messageValue:String = "gift format normal manager#FF60B9"

/*: "Customer Care Center" :*/
fileprivate let str_pathValue:String = "view manager hidden any makeCusto"
fileprivate let str_dataName:String = "request section method jumpCare C"
fileprivate let str_keyCookieValue:String = "entehidden"

/*: "#48FF1E" :*/
fileprivate let str_bubbleValue:String = "of video let make#48FF1E"

/*: "Online" :*/
fileprivate let str_checkValue:[Character] = ["O","n","l","i","n","e"]

/*: "#FF4B7F" :*/
fileprivate let str_backgroundCenterContent:String = "keep frame click sex height#FF4B"
fileprivate let str_modeData:String = "model pair to7F"

/*: "busy" :*/
fileprivate let str_succeedText:String = "busmatch"

/*: "transform.rotation" :*/
fileprivate let str_blockName:String = "tramakesf"
fileprivate let str_actionTitle:String = "TION"

/*: "transform.scale" :*/
fileprivate let str_bottomData:String = "tviewnsf"
fileprivate let str_toValue:String = "scamanagere"

/*: "zoom&shake" :*/
fileprivate let str_deviceName:[Character] = ["z"]
fileprivate let str_textTitle:String = "oom&sleading image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AssemblageReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/15.
//

//: import UIKit
import UIKit

//: typealias AnimaEndBlock = () -> Void
typealias AnimaEndBlock = () -> Void

//: class TalkingChatNavTitleView: UIView {
class AssemblageReactiveCompatible: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var chatType: TalkingIMChatType = .private
    private var chatType: TalkingIMChatType = .private
    //: private var userId = ""
    private var userId = ""
    //: var animEndBlock: AnimaEndBlock?
    var animEndBlock: AnimaEndBlock?

    //: init(type: TalkingIMChatType) {
    init(type: TalkingIMChatType) {
        //: super.init(frame: .zero)
        super.init(frame: .zero)
        //: self.chatType = type
        self.chatType = type
        //: if self.chatType == .service || self.chatType == .meeting {
        if self.chatType == .service || self.chatType == .meeting {
            //: self.backgroundColor = .white
            self.backgroundColor = .white
            //: } else {
        } else {
            //: self.backgroundColor = .clear
            self.backgroundColor = .clear
        }
        //: createSubViews()
        views()
        //: layoutSubViewsConstraints()
        dataBy()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_commitData.map{indexMedium(main: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Medium, fontSize: 16)
        label.font = .liveAttention(type: .Medium, fontSize: 16)
        //: label.textColor = .white
        label.textColor = .white
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_centerClickName) + String(str_proData))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_imageBeautyTitle.prefix(4)) + "detail" + String(str_iconValue.suffix(5)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var videoCallBtn: UIButton = {
    lazy var videoCallBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "btn_chat_videocall").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_nowTitle.suffix(6)) + "at_v" + str_managerName.replacingOccurrences(of: "title", with: "c"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_lounge")
        img.image = UIImage.nearCounterval(name: (String(str_cellTitle.suffix(7)) + str_imageEmptyData.replacingOccurrences(of: "bar", with: "ng")))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var officalImgV: UIButton = {
    lazy var officalImgV: UIButton = {
        //: let img = UIButton()
        let img = UIButton()
        //: img.setBackgroundColor(color: UIColor.msgTipsColor(), forState: .normal)
        img.backgroundBlock(color: UIColor.userError(), forState: .normal)
        //: img.setTitle("Official".localized, for: .normal)
        img.setTitle((String(str_enableData) + String(str_rawName)).localized, for: .normal)
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.unprecedented(fontSize: 11)
        img.titleLabel?.font = UIFont.unprecedented(fontSize: 11)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var onlineListBtn: UIButton = {
    lazy var onlineListBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 15)
        //: btn .setTitleColor(UIColor.occurrence(), for: .normal)
        btn.setTitleColor(UIColor.occurrence(), for: .normal)
        //: btn .setTitle("Online List".localized, for: .normal)
        btn.setTitle((String(str_reportText)).localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var onlineStatusV: TalkingButton = {
    private lazy var onlineStatusV: RoomThen = {
        //: let img = TalkingButton()
        let img = RoomThen()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.errorAtImage(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        img.titleLabel?.font = UIFont.behindUpRoom(fontSize: 12)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var myBtn: UIButton = {
    private lazy var myBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 16
        btn.layer.cornerRadius = 16
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(shade), for: .touchUpInside)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var userBtn: UIButton = {
    private lazy var userBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 16
        btn.layer.cornerRadius = 16
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(userIconClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(roundWillClick), for: .touchUpInside)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var intimateBtn: UIButton = {
    private lazy var intimateBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_privateChat_intimate"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_callPullName) + str_nameCenterData.replacingOccurrences(of: "by", with: "t") + "eChat" + String(str_behindText.suffix(4)) + "imate")), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(intimateBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var intimateLB: UILabel = {
    private lazy var intimateLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.init(hex: "#FF60B9")
        lb.textColor = UIColor(hex: (String(str_messageValue.suffix(7))))
        //: lb.font = UIFont.behindUpRoom(fontSize: 12)
        lb.font = UIFont.behindUpRoom(fontSize: 12)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var addIntimateLB: UILabel = {
    private lazy var addIntimateLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        lb.font = UIFont.liveAttention(type: .Semibold, fontSize: 12)
        //: lb.isHidden = true
        lb.isHidden = true
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var intimatePlayer: SVGAPlayer = {
    lazy var intimatePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.isHidden = true
        player.isHidden = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingChatNavTitleView {
extension AssemblageReactiveCompatible {
    //: func createSubViews() {
    func views() {
        //: addSubview(titleLabel)
        addSubview(titleLabel)
        //: addSubview(backButton)
        addSubview(backButton)

        //: if self.chatType == .service {
        if self.chatType == .service {
            //: backButton.tintColor = .black
            backButton.tintColor = .black
            //: titleLabel.text = "Customer Care Center".localized
            titleLabel.text = (String(str_pathValue.suffix(5)) + "mer " + String(str_dataName.suffix(6)) + str_keyCookieValue.replacingOccurrences(of: "hidden", with: "r")).localized
            //: titleLabel.font = .liveAttention(type: .Medium, fontSize: 18)
            titleLabel.font = .liveAttention(type: .Medium, fontSize: 18)
            //: titleLabel.textColor = .occurrence()
            titleLabel.textColor = .occurrence()
            //: addSubview(officalImgV)
            addSubview(officalImgV)

            //: } else if self.chatType == .meeting {
        } else if self.chatType == .meeting {
            //: backButton.tintColor = .black
            backButton.tintColor = .black
            //: titleLabel.font = .liveAttention(type: .Medium, fontSize: 18)
            titleLabel.font = .liveAttention(type: .Medium, fontSize: 18)
            //: titleLabel.textColor = .occurrence()
            titleLabel.textColor = .occurrence()
            //: addSubview(onlineListBtn)
            addSubview(onlineListBtn)

            //: } else {
        } else {
            //: addSubview(officalImgV)
            addSubview(officalImgV)
            //: addSubview(moreButton)
            addSubview(moreButton)
            //: addSubview(videoCallBtn)
            addSubview(videoCallBtn)
            //: addSubview(loungeImgV)
            addSubview(loungeImgV)
            //: addSubview(onlineStatusV)
            addSubview(onlineStatusV)
            //: addSubview(myBtn)
            addSubview(myBtn)
            //: addSubview(userBtn)
            addSubview(userBtn)
            //: addSubview(intimateBtn)
            addSubview(intimateBtn)
            //: addSubview(intimateLB)
            addSubview(intimateLB)
            //: addSubview(intimatePlayer)
            addSubview(intimatePlayer)
            //: addSubview(addIntimateLB)
            addSubview(addIntimateLB)
        }
    }

    //: func layoutSubViewsConstraints() {
    func dataBy() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_indexText)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: if self.chatType == .service {
        if self.chatType == .service { // 官方客服
            //: let offset = LanguageManager.shared.direction == .leftToRight ? 22 : -22
            let offset = MeanSunLanguageManager.shared.direction == .leftToRight ? 22 : -22
            //: titleLabel.snp.makeConstraints { make in
            titleLabel.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview().offset(offset)
                make.centerX.equalToSuperview().offset(offset)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
                //: make.width.lessThanOrEqualTo(ScreenWidth/2)
                make.width.lessThanOrEqualTo(kLet_senseContent / 2)
            }
            //: officalImgV.snp.makeConstraints { make in
            officalImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(titleLabel)
                make.centerY.equalTo(titleLabel)
                //: make.trailing.equalTo(titleLabel.snp.leading).offset(-4)
                make.trailing.equalTo(titleLabel.snp.leading).offset(-4)
                //: make.width.greaterThanOrEqualTo(50)
                make.width.greaterThanOrEqualTo(50)
            }

            //: } else if self.chatType == .meeting {
        } else if self.chatType == .meeting { // 群聊
            //: titleLabel.snp.makeConstraints { make in
            titleLabel.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
            }
            //: onlineListBtn.snp.makeConstraints { make in
            onlineListBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-20)
                make.trailing.equalToSuperview().offset(-20)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
            }

            //: } else {
        } else { // 私聊
            //: moreButton.snp.makeConstraints { make in
            moreButton.snp.makeConstraints { make in
                //: make.trailing.equalTo(self).offset(-5)
                make.trailing.equalTo(self).offset(-5)
                //: make.width.equalTo(40)
                make.width.equalTo(40)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
            }
            //: videoCallBtn.snp.makeConstraints { make in
            videoCallBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.width.equalTo(40)
                make.width.equalTo(40)
            }
            //: titleLabel.snp.makeConstraints { make in
            titleLabel.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalTo(backButton.snp.centerY)
                make.bottom.equalTo(backButton.snp.centerY)
            }
            //: officalImgV.snp.makeConstraints { make in
            officalImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(titleLabel)
                make.centerY.equalTo(titleLabel)
                //: make.trailing.equalTo(titleLabel.snp.leading).offset(-4)
                make.trailing.equalTo(titleLabel.snp.leading).offset(-4)
                //: make.width.greaterThanOrEqualTo(50)
                make.width.greaterThanOrEqualTo(50)
            }
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(titleLabel.snp.trailing).offset(4)
                make.leading.equalTo(titleLabel.snp.trailing).offset(4)
                //: make.centerY.equalTo(titleLabel)
                make.centerY.equalTo(titleLabel)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualTo(videoCallBtn.snp.leading).offset(-10)
                make.trailing.lessThanOrEqualTo(videoCallBtn.snp.leading).offset(-10)
            }
            //: onlineStatusV.snp.makeConstraints { make in
            onlineStatusV.snp.makeConstraints { make in
                //: make.top.equalTo(backButton.snp.centerY)
                make.top.equalTo(backButton.snp.centerY)
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.width.equalTo(46)
                make.width.equalTo(46)
                //: make.height.equalTo(13)
                make.height.equalTo(13)
            }
            //: intimateBtn.snp.makeConstraints { make in
            intimateBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.centerY.equalTo(backButton).offset(-10)
                make.centerY.equalTo(backButton).offset(-10)
                //: make.size.equalTo(51)
                make.size.equalTo(51)
            }
            //: intimateLB.snp.makeConstraints { make in
            intimateLB.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(intimateBtn.snp.bottom).offset(-10)
                make.top.equalTo(intimateBtn.snp.bottom).offset(-10)
            }
            //: userBtn.snp.makeConstraints { make in
            userBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(intimateBtn.snp.leading).offset(-10)
                make.trailing.equalTo(intimateBtn.snp.leading).offset(-10)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.size.equalTo(32)
                make.size.equalTo(32)
            }
            //: myBtn.snp.makeConstraints { make in
            myBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(intimateBtn.snp.trailing).offset(10)
                make.leading.equalTo(intimateBtn.snp.trailing).offset(10)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.size.equalTo(userBtn)
                make.size.equalTo(userBtn)
            }
            //: intimatePlayer.snp.makeConstraints { make in
            intimatePlayer.snp.makeConstraints { make in
                //: make.edges.equalTo(intimateBtn)
                make.edges.equalTo(intimateBtn)
            }
            //: addIntimateLB.snp.makeConstraints { make in
            addIntimateLB.snp.makeConstraints { make in
                //: make.center.equalTo(intimatePlayer)
                make.center.equalTo(intimatePlayer)
            }
        }
    }

    /// 私聊更新导航信息
    /// - Parameters:
    ///   - userModel: 用户信息
    ///   - isFrom: 列表控制器入口
    //: func private_updateNavView(userModel: CoverThen, isFrom: PrivateChatIsFromEnum) {
    func someoneIn(userModel: CoverThen, isFrom: VoiceFromEnum) {
        //: titleLabel.text = userModel.nickname
        titleLabel.text = userModel.nickname
        // 是否官方
        //: officalImgV.isHidden = !userModel.isOfficial
        officalImgV.isHidden = !userModel.isOfficial
        //: guard self.chatType == .private else { return }
        guard self.chatType == .private else { return }
        // 在线状态
        //: if userModel.onlineStatus == 1 {
        if userModel.onlineStatus == 1 {
            //: onlineStatusV.isHidden = false
            onlineStatusV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.apply(color: UIColor(hex: (String(str_bubbleValue.suffix(7))))!, size: CGSize(width: 8, height: 8))
            //: onlineStatusV.setImage(image.smart(), for: .normal)
            onlineStatusV.setImage(image.smart(), for: .normal)
            //: onlineStatusV.setTitle("Online".localized, for: .normal)
            onlineStatusV.setTitle((String(str_checkValue)).localized, for: .normal)

            //: } else if userModel.onlineStatus == 2 {
        } else if userModel.onlineStatus == 2 {
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#FF4B7F")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.apply(color: UIColor(hex: (String(str_backgroundCenterContent.suffix(5)) + String(str_modeData.suffix(2))))!, size: CGSize(width: 8, height: 8))
            //: onlineStatusV.setImage(image.smart(), for: .normal)
            onlineStatusV.setImage(image.smart(), for: .normal)
            //: onlineStatusV.setTitle("busy".localized, for: .normal)
            onlineStatusV.setTitle((str_succeedText.replacingOccurrences(of: "match", with: "y")).localized, for: .normal)
            //: } else {
        } else {
            //: onlineStatusV.isHidden = true
            onlineStatusV.isHidden = true
        }

        //: let text: NSString = onlineStatusV.titleLabel?.text as? NSString ?? ""
        let text: NSString = onlineStatusV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.behindUpRoom(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.behindUpRoom(fontSize: 12)], context: nil)
        //: onlineStatusV.snp.remakeConstraints { make in
        onlineStatusV.snp.remakeConstraints { make in
            //: make.top.equalTo(backButton.snp.centerY)
            make.top.equalTo(backButton.snp.centerY)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }

        // vip
        //: titleLabel.textColor = userModel.loungePlus ? .userVipColor():.white
        titleLabel.textColor = userModel.loungePlus ? .insert() : .white
        //: loungeImgV.isHidden = !userModel.loungePlus
        loungeImgV.isHidden = !userModel.loungePlus
        // 不在线 && 没亲密值，居中显示昵称
        //: if onlineStatusV.isHidden == true  {
        if onlineStatusV.isHidden == true {
            //: titleLabel.snp.remakeConstraints { make in
            titleLabel.snp.remakeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
            }
        }

        // 直播间 || 审核模式隐藏导航视频通话
        //: var videoCall = userModel.enableVideoCall
        var videoCall = userModel.enableVideoCall
        //: if isFrom == .LiveRoom || WithAdministratorAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if isFrom == .LiveRoom || WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
            //: videoCall = false
            videoCall = false
        }
        //: if videoCall {
        if videoCall {
            //: videoCallBtn.snp.remakeConstraints { make in
            videoCallBtn.snp.remakeConstraints { make in
                //: make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.width.equalTo(40)
                make.width.equalTo(40)
            }
            //: videoCallBtnAnimat()
            labelAnimat()
            //: } else {
        } else {
            //: videoCallBtn.snp.remakeConstraints { make in
            videoCallBtn.snp.remakeConstraints { make in
                //: make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                make.trailing.equalTo(moreButton.snp.leading).offset(-5)
                //: make.height.equalTo(NavigationBarHeight)
                make.height.equalTo(kLet_indexText)
                //: make.centerY.equalTo(backButton)
                make.centerY.equalTo(backButton)
                //: make.width.equalTo(0)
                make.width.equalTo(0)
            }
        }
    }

    /// 私聊更新导航信息
    /// - Parameters:
    ///   - userModel: 用户信息
    //: func private_updateIntimateNavView(userModel: CoverThen) {
    func worldViewMatch(userModel _: CoverThen) {
//        titleLabel.isHidden = true
//        loungeImgV.isHidden = true
//        onlineStatusV.isHidden = true
//        officalImgV.isHidden = true
//        intimateBtn.isHidden = false
//        intimateLB.isHidden = false
//        myBtn.isHidden = false
//        userBtn.isHidden = false
//        myBtn.setUrlImage(urlStr: WithAdministratorAppManager.share.loginUserMode.headPic ?? "")
//        userBtn.setUrlImage(urlStr: userModel.headPic)
//        intimateLB.text = "\(userModel.intimate)"
//        userId = userModel.uid
    }

    //: func playIntimateAnim(intimate: Int) {
    func putDoing(intimate _: Int) {
//        let str  = "+\(intimate)"
//        let attrString = NSMutableAttributedString(string: str)
//        let attributes = [.foregroundColor: UIColor.white, .font: UIFont.liveAttention(type: .Semibold, fontSize: 12)] as [NSAttributedString.Key: Any]
//        attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
//        self.addIntimateLB.attributedText = attrString
//        self.addIntimateLB.isHidden = false
//        let url = DigitiserReactiveCompatible.default.getZipEffectPath(type: .Private_Chat_intimate)
//        do {
//            let data = try Data(contentsOf: url)
//            let parser = SVGAParser.init()
//            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
//                guard let self = self else {return}
//                self.intimatePlayer.isHidden = false
//                self.intimatePlayer.videoItem = videoItem
//                self.intimatePlayer.startAnimation()
//
//                UIView.animate(withDuration: 1.0) { [weak self] in
//                    guard let self = self else { return }
//                    self.addIntimateLB.alpha = 0
//                    self.addIntimateLB.transform = CGAffineTransform(scaleX: 1.8, y: 1.8)
//                }completion: { [weak self]  success in
//                    guard let self = self else { return }
//                    self.addIntimateLB.text = ""
//                    self.addIntimateLB.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//                    self.addIntimateLB.isHidden = true
//                    self.addIntimateLB.alpha = 1.0
//                    self.animEndBlock?()
//                }
//            }
//        } catch _ as Error? {
//            printLog(message: "get json error")
//        }
    }

    //: func playAnimation() {
    func first() {
//        let url = DigitiserReactiveCompatible.default.getZipEffectPath(type: .Private_Chat_intimate)
//        do {
//            let data = try Data(contentsOf: url)
//            let parser = SVGAParser.init()
//            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
//                guard let self = self else {return}
//                self.intimatePlayer.isHidden = false
//                self.intimatePlayer.videoItem = videoItem
//                self.intimatePlayer.startAnimation()
//            }
//        } catch _ as Error? {
//            printLog(message: "get json error")
//        }
    }

    //: func setAllData(intimate: Int) {
    func successHalf(intimate _: Int) {
//        intimateLB.text = "\(intimate)"
    }

    //: @objc func myBtnClick() {
    @objc func shade() {
        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: WithAdministratorAppManager.share.loginUserMode.userID)
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: WithAdministratorAppManager.share.loginUserMode.userID)
    }

    //: @objc func userIconClick() {
    @objc func roundWillClick() {
        //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: userId)
        LeadingEqualReactiveCompatible.share.bindDownFrom(uid: userId)
    }

    //: @objc func intimateBtnClick() {
    @objc func snapClick() {
//        let view = SubmitUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
//         view.show()
    }

    //: func videoCallBtnAnimat() {
    func labelAnimat() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (str_blockName.replacingOccurrences(of: "make", with: "n") + "orm.rota" + str_actionTitle.lowercased()))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (str_bottomData.replacingOccurrences(of: "view", with: "ra") + "orm." + str_toValue.replacingOccurrences(of: "manager", with: "l")))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: videoCallBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        videoCallBtn.layer.add(groupAnnimation, forKey: (String(str_deviceName) + String(str_textTitle.prefix(5)) + "hake"))
    }
}
