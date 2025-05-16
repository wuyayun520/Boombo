
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let str_toContent:String = "nav_bview view input player view"
fileprivate let str_estimatedTitle:String = "lab return self zone sourceack_nor"

/*: "live_explain" :*/
fileprivate let str_makeData:[Character] = ["l","i","v","e","_","e","x","p","l","a","i","n"]

/*: "Live" :*/
fileprivate let str_userTitle:String = "Livemodel room empty title"

/*: "#FAF6FF" :*/
fileprivate let str_priceArrayTitle:String = "path tip#FAF6FF"

/*: "icon_live_certification" :*/
fileprivate let str_textValue:[Character] = ["i","c","o","n","_","l","i","v"]
fileprivate let str_modelValue:[Character] = ["e","_","c","e","r","t","i","f","i","c","a","t","i","o","n"]

/*: "Turn on live certification" :*/
fileprivate let str_actualName:[Character] = ["T","u","r","n"," ","o","n"]
fileprivate let str_kitName:[Character] = [" ","l","i","v","e"," ","c","e","r","t","i","f","i","c","a","t","i","o","n"]

/*: "will increase the chances of receiving calls to earn more points." :*/
fileprivate let str_mainName:[UInt8] = [0x17,0x9,0xc,0xc,0x40,0x9,0xe,0x3,0x12,0x5,0x1,0x13,0x5,0x40,0x14,0x8,0x5,0x40,0x3,0x8,0x1,0xe,0x3,0x5,0x13,0x40,0xf,0x6,0x40,0x12,0x5,0x3,0x5,0x9,0x16,0x9,0xe,0x7,0x40,0x3,0x1,0xc,0xc,0x13,0x40,0x14,0xf,0x40,0x5,0x1,0x12,0xe,0x40,0xd,0xf,0x12,0x5,0x40,0x10,0xf,0x9,0xe,0x14,0x13,0x4e]

