
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let str_effectValue:String = "object gift route#201E50"

/*: "#1F1624" :*/
fileprivate let str_fillName:String = "view return#1F1624"

/*: "quick_video_topview" :*/
fileprivate let str_labName:String = "tag path selfquick_"
fileprivate let str_viewGroupData:String = "_topvmake status at white length"
fileprivate let str_addTitle:String = "sharedew"

/*: "nav_back_black_nor" :*/
fileprivate let str_equalMakeData:String = "nav_baframe to array"
fileprivate let str_allRowValue:String = "edit var reference in sourcelack_nor"

/*: "Random Video" :*/
fileprivate let str_onValue:String = "photo countRandom "
fileprivate let str_pointName:[Character] = ["V","i","d","e","o"]

/*: "quick_video_explain" :*/
fileprivate let str_toContent:String = "qgesturec"
fileprivate let str_statusName:String = "deo_wrap build let view show"

/*: "get json error" :*/
fileprivate let str_infoUpValue:String = "icon selfget jso"
fileprivate let str_makeGiftData:String = "mask stop incomen error"

/*: "Searching for perfect matches. please be patient." :*/
fileprivate let str_valueTitle:[UInt8] = [0x7e,0x48,0x4c,0x5f,0x4e,0x45,0x44,0x43,0x4a,0xd,0x4b,0x42,0x5f,0xd,0x5d,0x48,0x5f,0x4b,0x48,0x4e,0x59,0xd,0x40,0x4c,0x59,0x4e,0x45,0x48,0x5e,0x3,0xd,0x5d,0x41,0x48,0x4c,0x5e,0x48,0xd,0x4f,0x48,0xd,0x5d,0x4c,0x59,0x44,0x48,0x43,0x59,0x3]

/*: "Matching..." :*/
fileprivate let str_bindData:String = "dispute var gift count modelMatc"

/*: "matchId" :*/
fileprivate let str_sendSizeNearName:[Character] = ["m","a","t","c","h","I","d"]

/*: "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video." :*/
fileprivate let str_putText:[UInt8] = [0xb5,0xc4,0xd1,0xc7,0xd2,0xd0,0x83,0xb9,0xcc,0xc7,0xc8,0xd2,0x83,0xcb,0xc8,0xcf,0xd3,0xd6,0x83,0xcf,0xd2,0xc6,0xc4,0xd7,0xcc,0xd1,0xca,0x83,0xdc,0xd2,0xd8,0xd5,0x83,0xd0,0xc4,0xd7,0xc6,0xcb,0xc8,0xd6,0x83,0xd2,0xd1,0xcf,0xcc,0xd1,0xc8,0x83,0xd4,0xd8,0xcc,0xc6,0xce,0xcf,0xdc,0x91,0x83,0xb5,0xc4,0xd1,0xc7,0xd2,0xd0,0x83,0xb9,0xcc,0xc7,0xc8,0xd2,0xd6,0x83,0xc4,0xd5,0xc8,0x83,0xd3,0xd5,0xcc,0xc6,0xc8,0xc7,0x83,0xc4,0xd7,0x83,0x97,0x93,0x83,0xca,0xd2,0xcf,0xc7,0x83,0xc6,0xd2,0xcc,0xd1,0xd6,0x83,0xd3,0xc8,0xd5,0x83,0xd0,0xcc,0xd1,0xd8,0xd7,0xc8,0x83,0xc4,0xd1,0xc7,0x83,0xc4,0xd5,0xc8,0x83,0xd3,0xc4,0xcc,0xc7,0x83,0xc9,0xd2,0xd5,0x83,0xc5,0xdc,0x83,0xd7,0xcb,0xc8,0x83,0xd3,0xc4,0xd5,0xd7,0xdc,0x83,0xc6,0xc4,0xcf,0xcf,0xcc,0xd1,0xca,0x83,0xd7,0xcb,0xc8,0x83,0xd9,0xcc,0xc7,0xc8,0xd2,0x91]

