
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageValue:[UInt8] = [0x13,0x14,0x13,0xe,0x52,0x19,0x15,0x1e,0x1f,0x8,0x40,0x53,0x5a,0x12,0x1b,0x9,0x5a,0x14,0x15,0xe,0x5a,0x18,0x1f,0x1f,0x14,0x5a,0x13,0x17,0xa,0x16,0x1f,0x17,0x1f,0x14,0xe,0x1f,0x1e]

private func toAGreaterExtent(bag num: UInt8) -> UInt8 {
    return num ^ 122
}

/*: "Select mute duration" :*/
fileprivate let str_factorName:String = "Selectcontent equal for make string"
fileprivate let str_premiumData:String = "addration"

/*: "Cirform" :*/
fileprivate let str_countName:[Character] = ["C","i"]
fileprivate let str_directTitle:String = "rfplayerrm"

/*: "Mute success" :*/
fileprivate let str_lastValue:[Character] = ["M","u","t","e"," "]
fileprivate let str_infoText:String = "SUCCESS"

/*: "day" :*/
fileprivate let str_valueDoinglineText:[Character] = ["d","a","y"]

/*: "days" :*/
fileprivate let str_recordItemValue:[Character] = ["d","a","y","s"]

/*:  " :*/
fileprivate let str_clickData:String = "corner"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FromThen.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: enum MuteViewType {
enum UserViewType {
    //: case live
    case live
    //: case voiceRoom
    case voiceRoom
}

//: class TalkingLiveRoomMuteView: UIView {
class FromThen: UIView {
    //: private let contentV_Size = CGSize.init(width: 297, height: 223)
    private let contentV_Size = CGSize(width: 297, height: 223)
    //: private let titleStr = ["1","3","7"]
    private let titleStr = ["1", "3", "7"]
    //: private var lastBtn = UIButton()
    private var lastBtn = UIButton()
    //: var targetUid = ""
    var targetUid = ""
    //: var viewType: MuteViewType = .live
    var viewType: UserViewType = .live

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        equalSubviews()
        //: setupSubViewsConstraint()
        beByConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageValue.map{toAGreaterExtent(bag: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showResource), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.cornerRadius = 16
        v.layer.cornerRadius = 16
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.behindUpRoom(fontSize: 18)
        lb.font = UIFont.behindUpRoom(fontSize: 18)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Select mute duration".localized
        lb.text = (String(str_factorName.prefix(6)) + " mute d" + str_premiumData.replacingOccurrences(of: "add", with: "u")).localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var commitBtn: UIButton = {
    lazy var commitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: btn.setTitle("Cirform".localized, for: .normal)
        btn.setTitle((String(str_countName) + str_directTitle.replacingOccurrences(of: "player", with: "o")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hairShirtFixing), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMuteView {
extension FromThen {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func showResource() {
        //: dismiss()
        modify()
    }

    /// 展示视图
    //: func showView() {
    func asQueryedView() {
        //: currentViewController()?.view.addSubview(self)
        actionController()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: (ScreenWidth - contentV_Size.width)/2, y: ScreenHeight, width: contentV_Size.width, height: contentV_Size.height)
        self.contentView.frame = CGRect(x: (kLet_senseContent - contentV_Size.width) / 2, y: kLet_environmentClickValue, width: contentV_Size.width, height: contentV_Size.height)

        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = (ScreenHeight-self.contentV_Size.height)/2
            self.contentView.frame.origin.y = (kLet_environmentClickValue - self.contentV_Size.height) / 2
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func modify() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = ScreenHeight
            self.contentView.frame.origin.y = kLet_environmentClickValue
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMuteView {
extension FromThen {
    //: @objc private func muteBtnClick(btn: UIButton) {
    @objc private func playBy(btn: UIButton) {
        //: lastBtn.isSelected = false
        lastBtn.isSelected = false
        //: btn.isSelected = !btn.isSelected
        btn.isSelected = !btn.isSelected
        //: lastBtn = btn
        lastBtn = btn
        //: commitBtn.isEnabled = lastBtn.isSelected
        commitBtn.isEnabled = lastBtn.isSelected
    }

    //: @objc private func commitButtonClick() {
    @objc private func hairShirtFixing() {
        //: let i = lastBtn.tag - 100
        let i = lastBtn.tag - 100
        //: guard i < titleStr.count  else { return }
        guard i < titleStr.count else { return }
        //: let index = titleStr[i]
        let index = titleStr[i]
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()

        //: if self.viewType == .live {
        if self.viewType == .live {
            //: TalkingAudienceManager().req_liveRoomMute(targetUid: targetUid, duration: index) { succeed, result, errorModel in
            StickToAudienceManager().themeScreen(targetUid: targetUid, duration: index) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.successMsg(showMsg: (String(str_lastValue) + str_infoText.lowercased()).localized)
                }
                //: self.dismiss()
                self.modify()
            }
            //: }else{
        } else {
            //: TalkingVoiceRoomReqTool.req_VoiceRoomMute(targetUid: targetUid, roomID: TalkingVoiceRoomManager.shared().partyModel.roomId, duration: index) { succeed, result, errorModel in
            BindReqTool.adventure(targetUid: targetUid, roomID: StackMThen.estimated().partyModel.roomId, duration: index) { succeed, _, _ in
                //: ProgressHUD.dismiss()
                StandardProgressHUD.giftTo()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.successMsg(showMsg: (String(str_lastValue) + str_infoText.lowercased()).localized)
                }
                //: self.dismiss()
                self.modify()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMuteView {
extension FromThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func equalSubviews() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(commitBtn)
        contentView.addSubview(commitBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func beByConstraint() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: commitBtn.snp.makeConstraints { make in
        commitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 203, height: 50))
            make.size.equalTo(CGSize(width: 203, height: 50))
        }

        //: for i in 0..<3 {
        for i in 0 ..< 3 {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.inexpensiveness().cgColor
            btn.layer.borderColor = UIColor.inexpensiveness().cgColor
            //: btn.layer.cornerRadius = 10
            btn.layer.cornerRadius = 10
            //: btn.layer.masksToBounds = true
            btn.layer.masksToBounds = true
            //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
            btn.setTitleColor(UIColor.colorPush(), for: .normal)
            //: btn.setTitleColor(.white, for: .selected)
            btn.setTitleColor(.white, for: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.backgroundBlock(color: .white, forState: .normal)
            //: btn.setBackgroundColor(color: UIColor.alright(), forState: .selected)
            btn.backgroundBlock(color: UIColor.alright(), forState: .selected)
            //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
            btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
            //: let title = titleStr[i]
            let title = titleStr[i]
            //: let dayStr = (title == "1") ? "day".localized:"days".localized
            let dayStr = (title == "1") ? (String(str_valueDoinglineText)).localized : (String(str_recordItemValue)).localized
            //: btn.setTitle("\(title) " + dayStr, for: .normal)
            btn.setTitle("\(title) " + dayStr, for: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget(self, action: #selector(muteBtnClick), for: .touchUpInside)
            btn.addTarget(self, action: #selector(playBy), for: .touchUpInside)
            //: contentView.addSubview(btn)
            contentView.addSubview(btn)
            //: let width = (Int(contentV_Size.width)-24*2-(titleStr.count-1)*14)/titleStr.count
            let width = (Int(contentV_Size.width) - 24 * 2 - (titleStr.count - 1) * 14) / titleStr.count
            //: let left = 24+(i*width+i*14)
            let left = 24 + (i * width + i * 14)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalTo(tipsLb.snp.bottom).offset(30)
                make.top.equalTo(tipsLb.snp.bottom).offset(30)
                //: make.size.equalTo(CGSize.init(width: width, height: 40))
                make.size.equalTo(CGSize(width: width, height: 40))
                //: make.leading.equalTo(left)
                make.leading.equalTo(left)
            }
        }
    }
}
