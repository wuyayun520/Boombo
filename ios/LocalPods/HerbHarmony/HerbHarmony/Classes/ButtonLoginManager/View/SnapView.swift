
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_objectValue:[UInt8] = [0xfb,0xfc,0xfb,0xe6,0xba,0xf1,0xfd,0xf6,0xf7,0xe0,0xa8,0xbb,0xb2,0xfa,0xf3,0xe1,0xb2,0xfc,0xfd,0xe6,0xb2,0xf0,0xf7,0xf7,0xfc,0xb2,0xfb,0xff,0xe2,0xfe,0xf7,0xff,0xf7,0xfc,0xe6,0xf7,0xf6]

/*: "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy." :*/
fileprivate let str_equalTitle:[UInt8] = [0xbd,0x86,0xdf,0x8b,0x9e,0x8f,0x8f,0x96,0x91,0x98,0xdf,0xbc,0x8d,0x9a,0x9e,0x8b,0x9a,0xdf,0xbe,0x9c,0x9c,0x90,0x8a,0x91,0x8b,0xdf,0x90,0x8d,0xdf,0x8c,0x96,0x98,0x91,0xdf,0x96,0x91,0xd3,0xdf,0x86,0x90,0x8a,0xdf,0x9e,0x98,0x8d,0x9a,0x9a,0xdf,0x8b,0x90,0xdf,0x90,0x8a,0x8d,0xdf,0x8b,0x9a,0x8d,0x92,0x8c,0xd1,0xdf,0xb3,0x9a,0x9e,0x8d,0x91,0xdf,0x97,0x90,0x88,0xdf,0x88,0x9a,0xdf,0x8f,0x8d,0x90,0x9c,0x9a,0x8c,0x8c,0xdf,0x86,0x90,0x8a,0x8d,0xdf,0x9b,0x9e,0x8b,0x9e,0xdf,0x96,0x91,0xdf,0x90,0x8a,0x8d,0xdf,0xaf,0x8d,0x96,0x89,0x9e,0x9c,0x86,0xdf,0xaf,0x90,0x93,0x96,0x9c,0x86,0xd1]

private func letSelf(view num: UInt8) -> UInt8 {
    return num ^ 255
}

/*: "Agree and Continue" :*/
fileprivate let str_cellTitle:String = "Agree hidden message self inside lab"
fileprivate let str_photoName:String = "ntincontent"
fileprivate let str_runText:[Character] = ["e"]

/*: "Disagree and Quit" :*/
fileprivate let str_hiddenValue:[Character] = ["D","i","s","a","g","r","e","e"]
fileprivate let str_modeName:[Character] = [" ","a","n"]
fileprivate let str_centerAngleData:[Character] = ["d"," ","Q","u","i","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapView.swift
//  AbroadTalking
//
//  Created by young on 2022/8/31.
//

//: import UIKit
import UIKit

//: class LoginPrivacyPolicyView: UIView {
class SnapView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_objectValue.map{$0^146}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        self.backgroundColor = UIColor.equalRgba(0, 0, 0, 0.6)
        //: self.alpha = 0
        self.alpha = 0
        //: self.setupSubviews()
        self.head()
        //: self.setupSubViewsConstraint()
        self.sumConstraint()
        //: self.bindInteraction()
        self.text()
    }

    // MARK: - Lazy load

    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lab.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy.".localized
        lab.text = String(bytes: str_equalTitle.map{letSelf(view: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var agreeBtn: UIButton = {
    private lazy var agreeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Agree and Continue".localized, for: .normal)
        btn.setTitle((String(str_cellTitle.prefix(6)) + "and Co" + str_photoName.replacingOccurrences(of: "content", with: "u") + String(str_runText)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 245, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 245, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Disagree and Quit".localized, for: .normal)
        btn.setTitle((String(str_hiddenValue) + String(str_modeName) + String(str_centerAngleData)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.alright(), for: .normal)
        btn.setTitleColor(UIColor.alright(), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.backgroundColor = UIColor.white
        btn.backgroundColor = UIColor.white
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.alright().cgColor
        btn.layer.borderColor = UIColor.alright().cgColor
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension LoginPrivacyPolicyView {
extension SnapView {
    // MARK: - Event

    //: func showView(okHandler: @escaping () -> Void) {
    func toHandler(okHandler: @escaping () -> Void) {
        //: show()
        wordsShow()

        // bind event
        //: agreeBtn.rx.controlEvent(.touchUpInside)
        agreeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.dismiss()
                self.path()
                //: okHandler()
                okHandler()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: quitBtn.rx.controlEvent(.touchUpInside)
        quitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: exit(0)
                exit(0)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: private func show() {
    private func wordsShow() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 1
            self.alpha = 1
            //: } completion: { finish in
        } completion: { _ in
            //: IconThen.getWindow().addSubview(self)
            IconThen.getBind().addSubview(self)
        }
    }

    //: private func dismiss() {
    private func path() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { finish in
        } completion: { _ in
            //: guard self.superview != nil else { return }
            guard self.superview != nil else { return }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

//: extension LoginPrivacyPolicyView {
extension SnapView {
    // 添加视图
    //: private func setupSubviews() {
    private func head() {
        //: self.addSubview(whiteBgV)
        self.addSubview(whiteBgV)
        //: whiteBgV.snp.makeConstraints { make in
        whiteBgV.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 295, height: 270))
            make.size.equalTo(CGSize(width: 295, height: 270))
        }
        //: whiteBgV.addSubview(textLab)
        whiteBgV.addSubview(textLab)
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: whiteBgV.addSubview(agreeBtn)
        whiteBgV.addSubview(agreeBtn)
        //: agreeBtn.snp.makeConstraints { make in
        agreeBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(140)
            make.top.equalToSuperview().offset(140)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: whiteBgV.addSubview(quitBtn)
        whiteBgV.addSubview(quitBtn)
        //: quitBtn.snp.makeConstraints { make in
        quitBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func sumConstraint() {}

    // 添加事件
    //: private func bindInteraction() {
    private func text() {}
}
