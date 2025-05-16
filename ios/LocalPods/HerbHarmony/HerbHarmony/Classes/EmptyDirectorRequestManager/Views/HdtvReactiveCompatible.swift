
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_ofTitle:[UInt8] = [0xad,0xaa,0xad,0xb0,0xec,0xa7,0xab,0xa0,0xa1,0xb6,0xfe,0xed,0xe4,0xac,0xa5,0xb7,0xe4,0xaa,0xab,0xb0,0xe4,0xa6,0xa1,0xa1,0xaa,0xe4,0xad,0xa9,0xb4,0xa8,0xa1,0xa9,0xa1,0xaa,0xb0,0xa1,0xa0]

private func allBottom(path num: UInt8) -> UInt8 {
    return num ^ 196
}

/*: "bg_tx" :*/
fileprivate let str_valueName:String = "model text model task stopbg_tx"

/*: "bg_tx_lb" :*/
fileprivate let str_modelValue:String = "bg_tx_lbmodel please center"

/*: "Edit Title" :*/
fileprivate let str_statusName:[Character] = ["E","d","i","t"," ","T","i","t","l","e"]

/*: "GO Now" :*/
fileprivate let str_userContent:[Character] = ["G","O"," ","N","o","w"]

/*: "Maybe next time" :*/
fileprivate let str_labText:[Character] = ["M","a","y","b","e"," "]
fileprivate let str_colorColonInName:String = "next var lock guard"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HdtvReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: class TalkingVideoCoverPopUpView: UIView {
class HdtvReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.windowList()
        //: self.setupSubViewsConstraint()
        self.sectionPlaceConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_ofTitle.map{allBottom(path: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIImageView = {
    lazy var contentView: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "bg_tx")
        iamg.image = UIImage.nearCounterval(name: (String(str_valueName.suffix(5))))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "bg_tx_lb")
        iamg.image = UIImage.nearCounterval(name: (String(str_modelValue.prefix(8))))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Edit Title".localized
        lab.text = (String(str_statusName)).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.text = WithAdministratorAppManager.share.appUserConfigMode.videoCover
        textView.text = WithAdministratorAppManager.share.appUserConfigMode.videoCover
        //: textView.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        textView.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.occurrence()
        textView.textColor = UIColor.occurrence()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: return textView
        return textView
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("GO Now".localized, for: .normal)
        btn.setTitle((String(str_userContent)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addToClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Maybe next time".localized, for: .normal)
        btn.setTitle((String(str_labText) + String(str_colorColonInName.prefix(5)) + "time").localized, for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.colorPush(), for: .normal)
        //: btn.titleLabel?.font = UIFont.unprecedented(fontSize: 13)
        btn.titleLabel?.font = UIFont.unprecedented(fontSize: 13)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(moreMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoCoverPopUpView {
extension HdtvReactiveCompatible {
    //: @objc func finishBtnClick() {
    @objc func addToClick() {
        //: dismiss()
        currentWith()
        //: guard TalkingSocketManager.shared.isCalling == false else {
        guard DataSocketDelegate.shared.isCalling == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.atShow(showMsg: kLet_keyTitle)
            //: return
            return
        }
        //: let editvc = TalkingEditProfilesVC()
        let editvc = MyEditProfilesVC()
        //: currentViewController()?.navigationController?.pushViewController(editvc, animated: true)
        actionController()?.navigationController?.pushViewController(editvc, animated: true)
    }

    //: @objc func closeBtnClick() {
    @objc func moreMove() {
        //: dismiss()
        currentWith()
    }

    //: func show() {
    func stopShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func currentWith() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingVideoCoverPopUpView {
extension HdtvReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func windowList() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sectionPlaceConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 320)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 320)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-78)
            make.top.equalTo(-78)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 133), height: actualWidth(w: 131)))
            make.size.equalTo(CGSize(width: actualWidth(w: 133), height: actualWidth(w: 131)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(5)
            make.top.equalTo(topIcon.snp.bottom).offset(5)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-20)
            make.bottom.equalTo(finishBtn.snp.top).offset(-20)
        }
    }
}
