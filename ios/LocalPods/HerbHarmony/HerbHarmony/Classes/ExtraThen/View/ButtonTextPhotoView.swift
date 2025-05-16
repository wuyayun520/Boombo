
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_modelText:[UInt8] = [0x7c,0x81,0x7c,0x87,0x3b,0x76,0x82,0x77,0x78,0x85,0x4d,0x3c,0x33,0x7b,0x74,0x86,0x33,0x81,0x82,0x87,0x33,0x75,0x78,0x78,0x81,0x33,0x7c,0x80,0x83,0x7f,0x78,0x80,0x78,0x81,0x87,0x78,0x77]

fileprivate func numericalMagnitude(attention num: UInt8) -> UInt8 {
    let value = Int(num) + 237
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photopose" :*/
fileprivate let str_builderName:String = "img_case icon self user item"
fileprivate let str_presentationData:String = "verifile"
fileprivate let str_cornerText:String = "ion_status view fill"
fileprivate let str_postTitle:String = "opoto"

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let str_managerName:[UInt8] = [0x3a,0x64,0x6c,0x75,0x6f,0x68,0x73,0x20,0x75,0x6f,0x79,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x73,0x73,0x61,0x70,0x20,0x6f,0x54]

/*: "· show your face clearly;" :*/
fileprivate let str_memoryName:[Character] = ["·"," "]
fileprivate let str_modelName:String = "show ylab view self"
fileprivate let str_sizeName:String = "ce cdate custom top color as"

/*: "· pose exactly like the posing guide." :*/
fileprivate let str_maxTitle:[UInt8] = [0xe5,0x90,0x7,0x57,0x48,0x54,0x42,0x7,0x42,0x5f,0x46,0x44,0x53,0x4b,0x5e,0x7,0x4b,0x4e,0x4c,0x42,0x7,0x53,0x4f,0x42,0x7,0x57,0x48,0x54,0x4e,0x49,0x40,0x7,0x40,0x52,0x4e,0x43,0x42,0x9]

private func signalUser(begin num: UInt8) -> UInt8 {
    return num ^ 39
}

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let str_keyData:[UInt8] = [0x66,0x50,0x4a,0x4d,0x1f,0x4f,0x57,0x50,0x4b,0x50,0x1f,0x48,0x56,0x53,0x53,0x1f,0x51,0x5a,0x49,0x5a,0x4d,0x1f,0x5d,0x5a,0x1f,0x4a,0x4f,0x53,0x50,0x5e,0x5b,0x5a,0x5b,0x1f,0x4b,0x50,0x1f,0x46,0x50,0x4a,0x4d,0x1f,0x4f,0x4d,0x50,0x59,0x56,0x53,0x5a,0x1f,0x50,0x4d,0x1f,0x4c,0x57,0x50,0x48,0x51,0x1f,0x4b,0x50,0x1f,0x5e,0x51,0x49,0x50,0x51,0x5a,0x1f,0x5a,0x53,0x4c,0x5a,0x11]

private func publicTransport(destination num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "Submit Photo" :*/
fileprivate let str_shareName:String = "read in self style typeSubmi"
fileprivate let str_scaleName:String = "t Photoremove float data"

/*: "btn_me_back_continue" :*/
fileprivate let str_nameData:String = "btn_if progress else m color"
fileprivate let str_sizeData:String = "cell var title managerk_co"
fileprivate let str_locationTitle:[Character] = ["u","e"]

/*: "Retake Photo" :*/
fileprivate let str_roomTitle:String = "let session count gesture imageRetake P"
fileprivate let str_cornerName:String = "HOTO"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonTextPhotoView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class ButtonTextPhotoView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        makeWithTo()
        //: layoutSubViewsConstraints()
        location()
        //: bindInteraction()
        equalOffPop()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_modelText.map{numericalMagnitude(attention: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "img_faceverification_photopose")
        imgView.image = UIImage.nearCounterval(name: (String(str_builderName.prefix(4)) + "face" + str_presentationData.replacingOccurrences(of: "file", with: "f") + "icat" + String(str_cornerText.prefix(4)) + "phot" + str_postTitle.replacingOccurrences(of: "to", with: "se")))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.colorPush()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: str_managerName.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 18)
        lb.font = .liveAttention(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(str_memoryName) + String(str_modelName.prefix(6)) + "our fa" + String(str_sizeName.prefix(4)) + "learly;").localized
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 16)
        lb.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: str_maxTitle.map{signalUser(begin: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 16)
        lb.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: str_keyData.map{publicTransport(destination: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .inexpensiveness()
        lb.textColor = .inexpensiveness()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 15)
        lb.font = .liveAttention(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(str_shareName.suffix(5)) + String(str_scaleName.prefix(7))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_nameData.prefix(4)) + "me_bac" + String(str_sizeData.suffix(4)) + "ntin" + String(str_locationTitle))), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(str_roomTitle.suffix(8)) + str_cornerName.lowercased()).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.colorPush(), for: .normal)
        //: btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension ButtonTextPhotoView {
    //: @objc func registerSubmitAction() {
    @objc func list() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func mentalRepresentationBlock() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func equalOffPop() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.list()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.mentalRepresentationBlock()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension ButtonTextPhotoView {
    //: func createSubViews() {
    func makeWithTo() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func location() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (kLet_senseContent - actualWidth(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(actualHeight(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kLet_appMarginText)
            make.bottom.equalTo(-24 - kLet_appMarginText)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(actualWidth(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(actualWidth(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(actualHeight(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
