
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_buttonValue:[UInt8] = [0xea,0xed,0xea,0xf7,0xab,0xe0,0xec,0xe7,0xe6,0xf1,0xb9,0xaa,0xa3,0xeb,0xe2,0xf0,0xa3,0xed,0xec,0xf7,0xa3,0xe1,0xe6,0xe6,0xed,0xa3,0xea,0xee,0xf3,0xef,0xe6,0xee,0xe6,0xed,0xf7,0xe6,0xe7]

/*: "Price Settings" :*/
fileprivate let str_modelImageValue:[Character] = ["P","r","i","c","e"," ","S"]
fileprivate let str_deviceData:String = "ettinginfo"

/*: "5.00" :*/
fileprivate let str_labelData:String = "5.headhead"

/*: "30" :*/
fileprivate let str_startName:String = "30"

/*: "20" :*/
fileprivate let str_requestPathName:String = "20"

/*: "Chat price settings" :*/
fileprivate let str_blockContent:String = "Chat pricontent view"
fileprivate let str_rawValue:String = "ccenter"
fileprivate let str_normalFrameTitle:String = " setas raw voice let let"

/*: "Video call price settings" :*/
fileprivate let str_nearValueData:[Character] = ["V","i","d","e","o"," ","c","a","l","l"," ","p","r","i","c","e"," ","s","e","t","t","i","n"]
fileprivate let str_genderDateData:[Character] = ["g","s"]

/*: "Voice call price settings" :*/
fileprivate let str_tingLoadValue:[Character] = ["V","o","i","c","e"," ","c","a","l","l"," ","p","r","i","c","e"," ","s","e","t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CreatureMediaThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: import Then
import Then

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class CreatureMediaThen: NameViewController {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [ChatViewMeasurable] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [ChatViewMeasurable] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [ChatViewMeasurable] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_buttonValue.map{$0^131}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(str_modelImageValue) + str_deviceData.replacingOccurrences(of: "info", with: "s")).localized

        //: self.setupSubviews()
        self.toAdd()
        //: self.setupSubViewsConstraint()
        self.device()
        //: self.bindInteraction()
        self.byList()
        //: self.setupData()
        self.quantity()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.appBgColor()
        $0.backgroundColor = UIColor.air()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(StateSetCell.self, forCellReuseIdentifier: StateSetCell.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension CreatureMediaThen {
    //: private func setupData() {
    private func quantity() {
        //: for tempModel in WithAdministratorAppManager.share.appUserConfigMode.chatPriceSettings {
        for tempModel in WithAdministratorAppManager.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.messagePrice ?? (str_labelData.replacingOccurrences(of: "head", with: "0")))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in WithAdministratorAppManager.share.appUserConfigMode.videoPriceSettings {
        for tempModel in WithAdministratorAppManager.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in WithAdministratorAppManager.share.appUserConfigMode.voicePriceSettings {
        for tempModel in WithAdministratorAppManager.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(WithAdministratorAppManager.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension CreatureMediaThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: StateSetCell.className(), for: indexPath) as! StateSetCell
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.of(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: kLet_senseContent, height: 45))
        //: headerView.backgroundColor = UIColor.appBgColor()
        headerView.backgroundColor = UIColor.air()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: kLet_senseContent - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(str_blockContent.prefix(8)) + str_rawValue.replacingOccurrences(of: "center", with: "e") + String(str_normalFrameTitle.prefix(4)) + "tings").localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(str_nearValueData) + String(str_genderDateData)).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(str_tingLoadValue)).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .inexpensiveness()
        titleLab.textColor = .inexpensiveness()
        //: titleLab.font = .liveAttention(type: .Regular, fontSize: 16)
        titleLab.font = .liveAttention(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = OfImportReactiveCompatible(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.strikeOut()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension CreatureMediaThen {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension CreatureMediaThen {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension CreatureMediaThen {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension CreatureMediaThen {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension CreatureMediaThen {
    // 添加视图
    //: private func setupSubviews() {
    private func toAdd() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func device() {}

    // 添加事件
    //: private func bindInteraction() {
    private func byList() {}
}
