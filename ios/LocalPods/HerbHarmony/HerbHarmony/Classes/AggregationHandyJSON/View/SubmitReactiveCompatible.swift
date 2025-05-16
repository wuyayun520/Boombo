
//: Declare String Begin

/*: "Need a gift to unlock" :*/
fileprivate let str_nextTransformText:String = "any notNeed a"
fileprivate let str_timeContent:String = " unlockenable equal"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_indexValue:[UInt8] = [0x75,0x72,0x75,0x68,0x34,0x7f,0x73,0x78,0x79,0x6e,0x26,0x35,0x3c,0x74,0x7d,0x6f,0x3c,0x72,0x73,0x68,0x3c,0x7e,0x79,0x79,0x72,0x3c,0x75,0x71,0x6c,0x70,0x79,0x71,0x79,0x72,0x68,0x79,0x78]

private func birdSEyeView(fail num: UInt8) -> UInt8 {
    return num ^ 28
}

/*: "intimatephoto_btn_no" :*/
fileprivate let str_loadTableData:String = "intimlabel"
fileprivate let str_redData:String = "photo appbtn_no"

/*: "Burn After Reading" :*/
fileprivate let str_pageValue:String = "value voice userBurn Aft"
fileprivate let str_insideData:String = "shared false share errorer R"

/*: "Use Photo" :*/
fileprivate let str_imageData:[Character] = ["U","s","e"," ","P","h"]
fileprivate let str_styleData:String = "OTO"

/*: "Use Video" :*/
fileprivate let str_userTitle:String = "Use Vhome size"

/*: "intimatephoto_btn_chose" :*/
fileprivate let str_iconText:String = "intipatha"
fileprivate let str_runData:String = "oto_btnmutual cell false"
fileprivate let str_reasonTitle:String = "_choseguard view"

/*: "%@ (%@x1  %@ Gold coins)" :*/
fileprivate let str_clickData:[Character] = ["%","@"," ","(","%","@","x","1"," "]
fileprivate let str_dataViewValue:[Character] = [" ","%","@"," ","G","o","l","d"," ","c","o","i","n","s",")"]

