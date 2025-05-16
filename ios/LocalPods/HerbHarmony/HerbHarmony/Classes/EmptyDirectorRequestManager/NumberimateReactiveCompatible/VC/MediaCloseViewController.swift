
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let str_hideData:[Character] = ["#","3","3","0","0","5","B"]

/*: "#322870" :*/
fileprivate let str_makeName:String = "#322870"

/*: "Tap to start video chatting" :*/
fileprivate let str_conDailyName:String = "Tap ok push"
fileprivate let str_aspectTitle:[Character] = ["t"," ","v","i","d"]
fileprivate let str_videoData:[Character] = ["e","o"," ","c","h","a","t","t","i","n","g"]

/*: "icon_views_number" :*/
fileprivate let str_finishValue:[Character] = ["i","c","o","n","_","v","i","e","w","s"]
fileprivate let str_kitData:[Character] = ["_","n","u","m","b","e","r"]

/*: "icon_lounge" :*/
fileprivate let str_draftName:[Character] = ["i","c","o","n","_"]
fileprivate let str_messageCellContent:[Character] = ["l","o","u","n","g","e"]

/*: "icon_rank_coin" :*/
fileprivate let str_sharedIndexTitle:String = "ICON"
fileprivate let str_leadingName:String = "k_coinremove at status"

/*: "vip_btn_top" :*/
fileprivate let str_imageName:String = "type leading transform makevip_"
fileprivate let str_deviceData:[Character] = ["o","p"]

/*: "btn_nearby_settings_nor" :*/
fileprivate let str_mediumData:String = "btn_nlist cell deadline"
fileprivate let str_keyMakeValue:String = "smodelt"
fileprivate let str_appData:[Character] = ["t","i","n","g","s","_","n","o","r"]

/*: "#F0F0F2" :*/
fileprivate let str_tapName:String = "#F0F0F2target let model layer"

/*: "icon_coin_pre" :*/
fileprivate let str_colorText:String = "I"
fileprivate let str_priceData:String = "con_coregular data add format"

/*: "fee" :*/
fileprivate let str_verticalName:String = "fname"

/*: "VIPFee" :*/
fileprivate let str_cellData:String = "self colorVIPFee"

/*: "chattingNum" :*/
fileprivate let str_pushName:[Character] = ["c","h","a","t","t","i","n"]
fileprivate let str_liveData:[Character] = ["g","N","u","m"]

/*: "get json error" :*/
fileprivate let str_fieldData:String = "get jstarget lab effect size permission"

/*: "Free 1 min" :*/
fileprivate let str_colorName:String = "normal sex classFree 1"
fileprivate let str_infoText:[Character] = [" ","m","i","n"]

/*: "%@/min" :*/
fileprivate let str_removeName:String = "%@/milab point copy let"
fileprivate let str_tableTitle:[Character] = ["n"]

/*: "%@ chatting" :*/
fileprivate let str_scaleCenterName:String = "%@ chattsize data type self"
fileprivate let str_topValue:String = "indexg"

/*: "%@ Coins/min" :*/
fileprivate let str_emptyData:String = "like direction join medium%@ C"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaCloseViewController.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/4/8.
//

//: import UIKit
import UIKit

