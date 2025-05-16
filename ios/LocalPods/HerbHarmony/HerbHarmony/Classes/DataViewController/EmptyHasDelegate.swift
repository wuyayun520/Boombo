
//: Declare String Begin

/*: "#666666" :*/
fileprivate let str_momentLabTitle:[Character] = ["#","6","6","6","6","6","6"]

/*: "#8566FF" :*/
fileprivate let str_pushText:[Character] = ["#","8","5","6","6","F","F"]

/*: "Home" :*/
fileprivate let str_cellTitle:String = "Homeview var"

/*: "Like" :*/
fileprivate let str_observerTopData:String = "Likeempty age var"

/*: "Message" :*/
fileprivate let str_selectIndexValue:String = "live wrap else stringMessage"

/*: "Me" :*/
fileprivate let str_numberText:String = "Meafter mind blue"

/*: "Live" :*/
fileprivate let str_appText:String = "search letLive"

/*: "icon_randownCall_nor" :*/
fileprivate let str_arrayTitle:[UInt8] = [0x22,0x1c,0x28,0x27,0x18,0x2b,0x1a,0x27,0x1d,0x28,0x30,0x27,0xfc,0x1a,0x25,0x25,0x18,0x27,0x28,0x2b]

fileprivate func meanSun(cell num: UInt8) -> UInt8 {
    let value = Int(num) + 71
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_randownCall_pre" :*/
fileprivate let str_constraintName:String = "iimagen"
fileprivate let str_playerRegularData:String = "wnCaon instance normal"

/*: "icon_home_match_nor" :*/
fileprivate let str_userData:[UInt8] = [0x49,0x43,0x4f,0x4e,0x7f,0x48,0x4f,0x4d,0x45,0x7f,0x4d,0x41,0x54,0x43,0x48,0x7f,0x4e,0x4f,0x52]

private func magnitudeernetSite(film num: UInt8) -> UInt8 {
    return num ^ 32
}

/*: "icon_home_match_pre" :*/
fileprivate let str_lengthTitle:String = "user self rangeicon_home"
fileprivate let str_imageData:[Character] = ["_","m","a","t","c","h","_","p","r","e"]

/*: "btn_popular_pop_nor" :*/
fileprivate let str_roomRequestTitle:[UInt8] = [0x5f,0x49,0x53,0x62,0x4d,0x52,0x4d,0x48,0x51,0x5c,0x4f,0x62,0x4d,0x52,0x4d,0x62,0x53,0x52,0x4f]

private func insideOrigin(by num: UInt8) -> UInt8 {
    return num ^ 61
}

/*: "btn_popular_pop_pre" :*/
fileprivate let str_centerValue:String = "btn_pself label"
fileprivate let str_contentName:String = "line cancel to with varpop_pre"

/*: "btn_label_add_nor" :*/
fileprivate let str_sizeContent:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x64,0x64,0x61,0x5f,0x6c,0x65,0x62,0x61,0x6c,0x5f,0x6e,0x74,0x62]

/*: "btn_label_add_pre" :*/
fileprivate let str_collectionCellName:String = "cancel value playbtn_l"
fileprivate let str_colorTitle:String = "index join tabdd_pre"

/*: "btn_chat_cha_nor" :*/
fileprivate let str_sectionText:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x61,0x68,0x63,0x5f,0x74,0x61,0x68,0x63,0x5f,0x6e,0x74,0x62]

/*: "btn_chat_cha_pre" :*/
fileprivate let str_talkValue:String = "btn_chatself gift else"
fileprivate let str_sourceData:String = "_cha_prepoint error sub equal"

/*: "btn_me_my_nor" :*/
fileprivate let str_modelTitle:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x79,0x6d,0x5f,0x65,0x6d,0x5f,0x6e,0x74,0x62]

/*: "btn_me_my_pre" :*/
fileprivate let str_targetValue:[Character] = ["b","t","n","_","m","e","_","m"]
fileprivate let str_applyNameSucceedValue:String = "path readingy_pre"

