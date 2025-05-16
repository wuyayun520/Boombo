
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_ofData:String = "#201E5let dismiss view"
fileprivate let str_styleValue:[Character] = ["0"]

/*: "#1F1624" :*/
fileprivate let str_betweenData:[Character] = ["#"]
fileprivate let str_pauseValue:String = "1F1624begin cell user add height"

/*: "quick_video_topview" :*/
fileprivate let str_indexPopData:String = "QUIC"
fileprivate let str_lineViewName:[Character] = ["e","o","_","t","o","p","v","i","e","w"]

/*: "btn_back_white" :*/
fileprivate let str_makeLabelValue:String = "btn_bcollection click observer text view"
fileprivate let str_managerContent:[Character] = ["a","c","k","_"]
fileprivate let str_succeedTitle:[Character] = ["w","h","i","t","e"]

/*: "Random Video" :*/
fileprivate let str_bottomName:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let str_toNoData:String = "scale image voice dataicon_"
fileprivate let str_nameData:String = "N"

/*: "btn_quick_back_nor" :*/
fileprivate let str_viewName:[Character] = ["b","t","n","_","q","u","i","c","k","_","b","a"]
fileprivate let str_closeText:[Character] = ["c","k","_","n","o","r"]

/*: "icon_video_skip" :*/
fileprivate let str_kitData:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s","k","i","p"]

/*: "#9610FF" :*/
fileprivate let str_videoColorText:String = "#9610FFname bottom"

/*: "#8566FF" :*/
fileprivate let str_sharedContent:[Character] = ["#","8","5","6","6","F","F"]

/*: "icon_coin_match_line" :*/
fileprivate let str_countData:[Character] = ["i","c","o","n","_","c","o","i","n","_","m","a","t","c","h","_"]
fileprivate let str_toolText:[Character] = ["l","i","n","e"]

/*: "matchId" :*/
fileprivate let str_normalValue:[UInt8] = [0x64,0x49,0x68,0x63,0x74,0x61,0x6d]

/*: "source" :*/
fileprivate let str_nameValue:[UInt8] = [0x1,0x1d,0x7,0x0,0x11,0x17]

/*: "type" :*/
fileprivate let str_appCenterName:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "uid" :*/
fileprivate let str_textLayerName:[Character] = ["u","i","d"]

/*: "fromFreeCall" :*/
fileprivate let str_itemData:String = "return in return letfromF"

/*: "cmd" :*/
fileprivate let str_viewData:[UInt8] = [0xfa,0xf4,0xfd]

/*: "requestCall" :*/
fileprivate let str_labAppText:[Character] = ["r","e","q","u","e","s","t","C","a","l","l"]

/*: "data" :*/
fileprivate let str_normalTitle:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let str_formatData:[Character] = ["o"]
fileprivate let str_linkValue:String = "group matchnReq"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrimaryMatchDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class PrimaryMatchDelegate: NameViewController {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = TargetMeasurable() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        dataConverterInThreepence()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        belowName()
        //: setupSubViewsConstraint()
        targetLens()
        //: refreshUI()
        colorUi()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(dataConverterInThreepence),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: kLet_countGiftFailureData,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DataSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DataSocketDelegate.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.hitSample(colors: [UIColor(hex: (String(str_ofData.prefix(6)) + String(str_styleValue)))!.cgColor, UIColor(hex: (String(str_betweenData) + String(str_pauseValue.prefix(6))))!.cgColor], size: CGSize(width: kLet_senseContent, height: kLet_environmentClickValue))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.nearCounterval(name: "quick_video_topview")
        topView.image = UIImage.nearCounterval(name: (str_indexPopData.lowercased() + "k_vid" + String(str_lineViewName)))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: backBtn.setImage(UIImage.nearCounterval(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.nearCounterval(name: (String(str_makeLabelValue.prefix(5)) + String(str_managerContent) + String(str_succeedTitle))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(infoCreateMenu), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(kLet_messageContent + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.behindUpRoom(fontSize: 17)
        titleLab.font = UIFont.behindUpRoom(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_bottomName)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = RoomThen()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.nearCounterval(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.nearCounterval(name: (String(str_toNoData.suffix(5)) + "rank_coi" + str_nameData.lowercased())), for: .normal)
        //: coinBtn.setImage(UIImage.nearCounterval(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.nearCounterval(name: (String(str_toNoData.suffix(5)) + "rank_coi" + str_nameData.lowercased())), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.occurrence(), for: .normal)
        coinBtn.setTitleColor(UIColor.occurrence(), for: .normal)
        //: coinBtn.setTitle("\(WithAdministratorAppManager.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(WithAdministratorAppManager.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.liveAttention(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: ResembleReactiveCompatible = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = ResembleReactiveCompatible(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.infoCreateMenu()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_viewName) + String(str_closeText))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appView), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_kitData))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(infoCreateMenu), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(callIn), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: [UIColor(hex: (String(str_videoColorText.prefix(7))))!.cgColor, UIColor(hex: (String(str_sharedContent)))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [TargetMeasurable] = //: return Array<TargetMeasurable>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.nearCounterval(name: "icon_coin_match_line")
        view.image = UIImage.nearCounterval(name: (String(str_countData) + String(str_toolText)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension PrimaryMatchDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func infoCreateMenu() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func callIn() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: str_normalValue.reversed(), encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: str_nameValue.map{$0^114}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: str_appCenterName.reversed(), encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (String(str_textLayerName)): self.currentModel.uid]
        //: if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0 && WithAdministratorAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(str_itemData.suffix(5)) + "reeCall"))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: str_viewData.map{$0^153}, encoding: .utf8)!: (String(str_labAppText)), String(bytes: str_normalTitle.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        DataSocketDelegate.shared.demonstrateInfo(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        DataSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        DataSocketDelegate.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func dataConverterInThreepence() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        CustomThen.vanguard { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! RoomThen
            //: coinBtn.setTitle(WithAdministratorAppManager.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(WithAdministratorAppManager.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func appView() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        colorUi()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension PrimaryMatchDelegate: TotalMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func discredit(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func giftCircle(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: PrimaryMatchDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(String(str_textLayerName))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = SubmitExtraObjectProtocol()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = StandardChatModel.removeSystem(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - StartErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension PrimaryMatchDelegate: StartErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func number1(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(str_formatData) + String(str_linkValue.suffix(4)) + "uestCall") {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.atShow(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == Salmagundi.CallEnd.rawValue {
                //: clickBackButtonAction()
                infoCreateMenu()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == Salmagundi.MoneyLack.rawValue {
                //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else { return }
                //: LeadingEqualReactiveCompatible.share.func__jumpToWebRecharge(sufficient: false)
                LeadingEqualReactiveCompatible.share.toParams(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension PrimaryMatchDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func belowName() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func targetLens() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(kLet_likeTitle)
            make.height.equalTo(kLet_likeTitle)
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kLet_appMarginText+36))
            make.bottom.equalTo(-(kLet_appMarginText + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func colorUi() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        tinkle()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.pictures(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = ViewManagerReactiveCompatible(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.actionController()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if WithAdministratorAppManager.share.appStatus != AppSkinStatus.normal.rawValue {
        if WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! RoomThen
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            tinkle()
        }
    }

    //: func setPriceBtn() {
    func tinkle() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: WithAdministratorAppManager.share.loginUserMode.freeCallTimes)
        let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: WithAdministratorAppManager.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
