
//: Declare String Begin

/*: "/dist/loungePlus/index5.html" :*/
fileprivate let str_pageFrameFileData:String = "main then go equal return/dist/l"
fileprivate let str_infoName:[Character] = ["o","u","n","g","e","P","l","u","s","/","i","n","d","e","x","5",".","h","t","m","l"]

/*: "&type=1" :*/
fileprivate let str_ofName:[Character] = ["&","t","y","p","e","=","1"]

/*: "PremiumStarPlanBanner" :*/
fileprivate let str_liveValue:[Character] = ["P","r","e","m","i","u","m","S","t"]
fileprivate let str_fatalName:String = "show let fail dataarPl"

/*: "uid" :*/
fileprivate let str_enableText:[Character] = ["u","i","d"]

/*: "mfChatGift" :*/
fileprivate let str_ofContent:[Character] = ["m","f","C","h"]
fileprivate let str_viewTitle:String = "atGifttitle main video if"

/*: "mfChat" :*/
fileprivate let str_countFormatGiftValue:[Character] = ["m","f","C","h","a","t"]

/*: "user" :*/
fileprivate let str_touchTitle:[Character] = ["u","s","e","r"]

/*: "Please verification first" :*/
fileprivate let str_userName:String = "manager call equal elsePleas"
fileprivate let str_priceData:String = "toica"
fileprivate let str_viewValue:[Character] = [" ","f","i","r","s","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverModelType.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct CoverModelType: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension CoverModelType {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func observerCorner(model: CoverModelType) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index5.html") {
            if newUrl.contains((String(str_pageFrameFileData.suffix(7)) + String(str_infoName))) {
                //: LeadingEqualReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=1")
                LeadingEqualReactiveCompatible.share.nowKeyLog(appendParams: (String(str_ofName)))
                //: return
                return
            }
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: model.url)
            LeadingEqualReactiveCompatible.share.loadWith(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(str_liveValue) + String(str_fatalName.suffix(4)) + "anBanner")) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                CoverModelType.listBanner()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (String(str_enableText)) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(str_ofContent) + String(str_viewTitle.prefix(6)))) { // 私聊打开礼物面板
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.theory()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(str_countFormatGiftValue))) { // 私聊
                    //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid)
                    LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((String(str_touchTitle))) { // 用户详情
                    //: LeadingEqualReactiveCompatible.share.func__pushToUserDetailVC(uid: uid)
                    LeadingEqualReactiveCompatible.share.bindDownFrom(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = HandleBladeConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            LeadingEqualReactiveCompatible.share.loadWith(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func listBanner() {
        //: if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isSuccessed.rawValue ||
            //: WithAdministratorAppManager.share.loginUserMode.isRealPersonAuth == false {
            WithAdministratorAppManager.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if WithAdministratorAppManager.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if WithAdministratorAppManager.share.loginUserMode.premiumStarApplyStatus != IconTermConvertible.isOnGoing.rawValue {
                //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                LeadingEqualReactiveCompatible.share.enableLine(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                LeadingEqualReactiveCompatible.share.enableLine(webViewType: .StarPlanAudit)
            }
            //: } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if WithAdministratorAppManager.share.loginUserMode.isTPAuth == ConditionSendable.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().successMsg(showMsg: (String(str_userName.suffix(5)) + "e veri" + str_priceData.replacingOccurrences(of: "to", with: "f") + "tion" + String(str_viewValue)).localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = CommensurateViewController()
            //: LeadingEqualReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            LeadingEqualReactiveCompatible.share.getEqualVc()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().successMsg(showMsg: (String(str_userName.suffix(5)) + "e veri" + str_priceData.replacingOccurrences(of: "to", with: "f") + "tion" + String(str_viewValue)).localized)
            //: LeadingEqualReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            LeadingEqualReactiveCompatible.share.shove(toast: nil)
        }
    }
}
