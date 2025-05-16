
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let str_locationData:[Character] = ["a","p","p","_","m","a","r","s","x","l","o","g"]

/*: "Install" :*/
fileprivate let str_frameBottomLetText:[Character] = ["I","n","s","t","a","l","l"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let str_agreeValue:String = "TXUGCBasnormal observer"
fileprivate let str_runningName:String = "e初\u{59cb}化：r"
fileprivate let str_verticalTitle:[Character] = ["e","s","u","l","t",":"," "]

/*: , reason:  :*/
fileprivate let str_viewCardName:[Character] = [","," ","r","e","a"]
fileprivate let str_topData:String = "appear self viewson: "

/*: ." :*/
fileprivate let str_appData:String = "title"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonDelegateHelper+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust

//: import Foundation
import Foundation

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional

//: import UIKit
import UIKit

//: import DXMarsXlog
import DXMarsXlog

// MARK: - Public Event

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func upAdd(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = MBankManagerTransactionObserver.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(str_locationData)))

        //: EdificeV2Listener.shared.func__TXSDKInit()
        EdificeV2Listener.shared.byInit()

        //: initADjust()
        roomAndTo()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        ViewIndexReactiveCompatible.share.con(key: (String(str_frameBottomLetText)))
        //: setupTXLive()
        queue()
        //: setupTXUGC()
        addTxugc()

        //: guard SenseTime_Use == true else { return }
        guard kLet_tabTitle == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if STLicHelper.share.checkLicense() == false {
                //: SenseTime_Use = false
                kLet_tabTitle = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                STLicHelper.share.checkRemoteLicInfoWith { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    kLet_tabTitle = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension ButtonDelegateHelper {
    //: private func setupTXLive() {
    private func queue() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if kLet_changeTitle.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(kLet_changeTitle, key: kLet_clickMeTitle)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func addTxugc() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(kLet_changeTitle, key: kLet_clickMeTitle)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func roomAndTo() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !kLet_intervalLimitValue {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = kLet_toData
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension ButtonDelegateHelper: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        QueryThen.bringInstance(msg: (String(str_agreeValue.prefix(8)) + str_runningName + String(str_verticalTitle)) + "\(result)" + (String(str_viewCardName) + String(str_topData.suffix(5))) + "\(String(describing: reason)).")
    }
}
