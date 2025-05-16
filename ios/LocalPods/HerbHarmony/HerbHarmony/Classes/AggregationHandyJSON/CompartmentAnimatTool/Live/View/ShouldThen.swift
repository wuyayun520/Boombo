
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_titleData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_cover_toast" :*/
fileprivate let str_progressName:String = "var inviteicon_"
fileprivate let str_partyData:String = "video else margin true quote_toast"

/*: "OK" :*/
fileprivate let str_buttonTitle:[Character] = ["O","K"]

/*: "Not for now" :*/
fileprivate let str_equalActionData:[Character] = ["N","o"]
fileprivate let str_appData:String = "t foextra manager make let view"

/*: "Turn on" :*/
fileprivate let str_giftValue:String = "cell add backTurn on"

/*: "Live Certification off" :*/
fileprivate let str_modelIntervaleractionData:[Character] = ["L","i","v","e"," ","C","e","r","t"]
fileprivate let str_hiddenName:String = "textftextc"
fileprivate let str_modelData:[Character] = ["a","t","i","o","n"," ","o","f","f"]

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let str_requestTitle:[UInt8] = [0x7f,0x43,0x4a,0x4e,0x5c,0x4a,0xf,0x42,0x4e,0x44,0x4a,0xf,0x5c,0x5a,0x5d,0x4a,0xf,0x56,0x40,0x5a,0x5d,0xf,0x49,0x4e,0x4c,0x4a,0xf,0x46,0x5c,0xf,0x4e,0x43,0x58,0x4e,0x56,0x5c,0xf,0x46,0x41,0xf,0x5b,0x47,0x4a,0xf,0x59,0x46,0x4b,0x4a,0x40,0xf,0x5c,0x4c,0x5d,0x4a,0x4a,0x41]

/*: "Current network unavailable" :*/
fileprivate let str_errorVoiceText:String = "Currenlike from"
fileprivate let str_liveValue:String = "t netmodel actual location var collection"
fileprivate let str_modeData:String = " unavafalse to var height"

/*: "Live Reminder" :*/
fileprivate let str_nameData:[Character] = ["L","i","v","e"," ","R","e","m","i","n"]
fileprivate let str_keyValue:[Character] = ["d","e","r"]

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let str_pathLevelTitle:[UInt8] = [0x98,0xae,0xb4,0xe1,0xa9,0xa0,0xb7,0xa4,0xaf,0xe6,0xb5,0xe1,0xb4,0xb2,0xa4,0xa5,0xe1,0xb8,0xae,0xb4,0xb3,0xe1,0xa7,0xb3,0xa4,0xa4,0xe1,0xb7,0xa8,0xa5,0xa4,0xae,0xe1,0xae,0xb1,0xb1,0xae,0xb3,0xb5,0xb4,0xaf,0xa8,0xb5,0xb8,0xe1,0xb8,0xa4,0xb5,0xed,0xe1,0xb5,0xa0,0xad,0xaa,0xe1,0xb5,0xae,0xe1,0xb2,0xae,0xac,0xa4,0xae,0xaf,0xa4,0xe1,0xa7,0xa8,0xb3,0xb2,0xb5,0xe0]

private func modelVar(color num: UInt8) -> UInt8 {
    return num ^ 193
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum DataViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class ShouldThen: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: TalkingRecognizerDelegate?
    //: private var type = LiveAlertViewType.noFace
    private var type = DataViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: DataViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        curiosity()
        //: setupSubViewsConstraint()
        searchUser()
        //: refreshUI()
        tillBackgroundWith()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_titleData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "icon_cover_toast")
        iamg.image = UIImage.nearCounterval(name: (String(str_progressName.suffix(5)) + "cover" + String(str_partyData.suffix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 18)
        lab.font = UIFont.behindUpRoom(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.unprecedented(fontSize: 16)
        lab.font = UIFont.unprecedented(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(collectionClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn.setTitleColor(.alright(), for: .normal)
        btn.setTitleColor(.alright(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(str_equalActionData) + String(str_appData.prefix(4)) + "r now").localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.alright().cgColor
        btn.layer.borderColor = UIColor.alright().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(isView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .alright()
        btn.backgroundColor = .alright()
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_giftValue.suffix(7))).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(collectionClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension ShouldThen {
    //: func show() {
    func afterwardCeremony() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func foyer() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func isView() {
        //: dismiss()
        foyer()
    }

    //: @objc private func rightButtonClick() {
    @objc private func collectionClick() {
        //: dismiss()
        foyer()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            foyer()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension ShouldThen {
    // 刷新视图
    //: private func refreshUI() {
    private func tillBackgroundWith() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_modelIntervaleractionData) + str_hiddenName.replacingOccurrences(of: "text", with: "i") + String(str_modelData)).localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: str_requestTitle.map{$0^47}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(str_modelIntervaleractionData) + str_hiddenName.replacingOccurrences(of: "text", with: "i") + String(str_modelData)).localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(str_errorVoiceText.prefix(6)) + String(str_liveValue.prefix(5)) + "work" + String(str_modeData.prefix(6)) + "ilable").localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(str_nameData) + String(str_keyValue)).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: str_pathLevelTitle.map{modelVar(color: $0)}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func curiosity() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func searchUser() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