/*: "#7E6AFF" :*/
fileprivate let str_soundValue:[Character] = ["#","7","E","6","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubmitReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/12/28.
//

//: import UIKit
import UIKit

// 私密类型
//: enum IntimateInfoViewType {
enum ViewType {
    //: case intimatePhoto
    case intimatePhoto // 私密照片
    //: case intimateVideo
    case intimateVideo // 私密视频
}

// 当前视图高度
//: let INTIMATEINFOVIEW_H = (176+kLet_appMarginText)
let kLet_keyData = (176 + kLet_appMarginText)

//: typealias UseBlock = (_ isBurn: String, _ giftId: String) -> Void
typealias UseBlock = (_ isBurn: String, _ giftId: String) -> Void

//: class TalkingSendIntimateInfoView: UIView {
class SubmitReactiveCompatible: UIView {
    //: var block: UseBlock?
    var block: UseBlock?
    //: private let normalGiftText = "Need a gift to unlock".localized
    private let normalGiftText = (String(str_nextTransformText.suffix(6)) + " gift to" + String(str_timeContent.prefix(7))).localized
    //: private var giftId = "0"  // 解锁礼物Id
    private var giftId = "0" // 解锁礼物Id
    //: private var type = IntimateInfoViewType.intimatePhoto
    private var type = ViewType.intimatePhoto // 私密类型

    //: init(frame: CGRect, type: IntimateInfoViewType) {
    init(frame: CGRect, type: ViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRect(x: 0, y: ScreenHeight-INTIMATEINFOVIEW_H, width: ScreenWidth, height: INTIMATEINFOVIEW_H)
        self.frame = CGRect(x: 0, y: kLet_environmentClickValue - kLet_keyData, width: kLet_senseContent, height: kLet_keyData)
        //: self.type = type
        self.type = type

        //: setupSubviews()
        colorSubviews()
        //: setupSubViewsConstraint()
        removeInConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_indexValue.map{birdSEyeView(fail: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    // 白色背景
    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.frame = self.bounds
        v.frame = self.bounds
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        // 剪切圆角
        //: let path = UIBezierPath(roundedRect: v.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 15, height: 15))
        let path = UIBezierPath(roundedRect: v.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 15, height: 15))
        //: let maskLayer = CAShapeLayer.init()
        let maskLayer = CAShapeLayer()
        //: maskLayer.frame = v.bounds
        maskLayer.frame = v.bounds
        //: maskLayer.path = path.cgPath
        maskLayer.path = path.cgPath
        //: v.layer.mask = maskLayer
        v.layer.mask = maskLayer
        //: return v
        return v
        //: }()
    }()

    // 阅后即焚
    //: private lazy var burnAfterReadingImgV: UIImageView = {
    private lazy var burnAfterReadingImgV: UIImageView = {
        //: let img = UIImageView(image: UIImage.nearCounterval(name: "intimatephoto_btn_no"))
        let img = UIImageView(image: UIImage.nearCounterval(name: (str_loadTableData.replacingOccurrences(of: "label", with: "a") + "tephoto_" + String(str_redData.suffix(6)))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var burnAfterReadingLab: UILabel = {
    private lazy var burnAfterReadingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.unprecedented(fontSize: 16)
        lab.font = UIFont.unprecedented(fontSize: 16)
        //: lab.text = "Burn After Reading".localized
        lab.text = (String(str_pageValue.suffix(8)) + String(str_insideData.suffix(4)) + "eading").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var burnAfterReadingBtn: UIButton = {
    private lazy var burnAfterReadingBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(burnAfterReadingButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(towardButton), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 私密照片
    //: private lazy var needGiftImgeV: UIImageView = {
    private lazy var needGiftImgeV: UIImageView = {
        //: let img = UIImageView(image: UIImage.nearCounterval(name: "intimatephoto_btn_no"))
        let img = UIImageView(image: UIImage.nearCounterval(name: (str_loadTableData.replacingOccurrences(of: "label", with: "a") + "tephoto_" + String(str_redData.suffix(6)))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var needGiftLab: UILabel = {
    private lazy var needGiftLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.unprecedented(fontSize: 16)
        lab.font = UIFont.unprecedented(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = normalGiftText
        lab.text = normalGiftText
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var needGiftBtn: UIButton = {
    private lazy var needGiftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(needGiftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(windowStatusWhen), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 发送图片/视频
    //: private lazy var useBtn: UIButton = {
    private lazy var useBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitle((self.type == .intimatePhoto ? "Use Photo".localized:"Use Video".localized), for: .normal)
        btn.setTitle(self.type == .intimatePhoto ? (String(str_imageData) + str_styleData.lowercased()).localized : (String(str_userTitle.prefix(5)) + "ideo").localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 220, height: 44)), for: .normal)
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(useButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(littleness), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var giftView: TalkingChatGiftView = {
    lazy var giftView: MiniViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = MiniViewDelegate(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSendIntimateInfoView {
extension SubmitReactiveCompatible {
    /// 使用照片按钮点击事件
    //: @objc private func useButtonClick() {
    @objc private func littleness() {
        //: guard let block = block else { return }
        guard let block = block else { return }
        //: let isBurn = burnAfterReadingBtn.isSelected ? "1":"0"
        let isBurn = burnAfterReadingBtn.isSelected ? "1" : "0"
        //: block(isBurn, giftId)
        block(isBurn, giftId)
    }

    /// 阅后即焚按钮点击事件
    //: @objc private func burnAfterReadingButtonClick() {
    @objc private func towardButton() {
        //: burnAfterReadingBtn.isSelected = !burnAfterReadingBtn.isSelected
        burnAfterReadingBtn.isSelected = !burnAfterReadingBtn.isSelected
        //: let imageName = burnAfterReadingBtn.isSelected ? "intimatephoto_btn_chose":"intimatephoto_btn_no"
        let imageName = burnAfterReadingBtn.isSelected ? (str_iconText.replacingOccurrences(of: "path", with: "m") + "teph" + String(str_runData.prefix(7)) + String(str_reasonTitle.prefix(6))) : (str_loadTableData.replacingOccurrences(of: "label", with: "a") + "tephoto_" + String(str_redData.suffix(6)))
        //: burnAfterReadingImgV.image = UIImage.nearCounterval(name: imageName)
        burnAfterReadingImgV.image = UIImage.nearCounterval(name: imageName)
    }
}

// MARK: - 礼物

//: extension TalkingSendIntimateInfoView {
extension SubmitReactiveCompatible {
    /// 需要礼物按钮点击事件
    //: @objc private func needGiftButtonClick() {
    @objc private func windowStatusWhen() {
        //: guard needGiftBtn.isSelected == false else {
        guard needGiftBtn.isSelected == false else { // 还原状态
            //: needGiftImgeV.image = UIImage.nearCounterval(name: "intimatephoto_btn_no")
            needGiftImgeV.image = UIImage.nearCounterval(name: (str_loadTableData.replacingOccurrences(of: "label", with: "a") + "tephoto_" + String(str_redData.suffix(6))))
            //: needGiftBtn.isSelected = false
            needGiftBtn.isSelected = false
            //: needGiftLab.text = normalGiftText
            needGiftLab.text = normalGiftText
            //: giftId = "0"
            giftId = "0"
            //: return
            return
        }

        //: let type = (self.type == .intimatePhoto ? GiftViewStyle.intimatePhoto:GiftViewStyle.intimateVideo)
        let type = (self.type == .intimatePhoto ? ScaleLargessComparable.intimatePhoto : ScaleLargessComparable.intimateVideo)
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: type) {
        SumReactiveCompatible.share.dialog(type: type) {
            //: self.func__showGiftChoiceView()
            self.perspectiveView()
        }
    }

    /// 展示礼物视图
    //: private func func__showGiftChoiceView() {
    private func perspectiveView() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        giftView.aperture(needReload: true, mf_coin: WithAdministratorAppManager.share.loginUserMode.mf_coin)
        //: self.window?.addSubview(giftView)
        self.window?.addSubview(giftView)
        //: giftView.showView()
        giftView.toponym()
        //: giftView.okActionBlock = { [weak self] giftModel in
        giftView.okActionBlock = { [weak self] giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.needGiftBtn.isSelected = true
            self.needGiftBtn.isSelected = true
            //: self.needGiftImgeV.image = UIImage.nearCounterval(name: "intimatephoto_btn_chose")
            self.needGiftImgeV.image = UIImage.nearCounterval(name: (str_iconText.replacingOccurrences(of: "path", with: "m") + "teph" + String(str_runData.prefix(7)) + String(str_reasonTitle.prefix(6))))
            //: self.giftId = giftModel.gid ?? "0"
            self.giftId = giftModel.gid ?? "0"

            // 设置富文本展示
            //: let giftAttrStr = NSMutableAttributedString(string: "%@ (%@x1  %@ Gold coins)".localizedArguments(self.normalGiftText, giftModel.name, giftModel.price))
            let giftAttrStr = NSMutableAttributedString(string: (String(str_clickData) + String(str_dataViewValue)).localizedArguments(self.normalGiftText, giftModel.name, giftModel.price))
            //: let attributes = [.foregroundColor: UIColor(hex: "#7E6AFF")!, .font: UIFont.liveAttention(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (String(str_soundValue)))!, .font: UIFont.liveAttention(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: let range = NSRange(location: self.normalGiftText.count, length: giftAttrStr.length-self.normalGiftText.count)
            let range = NSRange(location: self.normalGiftText.count, length: giftAttrStr.length - self.normalGiftText.count)
            //: giftAttrStr.addAttributes(attributes, range: range)
            giftAttrStr.addAttributes(attributes, range: range)
            //: self.needGiftLab.attributedText = giftAttrStr
            self.needGiftLab.attributedText = giftAttrStr
        }
    }
}

// MARK: - Layout

//: extension TalkingSendIntimateInfoView {
extension SubmitReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func colorSubviews() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: self.addSubview(whiteBgV)
        self.addSubview(whiteBgV)
        //: whiteBgV.addSubview(burnAfterReadingImgV)
        whiteBgV.addSubview(burnAfterReadingImgV)
        //: whiteBgV.addSubview(burnAfterReadingLab)
        whiteBgV.addSubview(burnAfterReadingLab)
        //: whiteBgV.addSubview(burnAfterReadingBtn)
        whiteBgV.addSubview(burnAfterReadingBtn)
        //: if WithAdministratorAppManager.share.loginUserMode.status != 1 &&
        if WithAdministratorAppManager.share.loginUserMode.status != 1,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue
        { // 非审核账号 && 只有女性用户侧才能索要礼物
            //: whiteBgV.addSubview(needGiftImgeV)
            whiteBgV.addSubview(needGiftImgeV)
            //: whiteBgV.addSubview(needGiftLab)
            whiteBgV.addSubview(needGiftLab)
            //: whiteBgV.addSubview(needGiftBtn)
            whiteBgV.addSubview(needGiftBtn)
        }
        //: whiteBgV.addSubview(useBtn)
        whiteBgV.addSubview(useBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func removeInConstraint() {
        //: burnAfterReadingImgV.snp.makeConstraints { make in
        burnAfterReadingImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(28)
            make.top.equalTo(28)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }
        //: burnAfterReadingLab.snp.makeConstraints { make in
        burnAfterReadingLab.snp.makeConstraints { make in
            //: make.leading.equalTo(burnAfterReadingImgV.snp.trailing).offset(8)
            make.leading.equalTo(burnAfterReadingImgV.snp.trailing).offset(8)
            //: make.top.height.equalTo(burnAfterReadingImgV)
            make.top.height.equalTo(burnAfterReadingImgV)
            //: make.trailing.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(-5)
        }
        //: burnAfterReadingBtn.snp.makeConstraints { make in
        burnAfterReadingBtn.snp.makeConstraints { make in
            //: make.leading.top.equalTo(burnAfterReadingImgV)
            make.leading.top.equalTo(burnAfterReadingImgV)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }

        //: if WithAdministratorAppManager.share.loginUserMode.status != 1 &&
        if WithAdministratorAppManager.share.loginUserMode.status != 1,
           //: WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
           WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue
        { // 非审核账号 && 只有女性用户侧才能索要礼物
            //: needGiftImgeV.snp.makeConstraints { make in
            needGiftImgeV.snp.makeConstraints { make in
                //: make.top.equalTo(burnAfterReadingImgV.snp.bottom).offset(20)
                make.top.equalTo(burnAfterReadingImgV.snp.bottom).offset(20)
                //: make.leading.size.equalTo(burnAfterReadingImgV)
                make.leading.size.equalTo(burnAfterReadingImgV)
            }
            //: needGiftLab.snp.makeConstraints { make in
            needGiftLab.snp.makeConstraints { make in
                //: make.leading.trailing.equalTo(burnAfterReadingLab)
                make.leading.trailing.equalTo(burnAfterReadingLab)
                //: make.top.equalTo(needGiftBtn).offset(-2)
                make.top.equalTo(needGiftBtn).offset(-2)
            }
            //: needGiftBtn.snp.makeConstraints { make in
            needGiftBtn.snp.makeConstraints { make in
                //: make.leading.top.equalTo(needGiftImgeV)
                make.leading.top.equalTo(needGiftImgeV)
                //: make.trailing.height.equalTo(burnAfterReadingBtn)
                make.trailing.height.equalTo(burnAfterReadingBtn)
            }
        }

        //: useBtn.snp.makeConstraints { make in
        useBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-20-kLet_appMarginText)
            make.bottom.equalToSuperview().offset(-20 - kLet_appMarginText)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 220, height: 44))
            make.size.equalTo(CGSize(width: 220, height: 44))
        }
    }
}
