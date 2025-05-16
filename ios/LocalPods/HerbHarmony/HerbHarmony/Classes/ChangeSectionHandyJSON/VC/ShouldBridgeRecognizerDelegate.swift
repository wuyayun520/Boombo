
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let str_toModeData:[Character] = ["b","g","_","s"]
fileprivate let str_gameName:[Character] = ["h","o","u","y","e","_","m","i","s","a","n","g","u","a","n","g","_","d","e","f","a","u","l","t"]

/*: "Popular" :*/
fileprivate let str_receiveSexAttentionData:String = "Popularfalse key self extension live"

/*: "777777" :*/
fileprivate let str_downDomainText:String = "777777"

/*: "icon_moment_news_nor" :*/
fileprivate let str_indexData:String = "icoframe"
fileprivate let str_backgroundValue:String = "view open request heightnt_n"
fileprivate let str_leadingValue:[Character] = ["e","w","s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let str_makeName:[Character] = ["i","c","o","n"]
fileprivate let str_infoData:[Character] = ["_","f","r","e","e","_","p","r","e"]

/*: "num" :*/
fileprivate let str_cellName:[Character] = ["n","u","m"]

/*: "99+" :*/
fileprivate let str_colorName:[UInt8] = [0xa9,0xa9,0xbb]

private func currentLocationRange(block num: UInt8) -> UInt8 {
    return num ^ 144
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldBridgeRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class ShouldBridgeRecognizerDelegate: NameViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        memoryImage()
        //: setupSubViewsConstraint()
        swaddlingClothesWrite()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(statusCreate), name: kLet_halfName, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        childlessnessNum()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.nearCounterval(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.nearCounterval(name: (String(str_toModeData) + String(str_gameName))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: TotalViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = TotalViewController()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = kLet_indexText
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [SumryMomentVc()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(str_receiveSexAttentionData.prefix(7))).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .liveAttention(type: .Medium, fontSize: 16)
        vc.titleFont = .liveAttention(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .liveAttention(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .liveAttention(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (str_downDomainText.capitalized))!
        //: vc.selectedColor = UIColor.occurrence()
        vc.selectedColor = UIColor.occurrence()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (str_indexData.replacingOccurrences(of: "frame", with: "n") + "_mome" + String(str_backgroundValue.suffix(4)) + String(str_leadingValue))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bringHome), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: ScientificResearchScienceLabThen = {
        //: let label = BadgeLab()
        let label = ScientificResearchScienceLabThen()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_makeName) + String(str_infoData))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(now), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension ShouldBridgeRecognizerDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func childlessnessNum() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        ManagerRequestTool.callUpTo { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.reside(num: json[(String(str_cellName))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension ShouldBridgeRecognizerDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func bringHome() {
        //: refreshNewsbadge(num: 0)
        reside(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = ClickDataSource()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func statusCreate() {
        //: freeBtnClickEvent()
        now()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func now() {
        //: if WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue, WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue, WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue, WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            CustomThen.adRequest { _, _, _ in
                //: if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
                if !WithAdministratorAppManager.share.loginUserMode.isNaUser,
                   //: WithAdministratorAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   WithAdministratorAppManager.share.loginUserMode.isTPAuth != ConditionSendable.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    ShowWindowManager.shared.mObjectDetail()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.teaching()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            teaching()
        }
    }

    //: private func pushFreeVC() {
    private func teaching() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = UserDefaults.standard.bool(forKey: kLet_maxName)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = BridgeViewController()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any IconObjectProtocol
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        SearchRoomView().erase {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - AnglicismNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension ShouldBridgeRecognizerDelegate: AnglicismNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func design(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension ShouldBridgeRecognizerDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func reside(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func memoryImage() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func swaddlingClothesWrite() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + kLet_messageContent)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
