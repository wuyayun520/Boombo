
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_pushName:[UInt8] = [0x9c,0x9b,0x9c,0x81,0xdd,0x96,0x9a,0x91,0x90,0x87,0xcf,0xdc,0xd5,0x9d,0x94,0x86,0xd5,0x9b,0x9a,0x81,0xd5,0x97,0x90,0x90,0x9b,0xd5,0x9c,0x98,0x85,0x99,0x90,0x98,0x90,0x9b,0x81,0x90,0x91]

/*: "img_faceverification_photo" :*/
fileprivate let str_responseValue:String = "social group var borderimg_"
fileprivate let str_centerValue:String = "rviewfview"
fileprivate let str_succeedData:String = "record equal self_phot"
fileprivate let str_whiteData:[Character] = ["o"]

/*: "Face verification" :*/
fileprivate let str_userName:String = "index value yourFace "
fileprivate let str_modelTitle:[Character] = ["v","e","r","i","f","i","c","a","t","i","o","n"]

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let str_minValue:[UInt8] = [0x47,0x26,0x78,0x6b,0x67,0x72,0x33,0x76,0x6b,0x78,0x79,0x75,0x74,0x26,0x7c,0x6b,0x78,0x6f,0x6c,0x6f,0x69,0x67,0x7a,0x6f,0x75,0x74,0x26,0x75,0x6c,0x26,0x7f,0x75,0x7b,0x78,0x26,0x76,0x78,0x75,0x6c,0x6f,0x72,0x6b,0x26,0x7d,0x6f,0x72,0x72,0x26,0x6d,0x6b,0x7a,0x26,0x7f,0x75,0x7b,0x26,0x73,0x75,0x78,0x6b,0x26,0x67,0x74,0x6a,0x26,0x68,0x6b,0x7a,0x7a,0x6b,0x78,0x26,0x73,0x67,0x7a,0x69,0x6e,0x6b,0x79,0x34]

fileprivate func withSpace(content num: UInt8) -> UInt8 {
    let value = Int(num) + 250
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let str_pathText:[UInt8] = [0x8e,0x83,0xec,0x20,0x2d,0x37,0x31,0xec,0x40,0x34,0x31,0xec,0x3c,0x34,0x3b,0x40,0x3b,0xec,0x2e,0x45,0xec,0x32,0x3b,0x38,0x38,0x3b,0x43,0x35,0x3a,0x33,0xec,0x40,0x34,0x31,0xec,0x3c,0x3b,0x3f,0x35,0x3a,0x33,0xec,0x33,0x41,0x35,0x30,0x31,0xfa]

fileprivate func paneMessage(gift num: UInt8) -> UInt8 {
    let value = Int(num) - 204
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let str_colorValue:[UInt8] = [0x2e,0x72,0x65,0x6e,0x77,0x6f,0x20,0x74,0x6e,0x75,0x6f,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x65,0x62,0x20,0x74,0x73,0x75,0x6d,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x6e,0x6f,0x73,0x72,0x65,0x70,0x20,0x65,0x68,0x54,0x20,0xb7,0xc2]

/*: "Continue" :*/
fileprivate let str_imageTitle:String = "if right self let heightContinue"

/*: "btn_me_back_continue" :*/
fileprivate let str_byName:String = "to"
fileprivate let str_iconData:[Character] = ["n","_","m","e","_","b","a","c","k","_","c","o","n","t","i","n","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BindHandleReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class BindHandleReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        priceEqual()
        //: layoutSubViewsConstraints()
        heel()
        //: bindInteraction()
        send()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_pushName.map{$0^245}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "img_faceverification_photo")
        imgView.image = UIImage.nearCounterval(name: (String(str_responseValue.suffix(4)) + "faceve" + str_centerValue.replacingOccurrences(of: "view", with: "i") + "cation" + String(str_succeedData.suffix(5)) + String(str_whiteData)))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(str_userName.suffix(5)) + String(str_modelTitle)).localized
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
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: str_minValue.map{withSpace(content: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.font = .liveAttention(type: .Medium, fontSize: 18)
        lb.font = .liveAttention(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: str_pathText.map{paneMessage(gift: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 16)
        lb.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: str_colorValue.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
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
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(str_imageTitle.suffix(8))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (str_byName.replacingOccurrences(of: "to", with: "bt") + String(str_iconData))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension BindHandleReactiveCompatible {
    //: @objc func registerBtnAction() {
    @objc func freeWrite() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func send() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.freeWrite()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension BindHandleReactiveCompatible {
    //: func createSubViews() {
    func priceEqual() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func heel() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * kLet_senseContent / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + kLet_messageContent)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
