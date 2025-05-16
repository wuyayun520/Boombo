
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_keyVoiceValue:[UInt8] = [0x59,0x5e,0x59,0x44,0x18,0x53,0x5f,0x54,0x55,0x42,0xa,0x19,0x10,0x58,0x51,0x43,0x10,0x5e,0x5f,0x44,0x10,0x52,0x55,0x55,0x5e,0x10,0x59,0x5d,0x40,0x5c,0x55,0x5d,0x55,0x5e,0x44,0x55,0x54]

private func spaceHidden(text num: UInt8) -> UInt8 {
    return num ^ 48
}

/*: "Licensing" :*/
fileprivate let str_modelData:String = "Licennot let less"
fileprivate let str_instanceValue:String = "SING"

/*: "Granting licences to receive better video calls and earn more money" :*/
fileprivate let str_nameQuantityNearTitle:[UInt8] = [0x79,0x65,0x6e,0x6f,0x6d,0x20,0x65,0x72,0x6f,0x6d,0x20,0x6e,0x72,0x61,0x65,0x20,0x64,0x6e,0x61,0x20,0x73,0x6c,0x6c,0x61,0x63,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x72,0x65,0x74,0x74,0x65,0x62,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6f,0x74,0x20,0x73,0x65,0x63,0x6e,0x65,0x63,0x69,0x6c,0x20,0x67,0x6e,0x69,0x74,0x6e,0x61,0x72,0x47]

/*: "Turn on Camera and recording permissions in settings to use the feature properly" :*/
fileprivate let str_downData:[UInt8] = [0x68,0x89,0x86,0x82,0x34,0x83,0x82,0x34,0x57,0x75,0x81,0x79,0x86,0x75,0x34,0x75,0x82,0x78,0x34,0x86,0x79,0x77,0x83,0x86,0x78,0x7d,0x82,0x7b,0x34,0x84,0x79,0x86,0x81,0x7d,0x87,0x87,0x7d,0x83,0x82,0x87,0x34,0x7d,0x82,0x34,0x87,0x79,0x88,0x88,0x7d,0x82,0x7b,0x87,0x34,0x88,0x83,0x34,0x89,0x87,0x79,0x34,0x88,0x7c,0x79,0x34,0x7a,0x79,0x75,0x88,0x89,0x86,0x79,0x34,0x84,0x86,0x83,0x84,0x79,0x86,0x80,0x8d]

