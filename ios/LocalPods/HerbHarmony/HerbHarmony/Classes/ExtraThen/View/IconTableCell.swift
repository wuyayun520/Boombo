
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_objectTagAddText:[UInt8] = [0xa2,0xa5,0xa2,0xbf,0xe3,0xa8,0xa4,0xaf,0xae,0xb9,0xf1,0xe2,0xeb,0xa3,0xaa,0xb8,0xeb,0xa5,0xa4,0xbf,0xeb,0xa9,0xae,0xae,0xa5,0xeb,0xa2,0xa6,0xbb,0xa7,0xae,0xa6,0xae,0xa5,0xbf,0xae,0xaf]

private func pointInTime(camera num: UInt8) -> UInt8 {
    return num ^ 203
}

/*: "Gifts required for the photo" :*/
fileprivate let str_managerHeadText:String = "Giftsreturn fill fit less"
fileprivate let str_modeName:String = "view call top text toed fo"
fileprivate let str_explainValue:String = " photoas type intimate make"

/*: "Choose a gift" :*/
fileprivate let str_errorData:String = "Choomax video let collect"
fileprivate let str_shareContent:String = " giftpremium detail type let"

/*: "#7189F7" :*/
fileprivate let str_paraText:String = "#manager"
fileprivate let str_removeTitle:String = "189F7for with mask coat"

/*: "giftName" :*/
fileprivate let str_topTitle:[Character] = ["g","i"]
fileprivate let str_freeTargetContent:String = "ftNametable super random in image"

/*: "giftPrice" :*/
fileprivate let str_courseHomeToTitle:String = "areai"
fileprivate let str_circleWithTitle:[Character] = ["f","t","P","r","i","c","e"]

/*: "  %@(%@ Gold coins)" :*/
fileprivate let str_appearValue:String = "  %@"
fileprivate let str_videoData:String = "image guardGold "
fileprivate let str_hiddenValue:String = "height value distancecoins)"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconTableCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: typealias SeleteGiftBlock = (_ giftId: String) -> Void
typealias SeleteGiftBlock = (_ giftId: String) -> Void

//: class TalkingGreetPhotoTableCell: UITableViewCell {
class IconTableCell: UITableViewCell {
    //: var seleteGiftBlock: SeleteGiftBlock?
    var seleteGiftBlock: SeleteGiftBlock?

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
        voiceBy()
        //: setupSubViewsConstraint()
        eachLoad()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_objectTagAddText.map{pointInTime(camera: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backGiftView: UIView = {
    lazy var backGiftView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var giftLaB: UILabel = {
    lazy var giftLaB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.occurrence()
        LB.textColor = UIColor.occurrence()
        //: LB.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        LB.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: LB.text = "Gifts required for the photo".localized
        LB.text = (String(str_managerHeadText.prefix(5)) + " requir" + String(str_modeName.suffix(5)) + "r the" + String(str_explainValue.prefix(6))).localized
        //: LB.numberOfLines = 0
        LB.numberOfLines = 0
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var giftMsgBtn: UIButton = {
    lazy var giftMsgBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(.occurrence(), for: .normal)
        btn.setTitleColor(.occurrence(), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.appBgColor(), forState: .normal)
        btn.backgroundBlock(color: UIColor.air(), forState: .normal)
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(notice), for: .touchUpInside)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = MeanSunLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chooseGiftBtn: UIButton = {
    private lazy var chooseGiftBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(notice), for: .touchUpInside)
        //: let str = "Choose a gift".localized
        let str = (String(str_errorData.prefix(4)) + "se a" + String(str_shareContent.prefix(5))).localized
        //: let attributes = [.foregroundColor: UIColor(hex: "#7189F7")!, .font: UIFont.liveAttention(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (str_paraText.replacingOccurrences(of: "manager", with: "7") + String(str_removeTitle.prefix(5))))!, .font: UIFont.liveAttention(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attrS = NSAttributedString(string: str, attributes: attributes)
        let attrS = NSAttributedString(string: str, attributes: attributes)
        //: btn.setAttributedTitle(attrS, for: .normal)
        btn.setAttributedTitle(attrS, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MiniViewDelegate = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = MiniViewDelegate(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetPhotoTableCell {
extension IconTableCell {
    //: @objc func chooseGiftBtnClick() {
    @objc func notice() {
        //: func__chooseGift()
        assign()
    }

    //: func setGiftMsgLab(dic: Dictionary<String, Any>) {
    func block(dic: [String: Any]) {
        //: let giftName = dic["giftName"] as? String ?? ""
        let giftName = dic[(String(str_topTitle) + String(str_freeTargetContent.prefix(6)))] as? String ?? ""
        //: let giftPrice = dic["giftPrice"] as? Int ?? 0
        let giftPrice = dic[(str_courseHomeToTitle.replacingOccurrences(of: "area", with: "g") + String(str_circleWithTitle))] as? Int ?? 0
        //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftName, giftPrice), for: .normal)
        self.giftMsgBtn.setTitle((str_appearValue.capitalized + "(%@ " + String(str_videoData.suffix(5)) + String(str_hiddenValue.suffix(6))).localizedArguments(giftName, giftPrice), for: .normal)
    }
}

//: extension TalkingGreetPhotoTableCell {
extension IconTableCell {
    //: func func__chooseGift() {
    func assign() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .intimatePhoto, completion: {
        SumReactiveCompatible.share.dialog(type: .intimatePhoto, completion: {
            //: self.func__showGiftChoiceView()
            self.modelExitDoing()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func modelExitDoing() {
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
            //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftModel.name, giftModel.price), for: .normal)
            self.giftMsgBtn.setTitle((str_appearValue.capitalized + "(%@ " + String(str_videoData.suffix(5)) + String(str_hiddenValue.suffix(6))).localizedArguments(giftModel.name, giftModel.price), for: .normal)
            //: if self.seleteGiftBlock != nil {
            if self.seleteGiftBlock != nil {
                //: self.seleteGiftBlock!(giftModel.gid)
                self.seleteGiftBlock!(giftModel.gid)
            }
        }
    }
}

//: extension TalkingGreetPhotoTableCell {
extension IconTableCell {
    // 添加视图
    //: private func setupSubviews() {
    private func voiceBy() {
        //: self.contentView.addSubview(backGiftView)
        self.contentView.addSubview(backGiftView)
        //: backGiftView.addSubview(giftLaB)
        backGiftView.addSubview(giftLaB)
        //: backGiftView.addSubview(giftMsgBtn)
        backGiftView.addSubview(giftMsgBtn)
        //: backGiftView.addSubview(chooseGiftBtn)
        backGiftView.addSubview(chooseGiftBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func eachLoad() {
        //: backGiftView.snp.makeConstraints { make in
        backGiftView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: giftLaB.snp.makeConstraints { make in
        giftLaB.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
        }
        //: giftMsgBtn.snp.makeConstraints { make in
        giftMsgBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftLaB.snp.bottom).offset(15)
            make.top.equalTo(giftLaB.snp.bottom).offset(15)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: chooseGiftBtn.snp.makeConstraints { make in
        chooseGiftBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
    }
}
