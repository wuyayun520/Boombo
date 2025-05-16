
//: Declare String Begin

/*: "identifier" :*/
fileprivate let str_layerData:[UInt8] = [0xb9,0xb4,0xb5,0xbe,0xa4,0xb9,0xb6,0xb9,0xb5,0xa2]

private func cornerMessage(model num: UInt8) -> UInt8 {
    return num ^ 208
}

/*: "token" :*/
fileprivate let str_imagePhotoData:[UInt8] = [0x30,0x2b,0x27,0x21,0x2a]

fileprivate func conversationMake(color num: UInt8) -> UInt8 {
    let value = Int(num) - 188
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "authCode" :*/
fileprivate let str_quoteName:[UInt8] = [0x22,0x36,0x35,0x29,0x4,0x30,0x25,0x26]

fileprivate func enableView(cover num: UInt8) -> UInt8 {
    let value = Int(num) + 63
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*:   :*/
fileprivate let str_succeedManagerData:String = " "

/*: "nickname" :*/
fileprivate let str_iconToName:[Character] = ["n"]
fileprivate let str_viewValue:String = "ickncolore"

/*: "授权请求失败未知原因" :*/
fileprivate let str_pointName:[Character] = ["授","权","\u{8bf7}","\u{6c42}","失","败","\u{672a}","知","\u{539f}","因"]

/*: "用户取消了授权请求" :*/
fileprivate let str_actualValue:String = "from户取消了授权请"
fileprivate let str_matchName:[Character] = ["求"]

/*: "授权请求失败" :*/
fileprivate let str_timeValue:String = "授权input失败"

/*: "授权请求响应无效" :*/
fileprivate let str_yearText:String = "授\u{6743}"
fileprivate let str_labelByTitle:String = "请求响应to"

/*: "未能处理授权请求" :*/
fileprivate let str_colorName:[Character] = ["未"]
fileprivate let str_cellTimeValue:String = "能layer理授权请求"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonLoginManager.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import UIKit
import UIKit

//: import AuthenticationServices
import AuthenticationServices

//: enum AppLeLoginError: Error {
enum FrameSendable: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class ButtonLoginManager: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = ButtonLoginManager()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func cancelShow(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: str_layerData.map{cornerMessage(model: $0)}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: str_imagePhotoData.map{conversationMake(color: $0)}, encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: str_quoteName.map{enableView(cover: $0)}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(String(str_iconToName) + str_viewValue.replacingOccurrences(of: "color", with: "am"))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    kLet_dismissData.set(nickname, forKey: kLet_informationName)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = kLet_dismissData.string(forKey: kLet_informationName)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(String(str_iconToName) + str_viewValue.replacingOccurrences(of: "color", with: "am"))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: FrameSendable) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (String(str_pointName)))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (str_actualValue.replacingOccurrences(of: "from", with: "用") + String(str_matchName)))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: (str_timeValue.replacingOccurrences(of: "input", with: "请求")))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (str_yearText + str_labelByTitle.replacingOccurrences(of: "to", with: "无效")))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (String(str_colorName) + str_cellTimeValue.replacingOccurrences(of: "layer", with: "处")))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension ButtonLoginManager: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return IconThen.getWindow()
        return IconThen.getBind()
    }
}
