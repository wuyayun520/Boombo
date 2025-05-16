
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_likeContent:[UInt8] = [0x3a,0x3d,0x3a,0x27,0x7b,0x30,0x3c,0x37,0x36,0x21,0x69,0x7a,0x73,0x3b,0x32,0x20,0x73,0x3d,0x3c,0x27,0x73,0x31,0x36,0x36,0x3d,0x73,0x3a,0x3e,0x23,0x3f,0x36,0x3e,0x36,0x3d,0x27,0x36,0x37]

/*: "#333333" :*/
fileprivate let str_effectValue:[Character] = ["#","3"]
fileprivate let str_nearValue:String = "33333"

/*: "#999999" :*/
fileprivate let str_shareAddContent:[Character] = ["#","9","9","9","9","9","9"]

/*: "isCupid" :*/
fileprivate let str_kitContent:[Character] = ["i","s","C","u","p","i","d"]

/*: "autoGreetAuth" :*/
fileprivate let str_fatalFrameMidData:String = "aumakeo"
fileprivate let str_dataName:String = "type varAuth"

/*: "isLeaderboardAnonymous" :*/
fileprivate let str_dramaMainData:String = "isLeapush need"
fileprivate let str_modeValue:String = "m inardA"
fileprivate let str_fatalData:[Character] = ["o","u","s"]

/*: "isSameGendered" :*/
fileprivate let str_statusData:String = "head succeedisSame"
fileprivate let str_timeData:[Character] = ["G","e","n"]
fileprivate let str_toData:String = "dregulared"

/*: "type" :*/
fileprivate let str_popData:[Character] = ["t","y","p","e"]