fileprivate func showMake(environment num: UInt8) -> UInt8 {
    let value = Int(num) + 157
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let str_nativeData:[Character] = ["O","K"]

/*: "onVideoMatch" :*/
fileprivate let str_addData:String = "onVideoselected to lab"
fileprivate let str_maxRecordValue:String = "Matchguard else manager"

/*: "retryAfter" :*/
fileprivate let str_phoneData:[Character] = ["r","e","t","r","y","A","f","t","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControllerObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoMatchViewController: TalkingBaseViewController {
class ControllerObjectProtocol: NameViewController {
    //: private var headTimer: Timer?
    private var headTimer: Timer? // 头像展示定时器
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_videoMatchHeadPics()
        parallel()
        //: startVideoMatch()
        headMatch()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: stopVideoMatch()
        handleAll()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        subviewsWithError()
        //: setupSubViewsConstraint()
        playFrom()
    }

    //: deinit {
    deinit {
        //: stopVideoMatch()
        handleAll()
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.hitSample(colors: [UIColor(hex: (String(str_effectValue.suffix(7))))!.cgColor, UIColor(hex: (String(str_fillName.suffix(7))))!.cgColor], size: CGSize(width: kLet_senseContent, height: kLet_environmentClickValue))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.nearCounterval(name: "quick_video_topview")
        topView.image = UIImage.nearCounterval(name: (String(str_labName.suffix(6)) + "video" + String(str_viewGroupData.prefix(5)) + str_addTitle.replacingOccurrences(of: "shared", with: "i")))
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
        //: let backBImg = UIImage.nearCounterval(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let backBImg = UIImage.nearCounterval(name: (String(str_equalMakeData.prefix(6)) + "ck_b" + String(str_allRowValue.suffix(8)))).withRenderingMode(.alwaysTemplate)
        //: backBtn.setImage(backBImg, for: .normal)
        backBtn.setImage(backBImg, for: .normal)
        //: backBtn.tintColor = .white
        backBtn.tintColor = .white
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(scale), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_indexText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.behindUpRoom(fontSize: 17)
        titleLab.font = UIFont.behindUpRoom(fontSize: 17)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(str_onValue.suffix(7)) + String(str_pointName)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 提示（审核模式隐藏）
        //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
            //: let matchTipsBtn = UIButton(type: .custom)
            let matchTipsBtn = UIButton(type: .custom)
            //: let matchTipsImg = UIImage.nearCounterval(name: "quick_video_explain").withRenderingMode(.alwaysTemplate)
            let matchTipsImg = UIImage.nearCounterval(name: (str_toContent.replacingOccurrences(of: "gesture", with: "ui") + "k_vi" + String(str_statusName.prefix(4)) + "explain")).withRenderingMode(.alwaysTemplate)
            //: matchTipsBtn.setImage(matchTipsImg, for: .normal)
            matchTipsBtn.setImage(matchTipsImg, for: .normal)
            //: matchTipsBtn.tintColor = .white
            matchTipsBtn.tintColor = .white
            //: matchTipsBtn.addTarget(self, action: #selector(matchTipsButtonClick), for: .touchUpInside)
            matchTipsBtn.addTarget(self, action: #selector(tips), for: .touchUpInside)
            //: nav.addSubview(matchTipsBtn)
            nav.addSubview(matchTipsBtn)
            //: matchTipsBtn.snp.makeConstraints { make in
            matchTipsBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(0)
                make.trailing.equalTo(0)
                //: make.centerY.equalTo(backBtn)
                make.centerY.equalTo(backBtn)
                //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
                make.size.equalTo(CGSize(width: 45, height: kLet_indexText))
            }
        }

        //: return nav
        return nav
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Quick_Video_BG)
        let url = DigitiserReactiveCompatible.default.game(type: .Quick_Video_BG)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_infoUpValue.suffix(7)) + String(str_makeGiftData.suffix(7))))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.unprecedented(fontSize: 15)
        lab.font = UIFont.unprecedented(fontSize: 15)
        //: lab.textColor = UIColor.init(white: 1, alpha: 0.7)
        lab.textColor = UIColor(white: 1, alpha: 0.7)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Searching for perfect matches. please be patient.".localized
        lab.text = String(bytes: str_valueTitle.map{$0^45}, encoding: .utf8)!.localized
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var matchingLab: UILabel = {
    private lazy var matchingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.behindUpRoom(fontSize: 18)
        lab.font = UIFont.behindUpRoom(fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Matching...".localized
        lab.text = (String(str_bindData.suffix(4)) + "hing...").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = actualWidth(w: 90)/2
        img.layer.cornerRadius = actualWidth(w: 90) / 2
        //: img.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        img.image = UIImage.footnoteSex(sex: MiniSubqueryConvertible.female.rawValue)
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dataArr: [String] = {
    private lazy var dataArr: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var resultDataArr: [TalkingMatchResultModel] = {
    private lazy var resultDataArr: [TargetMeasurable] = //: return Array<TargetMeasurable>()
        .init()
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingQuickVideoMatchViewController {
extension ControllerObjectProtocol {
    /// 速配头像列表（男）
    //: private func req_videoMatchHeadPics() {
    private func parallel() {
        //: TalkingQuickVideoManager.req_videoMatchHeadPics { [weak self] succeed, result, errorModel in
        NumberimateReactiveCompatible.headCompletion { [weak self] succeed, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: self.dataArr = result as! [String]
            self.dataArr = result as! [String]

            //: var index = 0
            var index = 0
            //: self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { timer in
            self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { _ in
                // 实现无限循环
                //: if index >= self.dataArr.count { index = 0 }
                if index >= self.dataArr.count { index = 0 }
                // 网络加载图片，实现高斯模糊效果
                //: self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { isSucceed in
                self.headImgView.nearSquare(urlStr: self.dataArr[index]) { _ in
                    //: guard let image = self.headImgView.image else { return }
                    guard let image = self.headImgView.image else { return }
                    //: self.headImgView.image = UIImage.blur(theImage: image, blurValue: 17)
                    self.headImgView.image = UIImage.sharedValue(theImage: image, blurValue: 17)
                }
                //: index += 1
                index += 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.headTimer?.fire()
            self.headTimer?.fire()
        }
    }

    /// 开始视频速配（男）
    //: private func req_videoMatchToMatch() {
    private func serverSize() {
        //: TalkingQuickVideoManager.req_videoMatchToMatch(matchId: self.matchId) { succeed, result, errorModel in
        NumberimateReactiveCompatible.constraintTitle(matchId: self.matchId) { succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(str_sendSizeNearName))].intValue
        }
    }
}

// MARK: - Event

//: extension TalkingQuickVideoMatchViewController {
extension ControllerObjectProtocol {
    /// 停止视频速配
    //: private func stopVideoMatch() {
    private func handleAll() {
        // 销毁定时器
        //: if self.headTimer != nil {
        if self.headTimer != nil {
            //: self.headTimer?.invalidate()
            self.headTimer?.invalidate()
            //: self.headTimer = nil
            self.headTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }

        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        DataSocketDelegate.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        DataSocketDelegate.shared.errorDelegate = nil
    }

    /// 开始视频速配
    //: private func startVideoMatch() {
    private func headMatch() {
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        DataSocketDelegate.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        DataSocketDelegate.shared.errorDelegate = self
        //: req_videoMatchToMatch()
        serverSize()
    }

    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func scale() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 打开视频速配说明
    //: @objc private func matchTipsButtonClick() {
    @objc private func tips() {
        //: let message = "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video.".localized
        let message = String(bytes: str_putText.map{showMake(environment: $0)}, encoding: .utf8)!.localized
        //: TalkingAlertShow.alert(title: nil, message: message, rightBtnTitle: "OK".localized)
        VoiceAlertShow.enablelineMedium(title: nil, message: message, rightBtnTitle: "OK".localized)
    }
}

// MARK: - TalkingSocketManagerDelegate

//: extension TalkingQuickVideoMatchViewController: SocketManagerVideoMatchDelegate {
extension ControllerObjectProtocol: TotalMatchDelegate {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func discredit(data: [String: Any]) {
        // 停止速配，跳转速配结果界面
        //: stopVideoMatch()
        handleAll()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: guard let topVC = self.navigationController?.topViewController else { return }
            guard let topVC = self.navigationController?.topViewController else { return }
            //: guard !topVC.isKind(of: TalkingMatchResultViewController.self) else { return }
            guard !topVC.isKind(of: PrimaryMatchDelegate.self) else { return }
            //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
            guard let model = TargetMeasurable.deserialize(from: data) else { return }

            // v1.0.6 订阅用户 当前视频速配成功的次数大于等于2，则在其匹配中页面额外展示回放按钮
            //: if WithAdministratorAppManager.share.loginUserMode.loungePlus == true || WithAdministratorAppManager.share.loginUserMode.videoPlayback == true {
            if WithAdministratorAppManager.share.loginUserMode.loungePlus == true || WithAdministratorAppManager.share.loginUserMode.videoPlayback == true {
                //: if self.resultDataArr.count >= 2 {
                if self.resultDataArr.count >= 2 {
                    //: self.resultDataArr.removeFirst()
                    self.resultDataArr.removeFirst()
                }
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)

                //: } else {
            } else { // 非订阅用户只展示一条
                //: self.resultDataArr.removeAll()
                self.resultDataArr.removeAll()
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)
            }

            //: let vc = TalkingMatchResultViewController()
            let vc = PrimaryMatchDelegate()
            //: vc.showLastArr = self.resultDataArr
            vc.showLastArr = self.resultDataArr
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {}
    func giftCircle(data _: [String: Any]) {}
}

// MARK: - StartErrorDelegate

//: extension TalkingQuickVideoMatchViewController: TalkingSocketManagerErrorDelegate {
extension ControllerObjectProtocol: StartErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func number1(errorNo: Int, cmd: String, msg _: String, data: [String: Any]) {
        //: if cmd == "onVideoMatch" && errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(str_addData.prefix(7)) + String(str_maxRecordValue.prefix(5))) && errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(String(str_phoneData))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: self.matchId = json["matchId"].intValue
                self.matchId = json[(String(str_sendSizeNearName))].intValue
                //: self.startVideoMatch()
                self.headMatch()
                //: }, repeats: false)
            }, repeats: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingQuickVideoMatchViewController {
extension ControllerObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsWithError() {
        //: self.view.addSubview(bgImgView)
        self.view.addSubview(bgImgView)
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(svgaPlayer)
        self.view.addSubview(svgaPlayer)
        //: self.view.addSubview(tipsLab)
        self.view.addSubview(tipsLab)
        //: self.view.addSubview(matchingLab)
        self.view.addSubview(matchingLab)
        //: self.view.addSubview(headImgView)
        self.view.addSubview(headImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func playFrom() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
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
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: ScreenWidth, height: ScreenWidth))
            make.size.equalTo(CGSize(width: kLet_senseContent, height: kLet_senseContent))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalToSuperview().offset(-88-kLet_appMarginText)
            make.bottom.equalToSuperview().offset(-88 - kLet_appMarginText)
        }
        //: matchingLab.snp.makeConstraints { make in
        matchingLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(tipsLab.snp.top).offset(-20)
            make.bottom.equalTo(tipsLab.snp.top).offset(-20)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.center.equalTo(svgaPlayer)
            make.center.equalTo(svgaPlayer)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
            make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
        }
    }
}
