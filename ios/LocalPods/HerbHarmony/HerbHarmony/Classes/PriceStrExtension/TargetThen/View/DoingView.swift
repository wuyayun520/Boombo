
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_centerValue:[UInt8] = [0xc7,0xc0,0xc7,0xda,0x86,0xcd,0xc1,0xca,0xcb,0xdc,0x94,0x87,0x8e,0xc6,0xcf,0xdd,0x8e,0xc0,0xc1,0xda,0x8e,0xcc,0xcb,0xcb,0xc0,0x8e,0xc7,0xc3,0xde,0xc2,0xcb,0xc3,0xcb,0xc0,0xda,0xcb,0xca]

private func imagePair(collection num: UInt8) -> UInt8 {
    return num ^ 174
}

/*: "#F3E6FF" :*/
fileprivate let str_addToValue:String = "#F3E6FFtime icon interaction in"

/*: "#D9E7FF" :*/
fileprivate let str_contentData:String = "reply let else#D"
fileprivate let str_giftLiveValue:String = "model make if9E7FF"

/*: "Please wait. The distance is being expanded to filter the right users for you" :*/
fileprivate let str_bagData:[UInt8] = [0x78,0x44,0x4d,0x49,0x5b,0x4d,0x8,0x5f,0x49,0x41,0x5c,0x6,0x8,0x7c,0x40,0x4d,0x8,0x4c,0x41,0x5b,0x5c,0x49,0x46,0x4b,0x4d,0x8,0x41,0x5b,0x8,0x4a,0x4d,0x41,0x46,0x4f,0x8,0x4d,0x50,0x58,0x49,0x46,0x4c,0x4d,0x4c,0x8,0x5c,0x47,0x8,0x4e,0x41,0x44,0x5c,0x4d,0x5a,0x8,0x5c,0x40,0x4d,0x8,0x5a,0x41,0x4f,0x40,0x5c,0x8,0x5d,0x5b,0x4d,0x5a,0x5b,0x8,0x4e,0x47,0x5a,0x8,0x51,0x47,0x5d]

private func fruitData(kit num: UInt8) -> UInt8 {
    return num ^ 40
}

/*: "icon_await" :*/
fileprivate let str_makeContent:String = "icon_for long background"
fileprivate let str_coverLabelValue:[Character] = ["t"]

/*: "Get Premium" :*/
fileprivate let str_titleData:String = "mask seatGet Pre"
fileprivate let str_allName:String = "takeum"

/*: "Become a member now, skip the wait and discover more users instantly." :*/
fileprivate let str_rawValue:[UInt8] = [0x87,0xa0,0xa6,0xaa,0xa8,0xa0,0xe5,0xa4,0xe5,0xa8,0xa0,0xa8,0xa7,0xa0,0xb7,0xe5,0xab,0xaa,0xb2,0xe9,0xe5,0xb6,0xae,0xac,0xb5,0xe5,0xb1,0xad,0xa0,0xe5,0xb2,0xa4,0xac,0xb1,0xe5,0xa4,0xab,0xa1,0xe5,0xa1,0xac,0xb6,0xa6,0xaa,0xb3,0xa0,0xb7,0xe5,0xa8,0xaa,0xb7,0xa0,0xe5,0xb0,0xb6,0xa0,0xb7,0xb6,0xe5,0xac,0xab,0xb6,0xb1,0xa4,0xab,0xb1,0xa9,0xbc,0xeb]

private func upName(input num: UInt8) -> UInt8 {
    return num ^ 197
}

/*: "icon_hourglass" :*/
fileprivate let str_pageValue:[Character] = ["i","c","o","n","_","h","o","u","r"]
fileprivate let str_cellTitle:String = "gperformss"

/*: "All Cards Swiped for Today!" :*/
fileprivate let str_progressViewEqualValue:String = "All Ctable model match"
fileprivate let str_statusValue:[Character] = ["w","i","p","e","d"," ","f","o","r"," ","T","o","d","a","y","!"]

/*: "We recommend  :*/
fileprivate let str_viewText:String = "gesture let by viewWe r"
fileprivate let str_leadingNeedName:String = "true class shared make requestd "

