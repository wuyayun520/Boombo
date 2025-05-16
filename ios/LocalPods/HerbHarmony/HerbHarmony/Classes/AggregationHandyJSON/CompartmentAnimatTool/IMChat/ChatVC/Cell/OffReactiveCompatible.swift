
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_limitRemoveValue:[UInt8] = [0x15,0x12,0x15,0x8,0x54,0x1f,0x13,0x18,0x19,0xe,0x46,0x55,0x5c,0x14,0x1d,0xf,0x5c,0x12,0x13,0x8,0x5c,0x1e,0x19,0x19,0x12,0x5c,0x15,0x11,0xc,0x10,0x19,0x11,0x19,0x12,0x8,0x19,0x18]

/*: "CCCCCC" :*/
fileprivate let str_rawData:String = "stylestylestylestylestylestyle"

/*: "icon_lounge" :*/
fileprivate let str_postText:String = "app"
fileprivate let str_languageValue:[Character] = ["c","o","n","_","l","o","u","n","g","e"]

/*: "#FFEE4B" :*/
fileprivate let str_cellData:String = "top succeed effect message#FFEE4B"

/*: "View read receipts?" :*/
fileprivate let str_tabTitle:[Character] = ["V","i","e","w"," ","r","e","a","d"]
fileprivate let str_labName:String = "content return self will let rec"

/*: "#FBE3FE" :*/
fileprivate let str_selectValue:String = "#FBE3FEdata index"