/*: "value" :*/
fileprivate let str_managerData:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: class TalkingSettingNotifCell: UITableViewCell {
class CustomViewCell: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(switchView)
        backView.addSubview(switchView)
        //: backView.addSubview(detailLB)
        backView.addSubview(detailLB)

        //: NotificationCenter.default.addObserver(self, selector: #selector(applicationDidBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(start), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_likeContent.map{$0^83}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(actualWidth(w: 15))
            make.leading.equalTo(self).offset(actualWidth(w: 15))
            //: make.trailing.equalTo(self.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(self.snp.trailing).offset(actualWidth(w: -15))
            //: make.top.bottom.equalTo(self)
            make.top.bottom.equalTo(self)
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(actualWidth(w: 15))
            make.leading.equalTo(backView).offset(actualWidth(w: 15))
            //: make.top.equalTo(backView).offset(actualHeight(h: 15))
            make.top.equalTo(backView).offset(actualHeight(h: 15))
            //: make.height.equalTo(actualHeight(h: 20))
            make.height.equalTo(actualHeight(h: 20))
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.top.equalTo(backView).offset(actualHeight(h: 11))
            make.top.equalTo(backView).offset(actualHeight(h: 11))
            //: make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 51))
            make.width.equalTo(actualWidth(w: 51))
            //: make.height.equalTo(actualHeight(h: 28))
            make.height.equalTo(actualHeight(h: 28))
        }

        //: detailLB.snp.makeConstraints { make in
        detailLB.snp.makeConstraints { make in
            //: make.top.equalTo(titleBLB.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(titleBLB.snp.bottom).offset(actualHeight(h: 9))
            //: make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            make.trailing.equalTo(backView.snp.trailing).offset(actualWidth(w: -15))
            //: make.leading.equalTo(backView.snp.leading).offset(actualWidth(w: 15))
            make.leading.equalTo(backView.snp.leading).offset(actualWidth(w: 15))
            //: make.bottom.equalTo(backView.snp.bottom)
            make.bottom.equalTo(backView.snp.bottom)
        }

        //: self.layoutIfNeeded()
        self.layoutIfNeeded()

        //: if index == 0 && islast {
        if index == 0 && islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            backView.corners(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 8, height: 8))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            backView.corners(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.topLeft, .topRight], cornerRadii: .init(width: 8, height: 8))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            backView.corners(width: backView.frame.size.width, height: backView.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 8, height: 8))
            //: } else {
        } else {
            //: backView.Corner(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
            backView.corners(width: backView.frame.size.width, height: backView.frame.size.height, corners: .allCorners, cornerRadii: .init(width: 0, height: 0))
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (String(str_effectValue) + str_nearValue.capitalized))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var switchView: UISwitch = {
    lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = true
        swit.isOn = true
        //: swit.onTintColor = UIColor.alright()
        swit.onTintColor = UIColor.alright()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(sexChange), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()

    //: lazy var detailLB: TextAlignLb = {
    lazy var detailLB: ChaseView = {
        //: let lb = TextAlignLb.init()
        let lb = ChaseView()
        //: lb.setIsTop(isTop: true)
        lb.high(isTop: true)
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 15)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (String(str_shareAddContent)))
        //: lb.isHidden = true
        lb.isHidden = true
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingNotifCell {
extension CustomViewCell {
    //: func setCellMessage(titile: String, row: Int, isLast: Bool) {
    func watchOver(titile: String, row: Int, isLast: Bool) {
        //: titleBLB.text = titile.localized
        titleBLB.text = titile.localized
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: detailLB.isHidden = true
        detailLB.isHidden = true

//        if titile == TitleContiguousBytes.General.rawValue {
//            LaissezPasserThen.checkPushNotification { isShow in
//                DispatchQueue.main.sync {
//                    self.switchView.isOn = isShow
//                }
//            }
//        }
    }

    //: func setCellDetails(detail: String ) {
    func pushDetail(detail: String) {
        //: detailLB.isHidden = false
        detailLB.isHidden = false
        //: detailLB.text = detail.localized
        detailLB.text = detail.localized
    }

    //: func setCellNotif(isShow: Int ) {
    func up(isShow: Int) {
        //: if isShow == 1 {
        if isShow == 1 {
            //: self.switchView.isOn = true
            self.switchView.isOn = true
            //: } else if isShow == -1 {
        } else if isShow == -1 {
            //: self.switchView.isOn = false
            self.switchView.isOn = false
        }
    }

    //: @objc func switchDidChange() {
    @objc func sexChange() {
        //: if titleBLB.text == SettingsUniversalType.Turnon_Notif.rawValue.localized {
        if titleBLB.text == LeadingNameConvertible.Turnon_Notif.rawValue.localized {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if titleBLB.text == SettingsUniversalType.Cupid.rawValue.localized {
        } else if titleBLB.text == LeadingNameConvertible.Cupid.rawValue.localized {
            //: setConfig(type: "isCupid", value: self.switchView.isOn)
            visible(type: (String(str_kitContent)), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Automatic.rawValue.localized {
        } else if titleBLB.text == LeadingNameConvertible.Automatic.rawValue.localized {
            //: setConfig(type: "autoGreetAuth", value: self.switchView.isOn)
            visible(type: (str_fatalFrameMidData.replacingOccurrences(of: "make", with: "t") + "Greet" + String(str_dataName.suffix(4))), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Ranking.rawValue.localized {
        } else if titleBLB.text == LeadingNameConvertible.Ranking.rawValue.localized {
            //: setConfig(type: "isLeaderboardAnonymous", value: self.switchView.isOn)
            visible(type: (String(str_dramaMainData.prefix(5)) + "derbo" + String(str_modeValue.suffix(4)) + "nonym" + String(str_fatalData)), value: self.switchView.isOn)
            //: } else if titleBLB.text == SettingsUniversalType.Same_gendered.rawValue.localized {
        } else if titleBLB.text == LeadingNameConvertible.Same_gendered.rawValue.localized {
            //: setConfig(type: "isSameGendered", value: self.switchView.isOn)
            visible(type: (String(str_statusData.suffix(6)) + String(str_timeData) + str_toData.replacingOccurrences(of: "regular", with: "er")), value: self.switchView.isOn)
        }
    }

    //: func setConfig(type: String, value: Bool) {
    func visible(type: String, value: Bool) {
        //: let va = value ? 1 : -1
        let va = value ? 1 : -1
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = type
        dict[(String(str_popData))] = type
        //: dict["value"] = va
        dict[(String(str_managerData))] = va

        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_SettingChange(params: dict) { succeed, result, errorModel in
        QuantityeractionThen.sceneInAddCompletion(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: } else {
            } else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
            }
        }
    }

    //: @objc func applicationDidBecomeActive(notification: NSNotification) {
    @objc func start(notification _: NSNotification) {
//        if titleBLB.text == TitleContiguousBytes.General.rawValue {
//            LaissezPasserThen.checkPushNotification { isShow in
//                DispatchQueue.main.sync {
//                    self.switchView.isOn = isShow
//                }
//            }
//        }
    }
}