/*:  new friends for you daily." :*/
fileprivate let str_kitName:String = " new fsex item center stack target"
fileprivate let str_sendTimingValue:String = " for false make make have to"
fileprivate let str_groupPlayerContent:String = "daily.class make"

/*: "&type=0" :*/
fileprivate let str_equalName:String = "&tto finish return self"
fileprivate let str_ofValue:[Character] = ["y","p","e","=","0"]

/*: "%02d" :*/
fileprivate let str_managerData:[Character] = ["%","0","2","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingView.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingClubCardSwipedFinishView: UIView {
class DoingView: UIView {
    //: var countdownBlock: (() -> Void)?
    var countdownBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        stereo()
        //: setupSubViewsConstraint()
        positionLive()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_centerValue.map{imagePair(collection: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bglayer: CAGradientLayer = {
    private lazy var bglayer: CAGradientLayer = {
        // 渐变色
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue - kLet_callValue)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        layer.startPoint = CGPoint(x: 0.5, y: 0.5)
        //: layer.endPoint = CGPoint(x: 1, y: 1)
        layer.endPoint = CGPoint(x: 1, y: 1)
        //: layer.colors = [UIColor(hex: "#F3E6FF")!.cgColor, UIColor(hex: "#D9E7FF")!.cgColor]
        layer.colors = [UIColor(hex: (String(str_addToValue.prefix(7))))!.cgColor, UIColor(hex: (String(str_contentData.suffix(2)) + String(str_giftLiveValue.suffix(5))))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var vipContentLab: UILabel = {
    private lazy var vipContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please wait. The distance is being expanded to filter the right users for you"
        lab.text = String(bytes: str_bagData.map{fruitData(kit: $0)}, encoding: .utf8)!
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipImageV: UIImageView = {
    private lazy var vipImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearCounterval(name: "icon_await"))
        let v = UIImageView(image: UIImage.nearCounterval(name: (String(str_makeContent.prefix(5)) + "awai" + String(str_coverLabelValue))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var premiumBtn: UIButton = {
    private lazy var premiumBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Get Premium".localized, for: .normal)
        btn.setTitle((String(str_titleData.suffix(7)) + str_allName.replacingOccurrences(of: "take", with: "mi")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-50, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 50, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(getPremiumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorOn), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var normalContentLab: UILabel = {
    private lazy var normalContentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Become a member now, skip the wait and discover more users instantly."
        lab.text = String(bytes: str_rawValue.map{upName(input: $0)}, encoding: .utf8)!
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var normalImageV: UIImageView = {
    private lazy var normalImageV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearCounterval(name: "icon_hourglass"))
        let v = UIImageView(image: UIImage.nearCounterval(name: (String(str_pageValue) + str_cellTitle.replacingOccurrences(of: "perform", with: "la"))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "All Cards Swiped for Today!"
        lab.text = (String(str_progressViewEqualValue.prefix(5)) + "ards S" + String(str_statusValue))
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var subTitleLab: UILabel = {
    private lazy var subTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        lab.font = UIFont.liveAttention(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.isHidden = true
        lab.isHidden = true
        //: return lab
        return lab
        //: }()
    }()

    // MARK: - 倒计时

    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?
    //: private var remainingSeconds: Int = 0
    private var remainingSeconds: Int = 0 // 剩余秒数

    //: private lazy var countdownContainer: UIStackView = {
    private lazy var countdownContainer: UIStackView = {
        //: let stack = UIStackView()
        let stack = UIStackView()
        //: stack.axis = .horizontal
        stack.axis = .horizontal
        //: stack.spacing = 4
        stack.spacing = 4
        //: stack.alignment = .center
        stack.alignment = .center
        //: stack.distribution = .fill
        stack.distribution = .fill
        //: stack.isHidden = true
        stack.isHidden = true
        //: return stack
        return stack
        //: }()
    }()

    //: private func createNumberLabel() -> UILabel {
    private func removeOf() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.font = .liveAttention(type: .Medium, fontSize: 20)
        label.font = .liveAttention(type: .Medium, fontSize: 20)
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = .white
        label.backgroundColor = .white
        //: label.layer.cornerRadius = 5
        label.layer.cornerRadius = 5
        //: label.layer.borderColor = UIColor.alright().cgColor
        label.layer.borderColor = UIColor.alright().cgColor
        //: label.layer.borderWidth = 1
        label.layer.borderWidth = 1
        //: label.clipsToBounds = true
        label.clipsToBounds = true
        //: label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        label.widthAnchor.constraint(equalToConstant: 38).isActive = true
        //: label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        label.heightAnchor.constraint(equalToConstant: 42).isActive = true
        //: return label
        return label
    }

    //: private func createColonLabel() -> UILabel {
    private func styleLabel() -> UILabel {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.font = .liveAttention(type: .Medium, fontSize: 20)
        label.font = .liveAttention(type: .Medium, fontSize: 20)
        //: label.text = ":"
        label.text = ":"
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
    }

    //: private lazy var timeLabels: [UILabel] = {
    private lazy var timeLabels: [UILabel] = {
        //: var labels: [UILabel] = []
        var labels: [UILabel] = []
        // Hours
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(styleLabel())
        // Minutes
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        // Colon
        //: labels.append(createColonLabel())
        labels.append(styleLabel())
        // Seconds
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        //: labels.append(createNumberLabel())
        labels.append(removeOf())
        //: return labels
        return labels
        //: }()
    }()

    //: deinit {
    deinit {
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = nil
        countdownTimer = nil
    }
}

// MARK: - Event

//: extension TalkingClubCardSwipedFinishView {
extension DoingView {
    /// 刷新用户滑完卡片的视图
    /// - Parameters:
    ///   - limitNum: 新卡片数量
    ///   - expire: 等待时间
    //: func show(limitNum: Int?, expire: Int?) {
    func performExpire(limitNum: Int?, expire: Int?) {
        //: self.isHidden = false
        self.isHidden = false
        //: if WithAdministratorAppManager.share.loginUserMode.loungePlus {
        if WithAdministratorAppManager.share.loginUserMode.loungePlus { // 会员
            //: vipImageV.isHidden = false
            vipImageV.isHidden = false
            //: vipContentLab.isHidden = false
            vipContentLab.isHidden = false

            //: } else {
        } else { // 非会员
            //: premiumBtn.isHidden = false
            premiumBtn.isHidden = false
            //: normalContentLab.isHidden = false
            normalContentLab.isHidden = false
            //: normalImageV.isHidden = false
            normalImageV.isHidden = false
            //: if let num = limitNum {
            if let num = limitNum {
                //: titleLab.isHidden = false
                titleLab.isHidden = false
                //: subTitleLab.isHidden = false
                subTitleLab.isHidden = false
                //: subTitleLab.text = "We recommend \(num) new friends for you daily."
                subTitleLab.text = (String(str_viewText.suffix(4)) + "ecommen" + String(str_leadingNeedName.suffix(2))) + "\(num)" + (String(str_kitName.prefix(6)) + "riends" + String(str_sendTimingValue.prefix(5)) + "you " + String(str_groupPlayerContent.prefix(6)))
            }

            //: if let expire = expire {
            if let expire = expire {
                //: remainingSeconds = expire
                remainingSeconds = expire
                //: countdownContainer.isHidden = false
                countdownContainer.isHidden = false
                //: addSubview(countdownContainer)
                addSubview(countdownContainer)
                //: timeLabels.forEach { label in
                for label in timeLabels {
                    //: countdownContainer.addArrangedSubview(label)
                    countdownContainer.addArrangedSubview(label)
                }
                //: countdownContainer.snp.makeConstraints { make in
                countdownContainer.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                    make.top.equalTo(subTitleLab.snp.bottom).offset(27)
                }

                //: startCountdown()
                windowCountdown()
            }
        }
    }

    /// 隐藏当前视图
    //: func dismiss() {
    func para() {
        //: self.isHidden = true
        self.isHidden = true
    }

    /// 订阅按钮点击事件
    //: @objc func getPremiumBtnClick() {
    @objc func colorOn() {
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=0")
        LeadingEqualReactiveCompatible.share.nowKeyLog(appendParams: (String(str_equalName.prefix(2)) + String(str_ofValue)))
    }

    /// 开始倒计时
    //: private func startCountdown() {
    private func windowCountdown() {
        //: updateTimeLabel()
        makeEqualLimit()
        //: countdownTimer?.invalidate()
        countdownTimer?.invalidate()
        //: countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
        countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] _ in
            //: self?.updateTimeLabel()
            self?.makeEqualLimit()
        }
    }

    /// 更新时间
    //: private func updateTimeLabel() {
    private func makeEqualLimit() {
        //: if remainingSeconds <= 0 {
        if remainingSeconds <= 0 {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
            //: countdownContainer.isHidden = true
            countdownContainer.isHidden = true
            //: self.dismiss()
            self.para()
            //: self.countdownBlock?()
            self.countdownBlock?()
            //: return
            return
        }

        //: let hours = remainingSeconds / 3600
        let hours = remainingSeconds / 3600
        //: let minutes = (remainingSeconds % 3600) / 60
        let minutes = (remainingSeconds % 3600) / 60
        //: let seconds = remainingSeconds % 60
        let seconds = remainingSeconds % 60

        //: let timeComponents = [
        let timeComponents = [
            //: String(format: "%02d", hours),
            String(format: "%02d", hours),
            //: String(format: "%02d", minutes),
            String(format: "%02d", minutes),
            //: String(format: "%02d", seconds)
            String(format: "%02d", seconds),
        ]

        //: var digitIndex = 0
        var digitIndex = 0
        //: for (_, label) in timeLabels.enumerated() {
        for (_, label) in timeLabels.enumerated() {
            //: if label.text != ":" {
            if label.text != ":" {
                //: let timeComponent = timeComponents[digitIndex / 2]
                let timeComponent = timeComponents[digitIndex / 2]
                //: let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                let digit = String(timeComponent[timeComponent.index(timeComponent.startIndex, offsetBy: digitIndex % 2)])
                //: label.text = digit
                label.text = digit
                //: digitIndex += 1
                digitIndex += 1
            }
        }
        //: remainingSeconds -= 1
        remainingSeconds -= 1
    }
}

// MARK: - Layout

//: extension TalkingClubCardSwipedFinishView {
extension DoingView {
    /// 添加视图
    //: private func setupSubviews() {
    private func stereo() {
        //: self.layer.addSublayer(bglayer)
        self.layer.addSublayer(bglayer)
        //: self.addSubview(vipContentLab)
        self.addSubview(vipContentLab)
        //: self.addSubview(vipImageV)
        self.addSubview(vipImageV)
        //: self.addSubview(premiumBtn)
        self.addSubview(premiumBtn)
        //: addSubview(normalContentLab)
        addSubview(normalContentLab)
        //: addSubview(normalImageV)
        addSubview(normalImageV)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(subTitleLab)
        addSubview(subTitleLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func positionLive() {
        //: vipContentLab.snp.makeConstraints { make in
        vipContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(self.snp.centerY)
            make.top.equalTo(self.snp.centerY)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: vipImageV.snp.makeConstraints { make in
        vipImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(vipContentLab.snp.top)
            make.bottom.equalTo(vipContentLab.snp.top)
            //: make.width.equalTo(146)
            make.width.equalTo(146)
            //: make.height.equalTo(152)
            make.height.equalTo(152)
        }

        //: premiumBtn.snp.makeConstraints { make in
        premiumBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-50)
            make.bottom.equalToSuperview().offset(-50)
            //: make.leading.equalTo(25)
            make.leading.equalTo(25)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: normalContentLab.snp.makeConstraints { make in
        normalContentLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            make.bottom.equalTo(premiumBtn.snp.top).offset(-30)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: normalImageV.snp.makeConstraints { make in
        normalImageV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            make.bottom.equalTo(normalContentLab.snp.top).offset(-40)
            //: make.width.equalTo(185)
            make.width.equalTo(185)
            //: make.height.equalTo(221)
            make.height.equalTo(221)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+60)
            make.top.equalTo(kLet_messageContent + 60)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: subTitleLab.snp.makeConstraints { make in
        subTitleLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(12)
            make.top.equalTo(titleLab.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
