
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cellName:[UInt8] = [0x2,0x7,0x2,0xd,0xc1,0xfc,0x8,0xfd,0xfe,0xb,0xd3,0xc2,0xb9,0x1,0xfa,0xc,0xb9,0x7,0x8,0xd,0xb9,0xfb,0xfe,0xfe,0x7,0xb9,0x2,0x6,0x9,0x5,0xfe,0x6,0xfe,0x7,0xd,0xfe,0xfd]

fileprivate func picAttention(frame num: UInt8) -> UInt8 {
    let value = Int(num) - 153
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female_bg_random" :*/
fileprivate let str_videoData:[Character] = ["f","e","m","a","l","e","_","b","g","_","r","a","n","d","o","m"]

/*: "Random" :*/
fileprivate let str_makeData:String = "Randomframe cur photo"

/*: "get json error" :*/
fileprivate let str_backValue:String = "label if heightget j"
fileprivate let str_onValue:String = "view"
fileprivate let str_equalName:String = "on errorlet to color item view"

/*: "btn_female_randomvideo_nor" :*/
fileprivate let str_meText:[Character] = ["b","t","n","_","f","e","m","a"]
fileprivate let str_itemData:[Character] = ["l","e","_","r","a","n","d","o","m"]
fileprivate let str_iconHiddenValue:[Character] = ["v","i","d","e","o","_","n","o","r"]

/*: "All" :*/
fileprivate let str_saveName:[Character] = ["A","l","l"]

/*: "Intimate" :*/
fileprivate let str_giftTitle:[Character] = ["I","n","t","i","m","a","t","e"]

/*: "randomVideo" :*/
fileprivate let str_userValue:[Character] = ["r","a","n"]
fileprivate let str_kitTitle:String = "domVideome color save leading"

/*: "#777777" :*/
fileprivate let str_portStatusValue:String = "#datedatedatedatedatedate"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SignThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/2.
//

//: import UIKit
import UIKit

//: @objc enum ChatListTopItemType: Int {
@objc enum ButtonVolumeEnablesetTarget: Int {
    //: case All = 0
    case All = 0
    //: case intimate
    case intimate
}

//: @objc protocol TalkingChatListTopItemViewDelegate: NSObjectProtocol {
@objc protocol ItalianRegionViewDelegate: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(type: ChatListTopItemType)
    @objc func towardShowType(type: ButtonVolumeEnablesetTarget)
}

