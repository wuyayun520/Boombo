
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_popText:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#EDEDED" :*/
fileprivate let str_frameName:String = "self string info main#EDEDE"
fileprivate let str_sessionErrorValue:String = "room"

/*: "Click for details" :*/
fileprivate let str_loadActionValue:String = "if top equal of atClick f"
fileprivate let str_viewValue:String = "success"
fileprivate let str_cellImageHalfName:[Character] = ["r"," ","d","e","t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let str_managerValue:String = "to"
fileprivate let str_trackValue:String = "128CFFbirth path"

/*: "system_notif_click_go" :*/
fileprivate let str_viewBottomText:[Character] = ["s","y","s","t","e","m","_","n","o","t","i","f","_","c","l","i","c","k","_","g","o"]

/*: "img" :*/
fileprivate let str_matterValue:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let str_cellValue:String = "jumpKcount source"
fileprivate let str_topComeContent:String = "EY"

/*: "url" :*/
fileprivate let str_meData:String = "urobject"

/*: "mfChat" :*/
fileprivate let str_errorValue:[UInt8] = [0x87,0x8c,0xa9,0x82,0x8b,0x9e]

private func fragmentApp(model num: UInt8) -> UInt8 {
    return num ^ 234
}

/*: "jumpUid" :*/
fileprivate let str_nameData:String = "list"
fileprivate let str_layerData:String = "self equal equalumpUid"

/*: "mfChatGift" :*/
fileprivate let str_hiddenValue:[UInt8] = [0x23,0x28,0xd,0x26,0x2f,0x3a,0x9,0x27,0x28,0x3a]

private func photoApp(request num: UInt8) -> UInt8 {
    return num ^ 78
}

/*: "user" :*/
fileprivate let str_controlWithData:[UInt8] = [0x72,0x65,0x73,0x75]

/*: "outerUrl" :*/
fileprivate let str_ofName:[UInt8] = [0xa0,0xba,0xbb,0xaa,0xbd,0x9a,0xbd,0xa3]

/*: "系统通知跳转失败：不支持  :*/
fileprivate let str_inputTalkTitle:[Character] = ["\u{7cfb}","统","\u{901a}","知","跳","转","失","\u{8d25}","：","不","支","持"]
fileprivate let str_colorData:[Character] = [" "]

/*:  跳转类型。" :*/
fileprivate let str_managerText:String = " \u{8df3}转类型\u{3002}"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoViewCell.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class InfoViewCell: MTouchMsgCell {
    //: var textData: AtonicityThen?
    var textData: AtonicityThen?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        untilInfo()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_popText.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(contentShow), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(str_frameName.suffix(6)) + str_sessionErrorValue.replacingOccurrences(of: "room", with: "D")))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(str_loadActionValue.suffix(7)) + str_viewValue.replacingOccurrences(of: "success", with: "o") + String(str_cellImageHalfName)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (str_managerValue.replacingOccurrences(of: "to", with: "#") + String(str_trackValue.prefix(6))))
        //: lab.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        lab.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.nearCounterval(name: "system_notif_click_go")
        imgV.image = UIImage.nearCounterval(name: (String(str_viewBottomText)))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension InfoViewCell {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? AtonicityThen
        textData = data as? AtonicityThen
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.nearSquare(urlStr: textData.extraJson[(String(str_matterValue))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.corners(width: textData.bannerSize.width,
                               //: height: textData.bannerSize.height,
                               height: textData.bannerSize.height,
                               //: corners: [ .topRight],
                               corners: [.topRight],
                               //: cornerRadii: CGSize(width: 12, height: 12))
                               cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func contentShow() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(str_cellValue.prefix(5)) + str_topComeContent.lowercased())].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (str_meData.replacingOccurrences(of: "object", with: "l")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_meData.replacingOccurrences(of: "object", with: "l"))].stringValue
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: url)
            LeadingEqualReactiveCompatible.share.loadWith(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: str_errorValue.map{fragmentApp(model: $0)}, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(str_nameData.replacingOccurrences(of: "list", with: "j") + String(str_layerData.suffix(6)))].stringValue
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: jumpUid)
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: str_hiddenValue.map{photoApp(request: $0)}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(str_nameData.replacingOccurrences(of: "list", with: "j") + String(str_layerData.suffix(6)))].stringValue
            //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.theory()
            }
        //: case "user": // 用户详情
        case String(bytes: str_controlWithData.reversed(), encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(str_nameData.replacingOccurrences(of: "list", with: "j") + String(str_layerData.suffix(6)))].stringValue
            //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: jumpUid)
            LeadingEqualReactiveCompatible.share.bindDownFrom(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: str_ofName.map{$0^207}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(str_meData.replacingOccurrences(of: "object", with: "l"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (String(str_inputTalkTitle) + String(str_colorData)) + "\(jumpKey)" + (str_managerText))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension InfoViewCell {
    /// 初始化视图
    //: private func setupSubviews() {
    private func untilInfo() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
