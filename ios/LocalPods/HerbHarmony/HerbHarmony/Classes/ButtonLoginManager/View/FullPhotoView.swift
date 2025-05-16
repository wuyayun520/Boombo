
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_sizeData:[UInt8] = [0x25,0x2a,0x25,0x30,0xe4,0x1f,0x2b,0x20,0x21,0x2e,0xf6,0xe5,0xdc,0x24,0x1d,0x2f,0xdc,0x2a,0x2b,0x30,0xdc,0x1e,0x21,0x21,0x2a,0xdc,0x25,0x29,0x2c,0x28,0x21,0x29,0x21,0x2a,0x30,0x21,0x20]

fileprivate func succeedLayer(top num: UInt8) -> UInt8 {
    let value = Int(num) + 68
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "More attractive photo more calls" :*/
fileprivate let str_ofTitle:[UInt8] = [0xaa,0xcc,0xcf,0xc2,0x7d,0xbe,0xd1,0xd1,0xcf,0xbe,0xc0,0xd1,0xc6,0xd3,0xc2,0x7d,0xcd,0xc5,0xcc,0xd1,0xcc,0x7d,0xca,0xcc,0xcf,0xc2,0x7d,0xc0,0xbe,0xc9,0xc9,0xd0]

fileprivate func listingParty(tag num: UInt8) -> UInt8 {
    let value = Int(num) + 163
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Upload any photo you like" :*/
fileprivate let str_customData:String = "Uploadself true false"
fileprivate let str_headData:[Character] = ["p","h","o","t","o"," ","y","o","u"," ","l","i","k","e"]

/*: "F4F4F4" :*/
fileprivate let str_viewData:String = "collectioncollectionF"
fileprivate let str_renderText:String = "with"

/*: "btn_add_head_cover_nor" :*/
fileprivate let str_labName:String = "label returnbtn_"
fileprivate let str_centerName:[Character] = ["a","d","_","c","o","v","e","r","_","n","o","r"]

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let str_iconText:[UInt8] = [0x66,0x6c,0x65,0x73,0x72,0x75,0x6f,0x79,0x20,0x66,0x6f,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x6c,0x75,0x66,0x69,0x74,0x75,0x61,0x65,0x62,0x20,0x64,0x6e,0x61,0x20,0x72,0x61,0x65,0x6c,0x63,0x20,0x61,0x20,0x64,0x61,0x6f,0x6c,0x70,0x75,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let str_kindData:[UInt8] = [0xa6,0x87,0xc8,0x9e,0x81,0x87,0x84,0x8d,0x86,0x8b,0x8d,0xc4,0xc8,0x98,0x87,0x9a,0x86,0x87,0x8f,0x9a,0x89,0x98,0x80,0x91,0xc4,0xc8,0x87,0x9a,0xc8,0x98,0x87,0x84,0x81,0x9c,0x81,0x8b,0x9b,0xc8,0x89,0x84,0x84,0x87,0x9f,0x8d,0x8c]

/*: "Next" :*/
fileprivate let str_collectionText:[Character] = ["N","e","x","t"]

/*: "edit_head_Image_male_ :*/
fileprivate let str_toValue:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a"]
fileprivate let str_keyValue:[Character] = ["g"]
fileprivate let str_callViewData:[Character] = ["e","_","m","a","l","e","_"]

/*: "edit_head_Image_ :*/
fileprivate let str_toName:String = "lab appedit_h"
fileprivate let str_makeFeedValue:String = "view model fatal cloud usermage_"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FullPhotoView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class FullPhotoView: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: OnInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.localHead()
        //: self.setupSubViewsConstraint()
        self.smart()
        //: self.bindInteraction()
        self.untilDetail()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_sizeData.map{succeedLayer(top: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Semibold, fontSize: 17)
        label.font = .liveAttention(type: .Semibold, fontSize: 17)
        //: label.textColor = .occurrence()
        label.textColor = .occurrence()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: str_ofTitle.map{listingParty(tag: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(str_customData.prefix(6)) + " any " + String(str_headData)).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (str_viewData.replacingOccurrences(of: "collection", with: "F4") + str_renderText.replacingOccurrences(of: "with", with: "4")))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = WithAdministratorAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = WithAdministratorAppManager.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.nearCounterval(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.nearCounterval(name: (String(str_labName.suffix(4)) + "add_he" + String(str_centerName))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 15)
        label.font = .liveAttention(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .colorPush()
        //: if WithAdministratorAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if WithAdministratorAppManager.share.userFillInfoMode.sex == MiniSubqueryConvertible.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: str_iconText.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: str_kindData.map{$0^232}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(str_collectionText)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: ScreenWidth - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension FullPhotoView {
    // 添加视图
    //: private func setupSubviews() {
    private func localHead() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func smart() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
            if WithAdministratorAppManager.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.nearCounterval(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.nearCounterval(name: (String(str_toValue) + String(str_keyValue) + String(str_callViewData)) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.nearCounterval(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.nearCounterval(name: (String(str_toName.suffix(6)) + "ead_I" + String(str_makeFeedValue.suffix(5))) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func untilDetail() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
