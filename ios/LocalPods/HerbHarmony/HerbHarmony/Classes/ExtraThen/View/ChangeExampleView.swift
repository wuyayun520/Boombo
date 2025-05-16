
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_byData:[UInt8] = [0xc9,0xce,0xc9,0xd4,0x88,0xc3,0xcf,0xc4,0xc5,0xd2,0x9a,0x89,0x80,0xc8,0xc1,0xd3,0x80,0xce,0xcf,0xd4,0x80,0xc2,0xc5,0xc5,0xce,0x80,0xc9,0xcd,0xd0,0xcc,0xc5,0xcd,0xc5,0xce,0xd4,0xc5,0xc4]

fileprivate func labelTitle(make num: UInt8) -> UInt8 {
    let value = Int(num) - 96
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_pose" :*/
fileprivate let str_kindName:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i"]
fileprivate let str_modelText:[Character] = ["f"]
fileprivate let str_photoData:String = "iccall"
fileprivate let str_colorData:String = "pframese"

/*: "Strike this pose and take a photo" :*/
fileprivate let str_halfData:[UInt8] = [0xe6,0xc1,0xc7,0xdc,0xde,0xd0,0x95,0xc1,0xdd,0xdc,0xc6,0x95,0xc5,0xda,0xc6,0xd0,0x95,0xd4,0xdb,0xd1,0x95,0xc1,0xd4,0xde,0xd0,0x95,0xd4,0x95,0xc5,0xdd,0xda,0xc1,0xda]

private func selfView(color num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let str_numberChangeData:[UInt8] = [0x4,0x32,0x28,0x2f,0x7d,0x2d,0x35,0x32,0x29,0x32,0x7d,0x2a,0x34,0x31,0x31,0x7d,0x33,0x38,0x2b,0x38,0x2f,0x7d,0x3f,0x38,0x7d,0x28,0x2d,0x31,0x32,0x3c,0x39,0x38,0x39,0x7d,0x29,0x32,0x7d,0x24,0x32,0x28,0x2f,0x7d,0x2d,0x2f,0x32,0x3b,0x34,0x31,0x38,0x7d,0x32,0x2f,0x7d,0x2e,0x35,0x32,0x2a,0x33,0x7d,0x29,0x32,0x7d,0x3c,0x33,0x24,0x32,0x33,0x38,0x7d,0x38,0x31,0x2e,0x38,0x73]

private func renderGift(frame num: UInt8) -> UInt8 {
    return num ^ 93
}

/*: "Camera" :*/
fileprivate let str_modelName:String = "action"
fileprivate let str_yaValue:String = "AMERA"

/*: "btn_me_back_continue" :*/
fileprivate let str_sharedValue:String = "btn_memodel lab photo"
fileprivate let str_fatalEffectValue:String = "contcolornue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeExampleView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class ChangeExampleView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        cellViews()
        //: layoutSubViewsConstraints()
        responseConstraints()
        //: bindInteraction()
        colorBy()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_byData.map{labelTitle(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "img_faceverification_pose")
        imgView.image = UIImage.nearCounterval(name: (String(str_kindName) + String(str_modelText) + str_photoData.replacingOccurrences(of: "call", with: "at") + "ion_" + str_colorData.replacingOccurrences(of: "frame", with: "o")))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: str_halfData.map{selfView(color: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = .liveAttention(type: .Medium, fontSize: 22)
        lb.font = .liveAttention(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: str_numberChangeData.map{renderGift(frame: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .colorPush()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 16)
        lb.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((str_modelName.replacingOccurrences(of: "action", with: "C") + str_yaValue.lowercased()).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_sharedValue.prefix(6)) + "_back_" + str_fatalEffectValue.replacingOccurrences(of: "color", with: "i"))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension ChangeExampleView {
    //: @objc func registerBtnAction() {
    @objc func imageBy() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func colorBy() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.imageBy()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension ChangeExampleView {
    //: func createSubViews() {
    func cellViews() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func responseConstraints() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (kLet_senseContent - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(kLet_senseContent - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kLet_appMarginText)
            make.bottom.equalTo(-actualHeight(h: 34) - kLet_appMarginText)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