/*: "btn_live_add_nor" :*/
fileprivate let str_textName:[UInt8] = [0xb6,0xa0,0xba,0x8b,0xb8,0xbd,0xa2,0xb1,0x8b,0xb5,0xb0,0xb0,0x8b,0xba,0xbb,0xa6]

private func marginOfSafety(talk num: UInt8) -> UInt8 {
    return num ^ 212
}

/*: "btn_live_add_pre" :*/
fileprivate let str_imageValue:[Character] = ["b","t","n","_","l"]
fileprivate let str_touchName:[Character] = ["i","v","e","_"]
fileprivate let str_nameValue:String = "true else leading letadd_pre"

/*: "get json error" :*/
fileprivate let str_toContent:String = "delay"
fileprivate let str_gameValue:String = "et jsmain model view equal"
fileprivate let str_equalQuickValue:String = "homehomeohome"

/*: "99+" :*/
fileprivate let str_insertRawName:String = "99+"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyHasDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import UIKit
import UIKit

//: class TalkingTabBar: UITabBar {
class EmptyHasDelegate: UITabBar {
    //: var currentTabType = 0
    var currentTabType = 0
    // 消息tabBar展示头像
    //: private var messageIcon = UIImageView()
    private var messageIcon = UIImageView()

    //: func setupItemsWithArr(itemTypes: Array<TabBarItemType>) {
    func recordEnter(itemTypes: [SubmitNumeric]) {
        //: if itemTypes.count == 0 {
        if itemTypes.count == 0 {
            //: return
            return
        }
        //: let viewWidth = ScreenWidth
        let viewWidth = kLet_senseContent
        //: let backView = UIView.init()
        let backView = UIView()
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.height.equalTo(Int(TabBarViewHeight))
            make.height.equalTo(Int(kLet_callValue))
        }
        //: backView.backgroundColor = .white
        backView.backgroundColor = .white
        //: backView.layer.shadowColor = UIColor.init(red: 188/255.0, green: 188/255.0, blue: 188/255.0, alpha: 0.5).cgColor
        backView.layer.shadowColor = UIColor(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0, alpha: 0.5).cgColor
        //: backView.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: backView.layer.shadowOpacity = 1
        backView.layer.shadowOpacity = 1
        //: backView.layer.shadowRadius = 6
        backView.layer.shadowRadius = 6

        //: let width = Int(viewWidth)/itemTypes.count
        let width = Int(viewWidth) / itemTypes.count

        //: for i in 0..<itemTypes.count {
        for i in 0 ..< itemTypes.count {
            //: let itemType = itemTypes[i]
            let itemType = itemTypes[i]
            //: let btn = barBtnFor(itemType: itemType)!
            let btn = cellValue(itemType: itemType)!
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.isSelected = (itemType.rawValue == currentTabType)
            btn.isSelected = (itemType.rawValue == currentTabType)
            //: backView.addSubview(btn)
            backView.addSubview(btn)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.leading.equalTo(width*i)
                make.leading.equalTo(width * i)
                //: make.size.equalTo(CGSize.init(width: width, height: 48))
                make.size.equalTo(CGSize(width: width, height: 48))
            }
            //: if itemType != TabBarItemType.FreeMoment {
            if itemType != SubmitNumeric.FreeMoment {
                //: setBtnPlace(btn: btn)
                methodPlace(btn: btn)
            }