//: class TalkingMaleStaticRandomVideoVC: TalkingBaseViewController {
class MediaCloseViewController: NameViewController {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_updateVIPFee()
        inputFee()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        setupWith()
        //: setupSubViewsConstraint()
        toThan()
        //: reqvideoMatchCheck()
        sectionSelect()
        //: bindInteraction()
        actionImage()
        //: setPlayer()
        playerFree()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频画面渲染视图
    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(str_hideData)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(listVideo), for: .touchUpInside)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        // 渐变
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth+1, height: ScreenHeight+1)
        layer.frame = CGRect(x: 0, y: 0, width: kLet_senseContent + 1, height: kLet_environmentClickValue + 1)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: "#322870")!.cgColor]
        layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: (str_makeName.capitalized))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: btn.layer.addSublayer(layer)
        btn.layer.addSublayer(layer)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
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
        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.boldSystemFont(ofSize: 20)
        lab.font = UIFont.boldSystemFont(ofSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Tap to start video chatting".localized
        lab.text = (String(str_conDailyName.prefix(4)) + "to star" + String(str_aspectTitle) + String(str_videoData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_finishValue) + String(str_kitData))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.nearCounterval(name: (String(str_finishValue) + String(str_kitData))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var priceStackView: UIStackView = {
    private lazy var priceStackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 4
        v.spacing = 4
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipIcon: UIImageView = {
    private lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_lounge")
        img.image = UIImage.nearCounterval(name: (String(str_draftName) + String(str_messageCellContent)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var goldCoinIcon: UIImageView = {
    private lazy var goldCoinIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_rank_coin")
        img.image = UIImage.nearCounterval(name: (str_sharedIndexTitle.lowercased() + "_ran" + String(str_leadingName.prefix(6))))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var priceLab: UILabel = {
    private lazy var priceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        lab.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipTopImgView: UIImageView = {
    private lazy var vipTopImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.image  = UIImage.nearCounterval(name: "vip_btn_top")
        imgV.image = UIImage.nearCounterval(name: (String(str_imageName.suffix(4)) + "btn_t" + String(str_deviceData)))
        //: return imgV
        return imgV
        //: }()
    }()

    // 会员折扣价
    //: private lazy var vipPriceBtn: TalkingButton = {
    private lazy var vipPriceBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        //: btn.layer.cornerRadius = actualWidth(w: 27)
        btn.layer.cornerRadius = actualWidth(w: 27)
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeUp), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_nearby_settings_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_mediumData.prefix(5)) + "earby_" + str_keyMakeValue.replacingOccurrences(of: "model", with: "e") + String(str_appData))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var vipPriceImg: UIImageView = {
    private lazy var vipPriceImg: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image  = UIImage.nearCounterval(name: "icon_rank_coin")
        imgV.image = UIImage.nearCounterval(name: (str_sharedIndexTitle.lowercased() + "_ran" + String(str_leadingName.prefix(6))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var vipPriceLab: UILabel = {
    private lazy var vipPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .userVipColor()
        lab.textColor = .insert()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var norPriceLab: UILabel = {
    private lazy var norPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: return lab
        return lab
        //: }()
    }()

    /// 余额
    //: private lazy var balanceBtn: TalkingButton = {
    private lazy var balanceBtn: RoomThen = {
        //: let btn = TalkingButton()
        let btn = RoomThen()
        //: btn.backgroundColor = UIColor.init(hex: "#F0F0F2")
        btn.backgroundColor = UIColor(hex: (String(str_tapName.prefix(7))))
        //: btn.layer.cornerRadius = 12
        btn.layer.cornerRadius = 12
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(balanceBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(facingPagesGift), for: .touchUpInside)
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_coin_pre")
        img.image = UIImage.nearCounterval(name: (str_colorText.lowercased() + String(str_priceData.prefix(6)) + "in_pre"))
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: btn.addSubview(img)
        btn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.leading.top.bottom.equalToSuperview()
            make.leading.top.bottom.equalToSuperview()
            //: make.width.equalTo(24)
            make.width.equalTo(24)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var balanceLB: UILabel = {
    private lazy var balanceLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: balanceBtn.addSubview(lb)
        balanceBtn.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.top.equalTo(4)
            make.top.equalTo(4)
            //: make.bottom.equalTo(-4)
            make.bottom.equalTo(-4)
            //: make.leading.equalTo(29)
            make.leading.equalTo(29)
        }
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMaleStaticRandomVideoVC {
extension MediaCloseViewController {
    //: @objc private func reqvideoMatchCheck() {
    @objc private func sectionSelect() {
        //: TalkingQuickVideoManager.req_videoMatchCheck(enterType: 1) { succeed, result, errorModel in
        NumberimateReactiveCompatible.dismissAction(enterType: 1) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.fee = json["fee"].intValue
            self.fee = json[(str_verticalName.replacingOccurrences(of: "name", with: "ee"))].intValue
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(str_cellData.suffix(6)))].intValue
            //: self.chattingNum = json["chattingNum"].intValue
            self.chattingNum = json[(String(str_pushName) + String(str_liveData))].intValue
            //: self.refreshVideoCallPrice()
            self.startWithAverageCost()
        }
    }

    //: private func setPlayer() {
    private func playerFree() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Random_video_bg_nor )
        let url = DigitiserReactiveCompatible.default.game(type: .Random_video_bg_nor)
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
                //: svgaPlayer.videoItem = videoItem
                svgaPlayer.videoItem = videoItem
                //: svgaPlayer.startAnimation()
                svgaPlayer.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(str_fieldData.prefix(6)) + "on error"))
        }
    }

    /// 更新VIP价格
    //: @objc private func req_updateVIPFee() {
    @objc private func inputFee() {
        //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
        NumberimateReactiveCompatible.dismissAction { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(str_cellData.suffix(6)))].intValue
            //: self.refreshVideoCallPrice()
            self.startWithAverageCost()
        }
    }
}

// MARK: - Event

//: extension TalkingMaleStaticRandomVideoVC {
extension MediaCloseViewController {
    /// 余额点击事件
    //: @objc private func balanceBtnClick() {
    @objc private func facingPagesGift() {
//        LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func makeUp() {
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert()
        LeadingEqualReactiveCompatible.share.nowKeyLog()
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func listVideo() {
        //: gradientBtn.isUserInteractionEnabled = false
        gradientBtn.isUserInteractionEnabled = false
        //: LeadingEqualReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: true)
        LeadingEqualReactiveCompatible.share.gameShove(isBeginRand: true)
        //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //: self.gradientBtn.isUserInteractionEnabled = true
            self.gradientBtn.isUserInteractionEnabled = true
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleStaticRandomVideoVC {
extension MediaCloseViewController {
    /// 刷新视频通话价格
    //: @objc private func refreshVideoCallPrice() {
    @objc private func startWithAverageCost() {
        //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else {
            //: priceStackView.isHidden = true
            priceStackView.isHidden = true
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true
            //: return
            return
        }

        //: vipIcon.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        vipIcon.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        //: priceStackView.isHidden = false
        priceStackView.isHidden = false
        //: let indexType = EnableFreeCallType.randow
        let indexType = SumryEnableNumeric.randow
        //: if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0 && WithAdministratorAppManager.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.freeCallTimes > 0, WithAdministratorAppManager.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue { // 有免费次数
            //: if WithAdministratorAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if WithAdministratorAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: priceLab.text = "Free 1 min".localized
                priceLab.text = (String(str_colorName.suffix(6)) + String(str_infoText)).localized
                //: } else {
            } else {
                //: priceStackView.isHidden = true
                priceStackView.isHidden = true
            }
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true
            //: } else {
        } else { // 无免费次数, 展示价格
            //: let price = WithAdministratorAppManager.share.loginUserMode.loungePlus ? vipFee:fee
            let price = WithAdministratorAppManager.share.loginUserMode.loungePlus ? vipFee : fee
            //: priceLab.text = "%@/min".localizedArguments(price)
            priceLab.text = (String(str_removeName.prefix(5)) + String(str_tableTitle)).localizedArguments(price)

            //: let attr = NSMutableAttributedString(string: "%@/min".localizedArguments(price), attributes: [.strikethroughStyle : NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.behindUpRoom(fontSize: 10)])
            let attr = NSMutableAttributedString(string: (String(str_removeName.prefix(5)) + String(str_tableTitle)).localizedArguments(price), attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.behindUpRoom(fontSize: 10)])
            //: norPriceLab.attributedText = attr
            norPriceLab.attributedText = attr

            //: vipPriceBtn.isHidden = WithAdministratorAppManager.share.loginUserMode.loungePlus
            vipPriceBtn.isHidden = WithAdministratorAppManager.share.loginUserMode.loungePlus
            //: vipTopImgView.isHidden = WithAdministratorAppManager.share.loginUserMode.loungePlus
            vipTopImgView.isHidden = WithAdministratorAppManager.share.loginUserMode.loungePlus
            //: priceStackView.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
            priceStackView.isHidden = !WithAdministratorAppManager.share.loginUserMode.loungePlus
        }
        //: chattingNumBtn.setTitle("%@ chatting".localizedArguments(chattingNum), for: .normal)
        chattingNumBtn.setTitle((String(str_scaleCenterName.prefix(8)) + str_topValue.replacingOccurrences(of: "index", with: "in")).localizedArguments(chattingNum), for: .normal)
        //: vipPriceLab.text = "%@ Coins/min".localizedArguments(vipFee)
        vipPriceLab.text = (String(str_emptyData.suffix(4)) + "oins/min").localizedArguments(vipFee)

        //: let index = Int(Double(WithAdministratorAppManager.share.loginUserMode.mf_coin) ?? 0)
        let index = Int(Double(WithAdministratorAppManager.share.loginUserMode.mf_coin) ?? 0)
        //: balanceLB.text = "\(index)"
        balanceLB.text = "\(index)"
        //: let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        //: balanceBtn.snp.updateConstraints { make in
        balanceBtn.snp.updateConstraints { make in
            //: make.width.equalTo(40+(size?.width ?? 10))
            make.width.equalTo(40 + (size?.width ?? 10))
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func setupWith() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(gradientBtn)
        view.addSubview(gradientBtn)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(tipsLab)
        view.addSubview(tipsLab)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(priceStackView)
        view.addSubview(priceStackView)
        //: priceStackView.addArrangedSubview(vipIcon)
        priceStackView.addArrangedSubview(vipIcon)
        //: priceStackView.addArrangedSubview(goldCoinIcon)
        priceStackView.addArrangedSubview(goldCoinIcon)
        //: priceStackView.addArrangedSubview(priceLab)
        priceStackView.addArrangedSubview(priceLab)
        //: view.addSubview(vipPriceBtn)
        view.addSubview(vipPriceBtn)
        //: view.addSubview(vipTopImgView)
        view.addSubview(vipTopImgView)

        //: vipPriceBtn.addSubview(vipPriceImg)
        vipPriceBtn.addSubview(vipPriceImg)
        //: vipPriceBtn.addSubview(vipPriceLab)
        vipPriceBtn.addSubview(vipPriceLab)
        //: vipPriceBtn.addSubview(norPriceLab)
        vipPriceBtn.addSubview(norPriceLab)

        //: view.addSubview(balanceBtn)
        view.addSubview(balanceBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func toThan() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientBtn.snp.makeConstraints { make in
        gradientBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-8)
            make.leading.equalTo(-8)
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 395))
            make.height.equalTo(actualWidth(w: 395))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            //: make.width.centerX.equalToSuperview()
            make.width.centerX.equalToSuperview()
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLab.snp.bottom).offset(35)
            make.top.equalTo(tipsLab.snp.bottom).offset(35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: priceStackView.snp.makeConstraints { make in
        priceStackView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(31)
            make.height.equalTo(31)
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
        }
        //: goldCoinIcon.snp.makeConstraints { make in
        goldCoinIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 15))
            make.width.height.equalTo(actualWidth(w: 15))
        }
        //: priceLab.snp.makeConstraints { make in
        priceLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: vipPriceBtn.snp.makeConstraints { make in
        vipPriceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(priceStackView.snp.bottom).offset(16)
            make.top.equalTo(priceStackView.snp.bottom).offset(16)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
            make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
        }
        //: vipTopImgView.snp.makeConstraints { make in
        vipTopImgView.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            //: make.leading.equalTo(vipPriceBtn.snp.leading)
            make.leading.equalTo(vipPriceBtn.snp.leading)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
            make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
        }
        //: vipPriceImg.snp.makeConstraints { make in
        vipPriceImg.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(actualWidth(w: 12))
            make.top.equalToSuperview().offset(actualWidth(w: 12))
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
            //: make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
            make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
        }

        //: vipPriceLab.snp.makeConstraints { make in
        vipPriceLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(vipPriceImg)
            make.centerY.equalTo(vipPriceImg)
            //: make.centerX.equalToSuperview().offset(8)
            make.centerX.equalToSuperview().offset(8)
        }
        //: norPriceLab.snp.makeConstraints { make in
        norPriceLab.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: balanceBtn.snp.makeConstraints { make in
        balanceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+8)
            make.top.equalTo(kLet_messageContent + 8)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(actualWidth(w: 24))
            make.height.equalTo(actualWidth(w: 24))
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func actionImage() {
        // index/getconfig接口回调刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshVideoCallPrice),
                                               selector: #selector(startWithAverageCost),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: kLet_keyText,
                                               //: object: nil)
                                               object: nil)
    }
}
