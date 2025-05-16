
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_viaOnCoinValue:[UInt8] = [0x89,0x8e,0x89,0x94,0xc8,0x83,0x8f,0x84,0x85,0x92,0xda,0xc9,0xc0,0x88,0x81,0x93,0xc0,0x8e,0x8f,0x94,0xc0,0x82,0x85,0x85,0x8e,0xc0,0x89,0x8d,0x90,0x8c,0x85,0x8d,0x85,0x8e,0x94,0x85,0x84]

private func requestTrack(scale num: UInt8) -> UInt8 {
    return num ^ 224
}

/*: "icon_cover_toast" :*/
fileprivate let str_centerText:[Character] = ["i","c","o","n","_","c","o"]
fileprivate let str_modelTitle:[Character] = ["v","e","r"]
fileprivate let str_screenData:String = "_toasttarget array index"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let str_loadValue:[UInt8] = [0x7a,0x4e,0x59,0x59,0x1c,0x4a,0x55,0x58,0x59,0x53,0x1c,0x48,0x55,0x51,0x59,0x1c,0x55,0x4f,0x1c,0x53,0x4a,0x59,0x4e,0x10,0x1c,0x45,0x53,0x49,0x1c,0x5f,0x5d,0x52,0x1c,0x5f,0x53,0x52,0x48,0x55,0x52,0x49,0x59,0x1c,0x48,0x53,0x1c,0x5f,0x5d,0x50,0x50,0x1c,0x54,0x59,0x4e,0x1c,0x55,0x5a,0x1c,0x45,0x53,0x49,0x1c,0x5d,0x4e,0x59,0x1c,0x55,0x52,0x48,0x59,0x4e,0x59,0x4f,0x48,0x59,0x58]