//: class TalkingChatListTopItemView: UIView {
class SignThen: UIView {
    //: var selectButton = UIButton()
    var selectButton = UIButton()
    //: var resetButton = UIButton()
    var resetButton = UIButton()
    //: weak var delegate: TalkingChatListTopItemViewDelegate?
    weak var delegate: ItalianRegionViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cellName.map{picAttention(frame: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        recordSubviews()
        //: bindInteraction()
        startEqual()
        //: addNotification()
        decide()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var femaleRandomBtn: UIImageView = {
    private lazy var femaleRandomBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: addSubview(img)
        addSubview(img)
        //: let image = UIImage.nearCounterval(name: "female_bg_random")
        let image = UIImage.nearCounterval(name: (String(str_videoData)))
        //: let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        //: let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        //: img.image = image
        img.image = image
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(femaleRandomButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(henMoreClick))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var randomLab: UILabel = {
    private lazy var randomLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Random".localized
        lab.text = (String(str_makeData.prefix(6))).localized
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.behindUpRoom(fontSize: 14)
        lab.font = UIFont.behindUpRoom(fontSize: 14)
        //: femaleRandomBtn.addSubview(lab)
        femaleRandomBtn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Enter)
        let url = DigitiserReactiveCompatible.default.game(type: .Female_Randomvideo_Enter)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: if WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1" {
                if WithAdministratorAppManager.share.appUserConfigMode.randomVideo == "1" {
                    //: player.startAnimation()
                    player.startAnimation()
                }
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_backValue.suffix(5)) + str_onValue.replacingOccurrences(of: "view", with: "s") + String(str_equalName.prefix(8))))
        }
        //: femaleRandomBtn.addSubview(player)
        femaleRandomBtn.addSubview(player)
        //: player.snp.makeConstraints { make in
        player.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.equalTo(55)
            make.width.equalTo(55)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var stopRandomImgV: UIImageView = {
    private lazy var stopRandomImgV: UIImageView = {
        //: let img = UIImageView(image: UIImage.nearCounterval(name: "btn_female_randomvideo_nor"))
        let img = UIImageView(image: UIImage.nearCounterval(name: (String(str_meText) + String(str_itemData) + String(str_iconHiddenValue))))
        //: femaleRandomBtn.addSubview(img)
        femaleRandomBtn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(20)
            make.width.height.equalTo(20)
        }
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatListTopItemView {
extension SignThen {
    /// 进入随机视频页按钮事件
    //: @objc private func femaleRandomButtonClick() {
    @objc private func henMoreClick() {
        //: let vc = TalkingFemaleStaticRandomVideoVC()
        let vc = ManagerMediaViewController()
        //: getNavigationController()?.pushViewController(vc, animated: true)
        navigation()?.pushViewController(vc, animated: true)
    }

    //: func resetToSeleteAll() {
    func headerFromAll() {
        //: buttonItemChange(sender: resetButton)
        picDismiss(sender: resetButton)
    }

    //: @objc private func buttonItemChange(sender: UIButton) {
    @objc private func picDismiss(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: selectButton.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        selectButton.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: selectButton.isSelected = false
        selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: sender.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        sender.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        //: selectButton = sender
        selectButton = sender
        //: updateSliderViewFrame(btn: sender)
        behindTag(btn: sender)
        //: delegate?.changeTopItem(type: ChatListTopItemType(rawValue: sender.tag)!)
        delegate?.towardShowType(type: ButtonVolumeEnablesetTarget(rawValue: sender.tag)!)
    }
}

// MARK: - Layout

//: extension TalkingChatListTopItemView {
extension SignThen {
    /// 创建视图
    //: private func setupSubviews() {
    private func recordSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: let items = ["All".localized, "Intimate".localized]
        let items = [(String(str_saveName)).localized, (String(str_giftTitle)).localized]
        //: var tag = ChatListTopItemType.All.rawValue
        var tag = ButtonVolumeEnablesetTarget.All.rawValue
        //: let buttonW = 70.0
        let buttonW = 70.0
        //: var buttonX: CGFloat = LanguageManager.shared.direction == .leftToRight ? -5:20
        var buttonX: CGFloat = MeanSunLanguageManager.shared.direction == .leftToRight ? -5 : 20
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item, type: tag)
            let itemButton = creat(item: item, type: tag)
            //: addSubview(itemButton)
            addSubview(itemButton)
            //: let x = LanguageManager.shared.direction == .leftToRight ? buttonX:(IconThen.getScreenWidth()-buttonX-buttonW)
            let x = MeanSunLanguageManager.shared.direction == .leftToRight ? buttonX : (IconThen.atWidth() - buttonX - buttonW)
            //: itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: resetButton = itemButton
                resetButton = itemButton
                //: buttonItemChange(sender: itemButton)
                picDismiss(sender: itemButton)
            }
        }
        //: addSubview(sliderView)
        addSubview(sliderView)
        //: updateSliderViewFrame(btn: resetButton)
        behindTag(btn: resetButton)

        // 随机视频入口
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue {
            //: femaleRandomBtn.isHidden = false
            femaleRandomBtn.isHidden = false
            //: } else {
        } else {
            //: femaleRandomBtn.isHidden = true
            femaleRandomBtn.isHidden = true
        }
    }

    /// 添加事件
    //: @objc private func bindInteraction() {
    @objc private func startEqual() {
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue else { return }
        //: WithAdministratorAppManager.share.appUserConfigMode.rx
        WithAdministratorAppManager.share.appUserConfigMode.rx
            //: .observeWeakly(String.self, "randomVideo")
            .observeWeakly(String.self, (String(str_userValue) + String(str_kitTitle.prefix(8))))
            //: .subscribe(onNext: { [weak self] value in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == "1" { // 开启随机视频
                if value == "1" { // 开启随机视频
                    //: svgaPlayer.isHidden = false
                    svgaPlayer.isHidden = false
                    //: svgaPlayer.startAnimation()
                    svgaPlayer.startAnimation()
                    //: stopRandomImgV.isHidden = true
                    stopRandomImgV.isHidden = true
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                    //: } else {
                } else {
                    //: svgaPlayer.isHidden = true
                    svgaPlayer.isHidden = true
                    //: svgaPlayer.stopAnimation()
                    svgaPlayer.stopAnimation()
                    //: stopRandomImgV.isHidden = false
                    stopRandomImgV.isHidden = false
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    /// 添加通知
    //: private func addNotification() {
    private func decide() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(bindInteraction),
                                               selector: #selector(startEqual),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_keyText,
                                               //: object: nil)
                                               object: nil)
    }

    //: private func creatButton(item: String, type: Int) -> UIButton {
    private func creat(item: String, type: Int) -> UIButton {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (str_portStatusValue.replacingOccurrences(of: "date", with: "7"))), for: .normal)
        //: btn.setTitleColor(UIColor.occurrence(), for: .selected)
        btn.setTitleColor(UIColor.occurrence(), for: .selected)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(picDismiss(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: private func updateSliderViewFrame(btn: UIButton) {
    private func behindTag(btn: UIButton) {
        //: if sliderView.superview != nil {
        if sliderView.superview != nil {
            //: let transFormX = btn.frame.origin.x + (btn.frame.width-sliderView.frame.width) / 2
            let transFormX = btn.frame.origin.x + (btn.frame.width - sliderView.frame.width) / 2
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
                self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
            }
        }
    }
}