private func promptLabView(value num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "icon_live_publicly" :*/
fileprivate let str_colorData:[Character] = ["i","c","o","n","_","l","i","v","e","_","p","u","b","l","i","c","l","y"]

/*: "Your live will be publicly displayed to others" :*/
fileprivate let str_demonstrateTitle:[UInt8] = [0xca,0xfc,0xe6,0xe1,0xb3,0xff,0xfa,0xe5,0xf6,0xb3,0xe4,0xfa,0xff,0xff,0xb3,0xf1,0xf6,0xb3,0xe3,0xe6,0xf1,0xff,0xfa,0xf0,0xff,0xea,0xb3,0xf7,0xfa,0xe0,0xe3,0xff,0xf2,0xea,0xf6,0xf7,0xb3,0xe7,0xfc,0xb3,0xfc,0xe7,0xfb,0xf6,0xe1,0xe0]

/*: "its content must comply with current laws and regulations and platform requirements." :*/
fileprivate let str_betweenAddName:[UInt8] = [0x4d,0x50,0x57,0x4,0x47,0x4b,0x4a,0x50,0x41,0x4a,0x50,0x4,0x49,0x51,0x57,0x50,0x4,0x47,0x4b,0x49,0x54,0x48,0x5d,0x4,0x53,0x4d,0x50,0x4c,0x4,0x47,0x51,0x56,0x56,0x41,0x4a,0x50,0x4,0x48,0x45,0x53,0x57,0x4,0x45,0x4a,0x40,0x4,0x56,0x41,0x43,0x51,0x48,0x45,0x50,0x4d,0x4b,0x4a,0x57,0x4,0x45,0x4a,0x40,0x4,0x54,0x48,0x45,0x50,0x42,0x4b,0x56,0x49,0x4,0x56,0x41,0x55,0x51,0x4d,0x56,0x41,0x49,0x41,0x4a,0x50,0x57,0xa]

/*: "icon_live_face" :*/
fileprivate let str_modelTitle:[Character] = ["i","c","o","n","_"]
fileprivate let str_photoImageDataName:String = "slide"
fileprivate let str_appShareContent:String = "model extra social elseive_face"

/*: "Please make sure" :*/
fileprivate let str_indexEqualData:[Character] = ["P","l","e","a","s","e"," ","m","a","k","e"," "]
fileprivate let str_priceNearValue:String = "sucrope"

/*: "your face is always in the video frame." :*/
fileprivate let str_modelName:[UInt8] = [0x9a,0x90,0x96,0x93,0x41,0x87,0x82,0x84,0x86,0x41,0x8a,0x94,0x41,0x82,0x8d,0x98,0x82,0x9a,0x94,0x41,0x8a,0x8f,0x41,0x95,0x89,0x86,0x41,0x97,0x8a,0x85,0x86,0x90,0x41,0x87,0x93,0x82,0x8e,0x86,0x4f]

fileprivate func heightAspect(view num: UInt8) -> UInt8 {
    let value = Int(num) - 33
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Turn on" :*/
fileprivate let str_dataValue:String = "Turn onborder target target"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SafetyMarginViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingLiveExplainViewController: TalkingBaseViewController {
class SafetyMarginViewController: NameViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true

        //: setupSubviews()
        callRow()
        //: setupSubViewsConstraint()
        solution()
    }

    // MARK: - Lazy Load

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.nearCounterval(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.nearCounterval(name: (String(str_toContent.prefix(5)) + "ack_bl" + String(str_estimatedTitle.suffix(7)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveImgView: UIImageView = {
    private lazy var liveImgView: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearCounterval(name: "live_explain"))
        let v = UIImageView(image: UIImage.nearCounterval(name: (String(str_makeData))))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Live".localized
        lab.text = (String(str_userTitle.prefix(4))).localized
        //: lab.textColor = .alright()
        lab.textColor = .alright()
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 18)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 18)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#FAF6FF")
        v.backgroundColor = UIColor(hex: (String(str_priceArrayTitle.suffix(7))))
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var imgView1: UIImageView = {
    private lazy var imgView1: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "icon_live_certification")
        v.image = UIImage.nearCounterval(name: (String(str_textValue) + String(str_modelValue)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab1: UILabel = {
    private lazy var titleLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Turn on live certification".localized
        lab.text = (String(str_actualName) + String(str_kitName)).localized
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 16)
        lab.font = UIFont.behindUpRoom(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab1: UILabel = {
    private lazy var desLab1: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "will increase the chances of receiving calls to earn more points.".localized
        lab.text = String(bytes: str_mainName.map{promptLabView(value: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .colorPush()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView2: UIImageView = {
    private lazy var imgView2: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "icon_live_publicly")
        v.image = UIImage.nearCounterval(name: (String(str_colorData)))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab2: UILabel = {
    private lazy var titleLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Your live will be publicly displayed to others".localized
        lab.text = String(bytes: str_demonstrateTitle.map{$0^147}, encoding: .utf8)!.localized
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 16)
        lab.font = UIFont.behindUpRoom(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab2: UILabel = {
    private lazy var desLab2: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "its content must comply with current laws and regulations and platform requirements.".localized
        lab.text = String(bytes: str_betweenAddName.map{$0^36}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .colorPush()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgView3: UIImageView = {
    private lazy var imgView3: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "icon_live_face")
        v.image = UIImage.nearCounterval(name: (String(str_modelTitle) + str_photoImageDataName.replacingOccurrences(of: "slide", with: "l") + String(str_appShareContent.suffix(8))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab3: UILabel = {
    private lazy var titleLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Please make sure".localized
        lab.text = (String(str_indexEqualData) + str_priceNearValue.replacingOccurrences(of: "crop", with: "r")).localized
        //: lab.textColor = .occurrence()
        lab.textColor = .occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 16)
        lab.font = UIFont.behindUpRoom(fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var desLab3: UILabel = {
    private lazy var desLab3: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "your face is always in the video frame.".localized
        lab.text = String(bytes: str_modelName.map{heightAspect(view: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .colorPush()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var turnOnBtn: UIButton = {
    private lazy var turnOnBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 17)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(str_dataValue.prefix(7))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 240, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(turnOnButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(groupShared), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveExplainViewController {
extension SafetyMarginViewController {
    /// 返回按钮点击事件
    //: @objc private func clickBackButtonAction() {
    @objc private func makeAction() {
        //: self.dismiss(animated: true)
        self.dismiss(animated: true)
    }

    /// turn on 按钮点击事件
    //: @objc private func turnOnButtonClick() {
    @objc private func groupShared() {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            SectionPushListener.cover().talkHandler()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveExplainViewController {
extension SafetyMarginViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func callRow() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: view.addSubview(liveImgView)
        view.addSubview(liveImgView)
        //: view.addSubview(liveLab)
        view.addSubview(liveLab)
        //: view.addSubview(contentView)
        view.addSubview(contentView)
        //: contentView.addSubview(imgView1)
        contentView.addSubview(imgView1)
        //: contentView.addSubview(titleLab1)
        contentView.addSubview(titleLab1)
        //: contentView.addSubview(desLab1)
        contentView.addSubview(desLab1)
        //: contentView.addSubview(imgView2)
        contentView.addSubview(imgView2)
        //: contentView.addSubview(titleLab2)
        contentView.addSubview(titleLab2)
        //: contentView.addSubview(desLab2)
        contentView.addSubview(desLab2)
        //: contentView.addSubview(imgView3)
        contentView.addSubview(imgView3)
        //: contentView.addSubview(titleLab3)
        contentView.addSubview(titleLab3)
        //: contentView.addSubview(desLab3)
        contentView.addSubview(desLab3)
        //: view.addSubview(turnOnBtn)
        view.addSubview(turnOnBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func solution() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(kLet_indexText)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(kLet_messageContent)
        }

        //: liveImgView.snp.makeConstraints { make in
        liveImgView.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+actualWidth(w: 80))
            make.top.equalTo(kLet_messageContent + actualWidth(w: 80))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(100)
            make.width.height.equalTo(100)
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveImgView.snp.bottom)
            make.top.equalTo(liveImgView.snp.bottom)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(liveLab.snp.bottom).offset(20)
            make.top.equalTo(liveLab.snp.bottom).offset(20)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: imgView1.snp.makeConstraints { make in
        imgView1.snp.makeConstraints { make in
            //: make.top.leading.equalTo(20)
            make.top.leading.equalTo(20)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab1.snp.makeConstraints { make in
        titleLab1.snp.makeConstraints { make in
            //: make.top.equalTo(imgView1).offset(3)
            make.top.equalTo(imgView1).offset(3)
            //: make.leading.equalTo(imgView1.snp.trailing).offset(10)
            make.leading.equalTo(imgView1.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab1.snp.makeConstraints { make in
        desLab1.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab1.snp.bottom).offset(4)
            make.top.equalTo(titleLab1.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab1)
            make.leading.trailing.equalTo(titleLab1)
        }
        //: imgView2.snp.makeConstraints { make in
        imgView2.snp.makeConstraints { make in
            //: make.top.equalTo(desLab1.snp.bottom).offset(24)
            make.top.equalTo(desLab1.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab2.snp.makeConstraints { make in
        titleLab2.snp.makeConstraints { make in
            //: make.top.equalTo(imgView2).offset(3)
            make.top.equalTo(imgView2).offset(3)
            //: make.leading.equalTo(imgView2.snp.trailing).offset(10)
            make.leading.equalTo(imgView2.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab2.snp.makeConstraints { make in
        desLab2.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab2.snp.bottom).offset(4)
            make.top.equalTo(titleLab2.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab2)
            make.leading.trailing.equalTo(titleLab2)
        }
        //: imgView3.snp.makeConstraints { make in
        imgView3.snp.makeConstraints { make in
            //: make.top.equalTo(desLab2.snp.bottom).offset(24)
            make.top.equalTo(desLab2.snp.bottom).offset(24)
            //: make.leading.equalTo(imgView1)
            make.leading.equalTo(imgView1)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
        //: titleLab3.snp.makeConstraints { make in
        titleLab3.snp.makeConstraints { make in
            //: make.top.equalTo(imgView3).offset(3)
            make.top.equalTo(imgView3).offset(3)
            //: make.leading.equalTo(imgView3.snp.trailing).offset(10)
            make.leading.equalTo(imgView3.snp.trailing).offset(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: desLab3.snp.makeConstraints { make in
        desLab3.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab3.snp.bottom).offset(4)
            make.top.equalTo(titleLab3.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab3)
            make.leading.trailing.equalTo(titleLab3)
            //: make.bottom.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-20)
        }

        //: turnOnBtn.snp.makeConstraints { make in
        turnOnBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(43)
            make.top.equalTo(contentView.snp.bottom).offset(43)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 240, height: 50))
            make.size.equalTo(CGSize(width: 240, height: 50))
            //: make.bottom.lessThanOrEqualTo(view).offset(0)
            make.bottom.lessThanOrEqualTo(view).offset(0)
        }
    }
}
