
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_userName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "nav_back_black_nor" :*/
fileprivate let str_rawData:String = "nav_bview to white"
fileprivate let str_modelText:[Character] = ["l","a","c","k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class WithRecognizerDelegate: NameViewController {
    //: var toastStr: String = ""
    var toastStr: String = ""

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_userName.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.commentIndex()
        //: self.createUIConstraint()
        self.resume()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            StandardProgressHUD.slot(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: BindHandleReactiveCompatible = {
        //: let view = TalkingFaceVerificationView()
        let view = BindHandleReactiveCompatible()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_rawData.prefix(5)) + "ack_b" + String(str_modelText))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension WithRecognizerDelegate {
    //: @objc func backBtnClicked() {
    @objc func overMessage() {
        //: self.naviPopback()
        self.frontPopback()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension WithRecognizerDelegate {
    //: func createUI() {
    func commentIndex() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(overMessage), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = IconViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func resume() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + kLet_messageContent)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