fileprivate func grammaticalGender(lab num: UInt8) -> UInt8 {
    let value = Int(num) - 20
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_userName:String = "user event to picCancel"

/*: "Open" :*/
fileprivate let str_tableName:String = "Openself user var data type"

/*: "icon_peimisionlic_camera" :*/
fileprivate let str_labelTitle:String = "icsource"
fileprivate let str_titleContent:[Character] = ["s","i","o","n","l","i","c","_","c","a","m","e","r","a"]

/*: "icon_peimissionlic_mic" :*/
fileprivate let str_normalTaskData:String = "icon_selected var lab"
fileprivate let str_playerName:String = "managerionl"
fileprivate let str_roomImageData:String = "play"
fileprivate let str_textTitle:String = "c_micself method gift index"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotaleractionView.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/3/22.
//

//: import UIKit
import UIKit

//: class TalkingPermissionView: UIView {
class TotaleractionView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.toSubviews()
        //: self.setupSubViewsConstraint()
        self.tunnel()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_keyVoiceValue.map{spaceHidden(text: $0)}, encoding: .utf8)!)
    }

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.font = UIFont.behindUpRoom(fontSize: 20)
        lb.font = UIFont.behindUpRoom(fontSize: 20)
        //: lb.text = "Licensing".localized
        lb.text = (String(str_modelData.prefix(5)) + str_instanceValue.lowercased()).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.font = UIFont.unprecedented(fontSize: 16)
        lb.font = UIFont.unprecedented(fontSize: 16)
        //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue && WithAdministratorAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue && WithAdministratorAppManager.share.appStatus != SectionFreckleTextConvertible.special.rawValue {
            //: lb.text = "Granting licences to receive better video calls and earn more money".localized
            lb.text = String(bytes: str_nameQuantityNearTitle.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: lb.text = "Turn on Camera and recording permissions in settings to use the feature properly".localized
            lb.text = String(bytes: str_downData.map{grammaticalGender(lab: $0)}, encoding: .utf8)!.localized
        }
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var cancleBtn: UIButton = {
    lazy var cancleBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_userName.suffix(6))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.inexpensiveness(), for: .normal)
        btn.setTitleColor(.inexpensiveness(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.alright().cgColor
        btn.layer.borderColor = UIColor.alright().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(cancleBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapMe), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(str_tableName.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(unboltRoomClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingPermissionView {
extension TotaleractionView {
    //: func show() {
    func reinstate() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func cancleBtnClick() {
    @objc func snapMe() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    //: @objc func openBtnClick() {
    @objc func unboltRoomClick() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
        //: cancleBtnClick()
        snapMe()
    }

    //: func setPermissionIconView(type: TalkingPermissionsType) {
    func correlationTable(type: PermissionsType) {
        //: let count = type == .cameraAndMicrophone ? 2: 1
        let count = type == .cameraAndMicrophone ? 2 : 1
        //: for index in 0..<count {
        for index in 0 ..< count {
            //: let icon = UIImageView()
            let icon = UIImageView()
            //: icon.contentMode = .scaleAspectFill
            icon.contentMode = .scaleAspectFill
            //: backView.addSubview(icon)
            backView.addSubview(icon)
            //: if count == 1 {
            if count == 1 {
                //: icon.snp.makeConstraints { make in
                icon.snp.makeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(62)
                    make.size.equalTo(62)
                    //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                    make.top.equalTo(messageLB.snp.bottom).offset(20)
                }
                //: } else {
            } else {
                //: if index == 0 {
                if index == 0 {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.leading.equalTo(61)
                        make.leading.equalTo(61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                    //: } else {
                } else {
                    //: icon.snp.makeConstraints { make in
                    icon.snp.makeConstraints { make in
                        //: make.trailing.equalTo(-61)
                        make.trailing.equalTo(-61)
                        //: make.size.equalTo(62)
                        make.size.equalTo(62)
                        //: make.top.equalTo(messageLB.snp.bottom).offset(20)
                        make.top.equalTo(messageLB.snp.bottom).offset(20)
                    }
                }
            }
            //: switch type {
            switch type {
            //: case .camera:
            case .camera:
                //: icon.image = UIImage.nearCounterval(name: "icon_peimisionlic_camera")
                icon.image = UIImage.nearCounterval(name: (str_labelTitle.replacingOccurrences(of: "source", with: "on") + "_peimi" + String(str_titleContent)))
            //: case .microphone:
            case .microphone:
                //: icon.image = UIImage.nearCounterval(name: "icon_peimissionlic_mic")
                icon.image = UIImage.nearCounterval(name: (String(str_normalTaskData.prefix(5)) + "peimi" + str_playerName.replacingOccurrences(of: "manager", with: "ss") + str_roomImageData.replacingOccurrences(of: "play", with: "i") + String(str_textTitle.prefix(5))))
            //: case .cameraAndMicrophone:
            case .cameraAndMicrophone:
                //: if index == 0 {
                if index == 0 {
                    //: icon.image = UIImage.nearCounterval(name: "icon_peimisionlic_camera")
                    icon.image = UIImage.nearCounterval(name: (str_labelTitle.replacingOccurrences(of: "source", with: "on") + "_peimi" + String(str_titleContent)))
                    //: } else {
                } else {
                    //: icon.image = UIImage.nearCounterval(name: "icon_peimissionlic_mic")
                    icon.image = UIImage.nearCounterval(name: (String(str_normalTaskData.prefix(5)) + "peimi" + str_playerName.replacingOccurrences(of: "manager", with: "ss") + str_roomImageData.replacingOccurrences(of: "play", with: "i") + String(str_textTitle.prefix(5))))
                }
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension TalkingPermissionView {
extension TotaleractionView {
    // 添加视图
    //: private func setupSubviews() {
    private func toSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(cancleBtn)
        backView.addSubview(cancleBtn)
        //: backView.addSubview(openBtn)
        backView.addSubview(openBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func tunnel() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(295)
            make.width.equalTo(295)
            //: make.height.equalTo(321)
            make.height.equalTo(321)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleLB.snp.bottom).offset(21)
            make.top.equalTo(titleLB.snp.bottom).offset(21)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: cancleBtn.snp.makeConstraints { make in
        cancleBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(130)
            make.width.equalTo(130)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.size.equalTo(cancleBtn)
            make.bottom.size.equalTo(cancleBtn)
        }
    }
}
