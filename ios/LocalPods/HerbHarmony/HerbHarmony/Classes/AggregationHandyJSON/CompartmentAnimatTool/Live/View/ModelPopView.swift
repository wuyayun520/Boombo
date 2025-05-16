
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_exitValue:[UInt8] = [0xf1,0xf6,0xf1,0xfc,0xb0,0xeb,0xf7,0xec,0xed,0xfa,0xc2,0xb1,0xa8,0xf0,0xe9,0xfb,0xa8,0xf6,0xf7,0xfc,0xa8,0xea,0xed,0xed,0xf6,0xa8,0xf1,0xf5,0xf8,0xf4,0xed,0xf5,0xed,0xf6,0xfc,0xed,0xec]

fileprivate func colorLab(fail num: UInt8) -> UInt8 {
    let value = Int(num) + 120
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let str_poolData:String = "icon_male list"
fileprivate let str_toData:String = "make model confirm type normal_vip"
fileprivate let str_normalData:String = "ribrequest"
fileprivate let str_sessionData:[Character] = ["_","b","a","c","k"]

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let str_formContent:[Character] = ["i","c","o","n","_","l","i","v","e","_","v","i","p","s","u"]
fileprivate let str_nextData:String = "bscrcontentb"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let str_vidName:[UInt8] = [0x72,0x93,0x88,0x91,0x43,0x79,0x6c,0x73,0x2d,0x97,0x92,0x43,0x8a,0x8c,0x99,0x88,0x43,0x68,0x9b,0x86,0x8f,0x98,0x96,0x8c,0x99,0x88,0x43,0x8a,0x8c,0x89,0x97,0x96]

fileprivate func additionalEnable(name num: UInt8) -> UInt8 {
    let value = Int(num) - 35
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let str_timeValue:[UInt8] = [0x57,0x79,0x86,0x79,0x7e,0x77,0x30,0x71,0x7e,0x30,0x55,0x88,0x73,0x7c,0x85,0x83,0x79,0x86,0x75,0x30,0x77,0x79,0x76,0x84,0x30,0x87,0x79,0x7c,0x7c,0x30,0x71,0x80,0x80,0x75,0x71,0x7c,0x30,0x84,0x7f,0x30,0x78,0x75,0x82]

fileprivate func requestShoot(at num: UInt8) -> UInt8 {
    let value = Int(num) + 240
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Subscribe" :*/
fileprivate let str_gestureValue:String = "back view a collection viewSu"
fileprivate let str_onVideoName:[Character] = ["b","s","c","r","i","b","e"]

/*: "Cancel" :*/
fileprivate let str_statusValue:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelPopView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class ModelPopView: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.clickShowSubviews()
        //: self.setupSubViewsConstraint()
        self.viewsPage()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_exitValue.map{colorLab(fail: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.nearCounterval(name: (String(str_poolData.prefix(5)) + "live" + String(str_toData.suffix(4)) + "subsc" + str_normalData.replacingOccurrences(of: "request", with: "e") + String(str_sessionData)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.nearCounterval(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.nearCounterval(name: (String(str_formContent) + str_nextData.replacingOccurrences(of: "content", with: "i") + "e_topback"))
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
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: str_vidName.map{additionalEnable(name: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: str_timeValue.map{requestShoot(at: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(str_gestureValue.suffix(2)) + String(str_onVideoName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(protrude), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_statusValue)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.inexpensiveness(), for: .normal)
        btn.setTitleColor(.inexpensiveness(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.inexpensiveness().cgColor
        btn.layer.borderColor = UIColor.inexpensiveness().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(rootClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension ModelPopView {
    //: @objc func finishBtnClick() {
    @objc func protrude() {
        //: dismiss()
        numericalTotal()
        //: LeadingEqualReactiveCompatible.share.func__pushToSubscribePageWebVC()
        LeadingEqualReactiveCompatible.share.numberimateVc()
    }

    //: @objc func closeBtnClick() {
    @objc func rootClick() {
        //: dismiss()
        numericalTotal()
    }

    //: func show() {
    func createShow() {
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
    @objc func numericalTotal() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension ModelPopView {
    // 添加视图
    //: private func setupSubviews() {
    private func clickShowSubviews() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsPage() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