            //: if itemType == TabBarItemType.Message {
            if itemType == SubmitNumeric.Message {
                //: messageIcon = UIImageView()
                messageIcon = UIImageView()
                //: messageIcon.contentMode = .scaleAspectFill
                messageIcon.contentMode = .scaleAspectFill
                //: messageIcon.layer.cornerRadius = 15.0
                messageIcon.layer.cornerRadius = 15.0
                //: messageIcon.layer.masksToBounds = true
                messageIcon.layer.masksToBounds = true
                //: messageIcon.isHidden = true
                messageIcon.isHidden = true
                //: btn.addSubview(messageIcon)
                btn.addSubview(messageIcon)
                //: messageIcon.snp.makeConstraints { make in
                messageIcon.snp.makeConstraints { make in
                    //: let y = btn.imageView?.origin.y ?? 0
                    let y = btn.imageView?.origin.y ?? 0
                    //: make.top.equalTo(y-2)
                    make.top.equalTo(y - 2)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 30, height: 30))
                    make.size.equalTo(CGSize(width: 30, height: 30))
                }
                //: } else if itemType == TabBarItemType.Live {
            } else if itemType == SubmitNumeric.Live { // 直播tabBar添加SVGA动效
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: liveSvga.isHidden = true
                liveSvga.isHidden = true
                //: btn.addSubview(liveSvga)
                btn.addSubview(liveSvga)
                //: liveSvga.snp.makeConstraints { make in
                liveSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
                //: } else if itemType == TabBarItemType.Randow {
            } else if itemType == SubmitNumeric.Randow {
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: randowSvga.isHidden = true
                randowSvga.isHidden = true
                //: btn.addSubview(randowSvga)
                btn.addSubview(randowSvga)
                //: randowSvga.snp.makeConstraints { make in
                randowSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
            }
        }

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance.init()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .clear
            tabBarAppearance.backgroundColor = .clear
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = .clear
            tabBarAppearance.shadowColor = .clear
            //: self.standardAppearance = tabBarAppearance
            self.standardAppearance = tabBarAppearance
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: self.scrollEdgeAppearance = tabBarAppearance
                self.scrollEdgeAppearance = tabBarAppearance
                //: } else {
            } else {
                // Fallback on earlier versions
            }
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func barBtnFor(itemType: TabBarItemType) -> UIButton? {
    func cellValue(itemType: SubmitNumeric) -> UIButton? {
        //: switch itemType {
        switch itemType {
        //: case .Social, .Moment, .Account, .Message, .Randow, .Live:
        case .Social, .Moment, .Account, .Message, .Randow, .Live:
            //: let btn: UIButton = UIButton.init(type: .custom)
            let btn = UIButton(type: .custom)
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.backgroundColor = .clear
            btn.backgroundColor = .clear
            //: btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 11)
            btn.titleLabel?.font = .liveAttention(type: .Medium, fontSize: 11)
            //: btn.setTitle(self.itemTitleFor(itemType: itemType), for: .normal)
            btn.setTitle(self.dogTag(itemType: itemType), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#666666"), for: .normal)
            btn.setTitleColor(UIColor(hex: (String(str_momentLabTitle))), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#8566FF"), for: .selected)
            btn.setTitleColor(UIColor(hex: (String(str_pushText))), for: .selected)
            //: btn.setImage(UIImage.nearCounterval(name: self.itemImageFor(itemType: itemType, btnSelect: false)), for: .normal)
            btn.setImage(UIImage.nearCounterval(name: self.currentBackground(itemType: itemType, btnSelect: false)), for: .normal)
            //: btn.setImage(UIImage.nearCounterval(name: self.itemImageFor(itemType: itemType, btnSelect: true)), for: .selected)
            btn.setImage(UIImage.nearCounterval(name: self.currentBackground(itemType: itemType, btnSelect: true)), for: .selected)

            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: return btn
            return btn
        //: case .FreeMoment:
        case .FreeMoment:
            //: return nil
            return nil
        //: case .Login:
        case .Login:
            //: return nil
            return nil
        //: case .meet:
        case .meet:
            //: return nil
            return nil
        }
    }

    //: func itemTitleFor(itemType: TabBarItemType) -> String {
    func dogTag(itemType: SubmitNumeric) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return "Home".localized
            return (String(str_cellTitle.prefix(4))).localized
        //: case .Social:
        case .Social:
//            if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.special.rawValue {
//                return "People".localized
//            } else if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.male.rawValue {
//                return "Hot".localized
//            } else {
//                return "Home".localized
//            }
            //: return "Home".localized
            return (String(str_cellTitle.prefix(4))).localized

        //: case .Moment:
        case .Moment:
            //: return "Like".localized
            return (String(str_observerTopData.prefix(4))).localized
//            return "Moment".localized
        //: case .Message:
        case .Message:
            //: return "Message".localized
            return (String(str_selectIndexValue.suffix(7))).localized
        //: case .Account:
        case .Account:
            //: return "Me".localized
            return "Me".localized
        //: case .Live:
        case .Live:
            //: return "Live".localized
            return (String(str_appText.suffix(4))).localized
        //: case .Login, .FreeMoment, .meet:
        case .Login, .FreeMoment, .meet:
            //: return ""
            return ""
        }
    }

    //: func itemImageFor(itemType: TabBarItemType, btnSelect: Bool) -> String {
    func currentBackground(itemType: SubmitNumeric, btnSelect: Bool) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return btnSelect == false ? "icon_randownCall_nor":"icon_randownCall_pre"
            return btnSelect == false ? String(bytes: str_arrayTitle.map{meanSun(cell: $0)}, encoding: .utf8)! : (str_constraintName.replacingOccurrences(of: "image", with: "co") + "_rando" + String(str_playerRegularData.prefix(4)) + "ll_pre")
        //: case .Social:
        case .Social:
//            return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            //: return btnSelect == false ? "icon_home_match_nor":"icon_home_match_pre"
            return btnSelect == false ? String(bytes: str_userData.map{magnitudeernetSite(film: $0)}, encoding: .utf8)! : (String(str_lengthTitle.suffix(9)) + String(str_imageData))
        //: case .Moment:
        case .Moment:
//            return btnSelect == false ? "btn_discocer_dis_nor":"btn_discocer_dis_pre"
            //: return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            return btnSelect == false ? String(bytes: str_roomRequestTitle.map{insideOrigin(by: $0)}, encoding: .utf8)! : (String(str_centerValue.prefix(5)) + "opular_" + String(str_contentName.suffix(7)))
        //: case .FreeMoment:
        case .FreeMoment:
            //: return btnSelect == false ? "btn_label_add_nor":"btn_label_add_pre"
            return btnSelect == false ? String(bytes: str_sizeContent.reversed(), encoding: .utf8)! : (String(str_collectionCellName.suffix(5)) + "abel_a" + String(str_colorTitle.suffix(6)))
        //: case .Message:
        case .Message:
            //: return btnSelect == false ? "btn_chat_cha_nor":"btn_chat_cha_pre"
            return btnSelect == false ? String(bytes: str_sectionText.reversed(), encoding: .utf8)! : (String(str_talkValue.prefix(8)) + String(str_sourceData.prefix(8)))
        //: case .Account:
        case .Account:
            //: return btnSelect == false ? "btn_me_my_nor":"btn_me_my_pre"
            return btnSelect == false ? String(bytes: str_modelTitle.reversed(), encoding: .utf8)! : (String(str_targetValue) + String(str_applyNameSucceedValue.suffix(5)))
        //: case .Live:
        case .Live:
            //: return btnSelect == false ? "btn_live_add_nor":"btn_live_add_pre"
            return btnSelect == false ? String(bytes: str_textName.map{marginOfSafety(talk: $0)}, encoding: .utf8)! : (String(str_imageValue) + String(str_touchName) + String(str_nameValue.suffix(7)))
        //: case .Login, .meet:
        case .Login, .meet:
            //: return ""
            return ""
        }
    }

    /// 更改tabbar按钮选中状态
    //: func setSelectedTabItem(itemType: TabBarItemType) {
    func moreData(itemType: SubmitNumeric) {
        //: let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        //: if itemType.rawValue != currentTabType && btn.isSelected == true {
        if itemType.rawValue != currentTabType && btn.isSelected == true {
            //: btn.isSelected = false
            btn.isSelected = false
        }
        //: let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        //: lastBtn.isSelected = true
        lastBtn.isSelected = true
        //: currentTabType = itemType.rawValue
        currentTabType = itemType.rawValue
        //: if itemType == .Message {
        if itemType == .Message {
            //: hideNewMessageUser()
            usufructuaryUser()
        }
    }

    //: func setBtnPlace(btn: UIButton) {
    func methodPlace(btn: UIButton) {
        //: let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        //: let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0
        let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0

        //: let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        //: let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        //: if LanguageManager.shared.direction == .leftToRight {
        if MeanSunLanguageManager.shared.direction == .leftToRight {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: 0, bottom: 0, right: -titleW)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: 0, bottom: 0, right: -titleW)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH-2, right: 0)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH - 2, right: 0)
            //: } else {
        } else {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: -titleW, bottom: 0, right: 0)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: -titleW, bottom: 0, right: 0)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH-2, right:  -imageW)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH - 2, right: -imageW)
        }
    }

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_tabBar)
            let url = DigitiserReactiveCompatible.default.game(type: .Live_tabBar)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (str_toContent.replacingOccurrences(of: "delay", with: "g") + String(str_gameValue.prefix(5)) + "on e" + str_equalQuickValue.replacingOccurrences(of: "home", with: "r")))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var randowSvga: SVGAPlayer = {
    private lazy var randowSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Tabbar_randownCall)
            let url = DigitiserReactiveCompatible.default.game(type: .Tabbar_randownCall)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (str_toContent.replacingOccurrences(of: "delay", with: "g") + String(str_gameValue.prefix(5)) + "on e" + str_equalQuickValue.replacingOccurrences(of: "home", with: "r")))
        }

        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabBar {
extension EmptyHasDelegate {
    /// 刷新消息未读数角标
    //: func refreshBadgeLayoutWith(unread: Int, barType: TabBarItemType) {
    func clutter(unread: Int, barType: SubmitNumeric) {
        //: let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        //: let label = getBadgeLabel(btn: btn)
        let label = timeTarget(btn: btn)
        //: if unread > 0 {
        if unread > 0 {
            //: label.isHidden = false
            label.isHidden = false
            //: if unread > 99 {
            if unread > 99 {
                //: label.text = "99+"
                label.text = "99+"
                //: } else {
            } else {
                //: label.text = "\(unread)"
                label.text = "\(unread)"
            }
            //: } else {
        } else {
            //: label.isHidden = true
            label.isHidden = true
            //: hideNewMessageUser()
            usufructuaryUser()
        }
        //: var labWidth = 18.0
        var labWidth = 18.0
        //: if unread > 99 {
        if unread > 99 {
            //: labWidth = 30.0
            labWidth = 30.0
            //: } else if unread > 9 {
        } else if unread > 9 {
            //: labWidth = 23.0
            labWidth = 23.0
        }
        //: let delta = KDeviceIsIphoneX ? 5 : 2
        let delta = kLet_keyValue ? 5 : 2
        //: label.snp.remakeConstraints { make in
        label.snp.remakeConstraints { make in
            //: make.leading.equalTo(btn.snp.centerX).offset(10)
            make.leading.equalTo(btn.snp.centerX).offset(10)
            //: make.top.equalTo(delta)
            make.top.equalTo(delta)
            //: make.size.equalTo(CGSize(width: labWidth, height: 18.0))
            make.size.equalTo(CGSize(width: labWidth, height: 18.0))
        }
    }

    //: func getBadgeLabel(btn: UIButton) -> UILabel {
    func timeTarget(btn: UIButton) -> UILabel {
        //: var badgeLabel = btn.viewWithTag(1000)
        var badgeLabel = btn.viewWithTag(1000)
        //: if badgeLabel == nil {
        if badgeLabel == nil {
            //: var tempLabel = UILabel.init()
            var tempLabel = UILabel()
            //: tempLabel = UILabel.init()
            tempLabel = UILabel()
            //: tempLabel.tag = 1000
            tempLabel.tag = 1000
            //: tempLabel.backgroundColor = UIColor.msgTipsColor()
            tempLabel.backgroundColor = UIColor.userError()
            //: tempLabel.layer.cornerRadius = 9
            tempLabel.layer.cornerRadius = 9
            //: tempLabel.layer.borderWidth = 1
            tempLabel.layer.borderWidth = 1
            //: tempLabel.layer.borderColor = UIColor.white.cgColor
            tempLabel.layer.borderColor = UIColor.white.cgColor
            //: tempLabel.clipsToBounds = true
            tempLabel.clipsToBounds = true
            //: tempLabel.textColor = UIColor.white
            tempLabel.textColor = UIColor.white
            //: tempLabel.font = UIFont.behindUpRoom(fontSize: 13)
            tempLabel.font = UIFont.behindUpRoom(fontSize: 13)
            //: tempLabel.isHidden = true
            tempLabel.isHidden = true
            //: tempLabel.textAlignment = .center
            tempLabel.textAlignment = .center

            //: btn.addSubview(tempLabel)
            btn.addSubview(tempLabel)
            //: badgeLabel = tempLabel
            badgeLabel = tempLabel
        }
        //: return badgeLabel as! UILabel
        return badgeLabel as! UILabel
    }

    /// 展示消息tab头像
    //: func showNewMessageUser(headPic: String) {
    func headIcon(headPic: String) {
        //: if currentTabType != TabBarItemType.Message.rawValue {
        if currentTabType != SubmitNumeric.Message.rawValue {
            //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
            let btn = self.viewWithTag(SubmitNumeric.Message.rawValue + 100) as? UIButton
            //: if btn != nil {
            if btn != nil {
                //: self.messageIcon.isHidden = false
                self.messageIcon.isHidden = false
                //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                //: self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
                self.messageIcon.commentGesture(urlStr: headPic, options: optionsInfo)
            }
        }
    }

    /// 隐藏消息tab头像
    //: func hideNewMessageUser() {
    func usufructuaryUser() {
        //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
        let btn = self.viewWithTag(SubmitNumeric.Message.rawValue + 100) as? UIButton
        //: if btn != nil {
        if btn != nil {
            //: self.messageIcon.isHidden = true
            self.messageIcon.isHidden = true
        }
    }

    /// 展示女性直播toast提示
    //: func showFemaleLiveTurnOnToast() {
    func midDown() {
        //: guard self.subviews.count > 0 else { return }
        guard self.subviews.count > 0 else { return }
        //: TalkingLiveTabToast().show(superView: self)
        InfoTabToast().spectaclesError(superView: self)
    }

    /// 更改直播按钮图标
    //: func switchLiveTabBarImage() {
    func betweenToImage() {
        //: guard WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue else { return }
        //: let liveBtn = self.viewWithTag(TabBarItemType.Live.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(SubmitNumeric.Live.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: if TalkingLiveManager.shared().isLive ||
        if SectionPushListener.cover().isLive ||
            //: TalkingVoiceRoomManager.shared().isParty, String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid {
            StackMThen.estimated().isParty, String(StackMThen.estimated().partyModel.streamerInfo.uid) == WithAdministratorAppManager.share.loginUid
        {
            //: liveSvga.isHidden = false
            liveSvga.isHidden = false
            //: } else {
        } else {
            //: liveSvga.isHidden = true
            liveSvga.isHidden = true
        }
    }

    /// 更改Randow按钮图标
    //: func switchRandowTabBarImage(isHidde: Bool) {
    func equalHidde(isHidde: Bool) {
        //: let liveBtn = self.viewWithTag(TabBarItemType.Randow.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(SubmitNumeric.Randow.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: randowSvga.isHidden = !isHidde
        randowSvga.isHidden = !isHidde
    }
}