/*: "#D8DDFF" :*/
fileprivate let str_videoAttentionContent:[Character] = ["#","D","8","D","D","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OffReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

/*! 提示类型消息 */
//: class TalkingChatTipsMsgCell: TalkingChatBaseMsgCell {
class OffReactiveCompatible: MTouchMsgCell {
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
        //: designView()
        noDismiss()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_limitRemoveValue.map{$0^124}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    /**
     *  系统消息标签
     *  用于展示系统消息的内容。例如：“您撤回了一条消息”。
     */
    //: lazy var messageLB: YYLabel = {
    lazy var messageLB: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.font = UIFont.unprecedented(fontSize: 15)
        label.font = UIFont.unprecedented(fontSize: 15)
        //: label.textColor = UIColor.init(hex: "CCCCCC")
        label.textColor = UIColor(hex: (str_rawData.replacingOccurrences(of: "style", with: "C")))
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.backgroundColor = .clear
        label.backgroundColor = .clear
        //: label.layer.cornerRadius = 3
        label.layer.cornerRadius = 3
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: return label
        return label
        //: }()
    }()

    /// 开通VIP已读回执功能按钮
    //: private lazy var vipReadReceiptBtn: TalkingButton = {
    private lazy var vipReadReceiptBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_lounge"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_postText.replacingOccurrences(of: "app", with: "i") + String(str_languageValue))), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: btn.setTitleColor(UIColor(hex: "#FFEE4B"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(str_cellData.suffix(7)))), for: .normal)
        //: btn.setTitle("View read receipts?".localized, for: .normal)
        btn.setTitle((String(str_tabTitle) + String(str_labName.suffix(4)) + "eipts?").localized, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(vipReadReceiptClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(storeVideo), for: .touchUpInside)
        //: contentView.addSubview(btn)
        contentView.addSubview(btn)
        //: let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        let btnWidth = (btn.titleLabel?.intrinsicContentSize.width ?? 0) + 46.0
        //: let btnHeight = 30.0
        let btnHeight = 30.0
        //: let gColor = [UIColor.init(hex: "#FBE3FE")!.withAlphaComponent(0.6).cgColor,
        let gColor = [UIColor(hex: (String(str_selectValue.prefix(7))))!.withAlphaComponent(0.6).cgColor,
                      //: UIColor.init(hex: "#D8DDFF")!.withAlphaComponent(0.6).cgColor]
                      UIColor(hex: (String(str_videoAttentionContent)))!.withAlphaComponent(0.6).cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: gColor, size: CGSize(width: btnWidth, height: btnHeight)), for: .normal)
        //: btn.snp.makeConstraints { make in
        btn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
            make.size.equalTo(CGSize(width: btnWidth, height: btnHeight))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 已读回执引导充值VIP

//: extension TalkingChatTipsMsgCell {
extension OffReactiveCompatible {
    /// vip订阅事件
    //: @objc private func vipReadReceiptClick() {
    @objc private func storeVideo() {
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
        LeadingEqualReactiveCompatible.share.nowKeyLog()
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension OffReactiveCompatible {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let tipCellData = data as? ShowCellData else { return }
        guard let tipCellData = data as? ShowCellData else { return }
        //: self.avatarView.isHidden = true
        self.avatarView.isHidden = true
        //: self.isReadImg.isHidden = true
        self.isReadImg.isHidden = true
        //: self.retryView.isHidden = true
        self.retryView.isHidden = true
        //: self.coinLabel.isHidden = true
        self.coinLabel.isHidden = true
        //: self.coinIconImg.isHidden = true
        self.coinIconImg.isHidden = true
        //: self.iconBorder.isHidden = true
        self.iconBorder.isHidden = true
        //: self.bubbleImgView.image = nil
        self.bubbleImgView.image = nil
        //: self.messageLB.layer.contents = nil
        self.messageLB.layer.contents = nil
        //: let dataLayout: YYTextLayout? = tipCellData.yyLayout
        let dataLayout: YYTextLayout? = tipCellData.yyLayout
        //: if dataLayout != nil {
        if dataLayout != nil {
            //: self.messageLB.textLayout = tipCellData.yyLayout
            self.messageLB.textLayout = tipCellData.yyLayout
            //: addTouchTagGes()
            press()
            //: } else {
        } else {
            //: let layout = YYTextLayout.init(containerSize: CGSize.init(width: IconThen.getScreenWidth()-50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            let layout = YYTextLayout(containerSize: CGSize(width: IconThen.atWidth() - 50, height: CGFloat(MAXFLOAT)), text: tipCellData.attributedString)
            //: self.messageLB.textLayout = layout
            self.messageLB.textLayout = layout
            //: removeAllTapGes()
            chock()
        }

        // VIP已读回执tips
        //: if tipCellData.msgModel.tips.content == "View read receipts?".localized {
        if tipCellData.msgModel.tips.content == (String(str_tabTitle) + String(str_labName.suffix(4)) + "eipts?").localized {
            //: self.vipReadReceiptBtn.isHidden = false
            self.vipReadReceiptBtn.isHidden = false
            //: self.bubbleImgView.isHidden = true
            self.bubbleImgView.isHidden = true
            //: } else {
        } else {
            //: self.vipReadReceiptBtn.isHidden = true
            self.vipReadReceiptBtn.isHidden = true
            //: self.bubbleImgView.isHidden = false
            self.bubbleImgView.isHidden = false
        }
    }

    //: override func updateConstraints() {
    override func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.container.snp.remakeConstraints { make in
        self.container.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.lessThanOrEqualTo(ScreenWidth-40)
            make.width.lessThanOrEqualTo(ScreenWidth - 40)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: self.messageLB.snp.remakeConstraints { make in
        self.messageLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
    }

    //: func addTouchTagGes() {
    func press() {
        //: removeAllTapGes()
        chock()
        //: let containerTap = UITapGestureRecognizer.init(target: self, action: #selector(TouchCellMessageAction(tap:)))
        let containerTap = UITapGestureRecognizer(target: self, action: #selector(shouldRed(tap:)))
        //: containerTap.numberOfTapsRequired = 1
        containerTap.numberOfTapsRequired = 1
        //: containerTap.numberOfTouchesRequired = 1
        containerTap.numberOfTouchesRequired = 1
        //: self.messageLB.addGestureRecognizer(containerTap)
        self.messageLB.addGestureRecognizer(containerTap)
        //: self.messageLB.isUserInteractionEnabled = true
        self.messageLB.isUserInteractionEnabled = true
    }

    //: func removeAllTapGes() {
    func chock() {
        //: self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
        self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
    }

    //: @objc func TouchCellMessageAction(tap: UITapGestureRecognizer) {
    @objc func shouldRed(tap _: UITapGestureRecognizer) {
        //: self.delegate?.onSelectMessage(cell: self)
        self.delegate?.onSelectMessage(cell: self)
    }
}

// MARK: - Event

//: extension TalkingChatTipsMsgCell {
extension OffReactiveCompatible {
    //: func designView() {
    func noDismiss() {
        //: self.bubbleImgView.addSubview(messageLB)
        self.bubbleImgView.addSubview(messageLB)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.bubbleImgView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        //: self.bubbleImgView.layer.cornerRadius = 5
        self.bubbleImgView.layer.cornerRadius = 5
        //: self.bubbleImgView.clipsToBounds = true
        self.bubbleImgView.clipsToBounds = true
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }
}