private func sizeModelGift(text num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "#34C759" :*/
fileprivate let str_componentText:[Character] = ["#","3","4","C","7","5","9"]

/*: "icon_match_stopcall_pop" :*/
fileprivate let str_makeTitle:String = "icon_else self"
fileprivate let str_infoData:String = "return style_stopc"
fileprivate let str_clickNameQueryData:String = "make center object let colorall_pop"

/*: "icon_lounge_big" :*/
fileprivate let str_iconText:String = "icon_let handle hidden var"
fileprivate let str_detailValue:String = "view type succeed_big"

/*: "#AB57F6" :*/
fileprivate let str_modelSizeContent:[Character] = ["#","A","B","5","7","F","6"]

/*: "#FC57B7" :*/
fileprivate let str_mValue:String = "view let#FC57B7"

/*: "#FE9074" :*/
fileprivate let str_managerText:[Character] = ["#","F"]
fileprivate let str_sizeContent:[Character] = ["E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let str_genderName:String = "party view shared let forMayb"
fileprivate let str_equalData:String = "self view time"

/*: "type" :*/
fileprivate let str_errorReadText:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "toUid" :*/
fileprivate let str_squareName:String = "import content hiddentoUid"

/*: "uid" :*/
fileprivate let str_viewValue:[UInt8] = [0x73,0x67,0x62]

fileprivate func letFill(play num: UInt8) -> UInt8 {
    let value = Int(num) + 2
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "fromFreeCall" :*/
fileprivate let str_requestEqualContent:[Character] = ["f","r","o","m","F","r","e","e","C","a"]
fileprivate let str_thenTitle:String = "sourcesource"

/*: "cmd" :*/
fileprivate let str_labText:[UInt8] = [0x4b,0x45,0x4c]

private func viewMake(interaction num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "requestCall" :*/
fileprivate let str_iconData:String = "rindexu"
fileprivate let str_faceData:String = "ALL"

/*: "data" :*/
fileprivate let str_shareNameContent:[UInt8] = [0xac,0xa9,0xbc,0xa9]

private func makeManager(info num: UInt8) -> UInt8 {
    return num ^ 200
}

/*: "originalFee" :*/
fileprivate let str_makeText:[Character] = ["o","r","i","g","i","n","a","l","F","e","e"]

/*: "VIPFee" :*/
fileprivate let str_videoIconToData:[Character] = ["V","I","P","F","e"]
fileprivate let str_insertData:[Character] = ["e"]

/*: "freeCallTimes" :*/
fileprivate let str_sharedName:[Character] = ["f","r","e","e","C","a","l"]
fileprivate let str_partyValue:String = "push manager equallTimes"

/*: "onRequestCall" :*/
fileprivate let str_equalTitle:String = "observer frame button input makeonReques"
fileprivate let str_indexData:String = "tCallequal shadow show var length"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellEmptyErrorDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class CellEmptyErrorDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        beyondGesture()
        //: setupSubViewsConstraint()
        makeDraw()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_viaOnCoinValue.map{requestTrack(scale: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        DataSocketDelegate.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "icon_cover_toast")
        iamg.image = UIImage.nearCounterval(name: (String(str_centerText) + String(str_modelTitle) + String(str_screenData.prefix(6))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        textView.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.occurrence()
        textView.textColor = UIColor.occurrence()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: str_loadValue.map{sizeModelGift(text: $0)}, encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.backgroundBlock(color: UIColor(hex: (String(str_componentText)))!, forState: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_makeTitle.prefix(5)) + "match" + String(str_infoData.suffix(6)) + String(str_clickNameQueryData.suffix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enableEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_iconText.prefix(5)) + "lounge" + String(str_detailValue.suffix(4)))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.warningOf(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(str_modelSizeContent)))!.cgColor, UIColor(hex: (String(str_mValue.suffix(7))))!.cgColor, UIColor(hex: (String(str_managerText) + String(str_sizeContent)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickError), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.inexpensiveness(), .font: UIFont.liveAttention(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.inexpensiveness(), .font: UIFont.liveAttention(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(str_genderName.suffix(4)) + "e next" + String(str_equalData.suffix(5))).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fallBehind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension CellEmptyErrorDelegate {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func enableEqual() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: str_errorReadText.reversed(), encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(str_squareName.suffix(5)))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: str_errorReadText.reversed(), encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: str_viewValue.map{letFill(play: $0)}, encoding: .utf8)!: toUid]
        //: if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0, WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_requestEqualContent) + str_thenTitle.replacingOccurrences(of: "source", with: "l")))
            //: TalkingSocketManager.shared.isFreeCall = true
            DataSocketDelegate.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_labText.map{viewMake(interaction: $0)}, encoding: .utf8)!: (str_iconData.replacingOccurrences(of: "index", with: "eq") + "estC" + str_faceData.lowercased()), String(bytes: str_shareNameContent.map{makeManager(info: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DataSocketDelegate.shared.demonstrateInfo(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        DataSocketDelegate.shared.errorDelegate = self
        //: dismiss()
        callDismiss()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func fallBehind() {
        //: dismiss()
        callDismiss()
    }

    /// 展示
    //: func show() {
    func atItem() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func callDismiss() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func pathData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(String(str_makeText))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(str_videoIconToData) + String(str_insertData))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(str_sharedName) + String(str_partyValue.suffix(6)))] as? Int
        //: WithAdministratorAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        WithAdministratorAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        reloadBy()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func clickError() {
        //: guard WithAdministratorAppManager.share.loginUserMode.loungePlus else {
        guard WithAdministratorAppManager.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
                //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
                LeadingEqualReactiveCompatible.share.nowKeyLog()
            }
            //: dismiss()
            callDismiss()
            //: return
            return
        }

        //: originalFeeButtonClick()
        enableEqual()
    }
}

// MARK: - StartErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension CellEmptyErrorDelegate: StartErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func number1(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_equalTitle.suffix(8)) + String(str_indexData.prefix(5))) {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            atShow(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == Salmagundi.MoneyLack.rawValue {
                //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else { return }
                //: LeadingEqualReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                LeadingEqualReactiveCompatible.share.toParams(clickEvent: kLet_versionText, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension CellEmptyErrorDelegate {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func reloadBy() {
        //: if WithAdministratorAppManager.share.loginUserMode.loungePlus {
        if WithAdministratorAppManager.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func beyondGesture() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func makeDraw() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
