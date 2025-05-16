
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let str_gestureName:[Character] = ["B","e","a","u","t","i","f","y"," ","S","e","t","t"]
fileprivate let str_infoData:[Character] = ["i","n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let str_sizeName:[Character] = ["i","c","o","n","_","m","e","_","v","i","d","e","o","S","e"]
fileprivate let str_wrapData:String = "aspect color withoutt_beauty"

/*: "Video Settings" :*/
fileprivate let str_colorModelTitle:[Character] = ["V","i","d","e","o"," ","S","e","t"]
fileprivate let str_viewImageValue:String = "tingtouch"

/*: "TalkingSettingReceiveVideoCellId" :*/
fileprivate let str_removeName:[UInt8] = [0xe7,0xd2,0xdf,0xd8,0xda,0xdd,0xd4,0xe0,0xd6,0xc7,0xc7,0xda,0xdd,0xd4,0xe1,0xd6,0xd0,0xd6,0xda,0xc5,0xd6,0xe5,0xda,0xd7,0xd6,0xdc,0xf0,0xd6,0xdf,0xdf,0xfa,0xd7]

/*: "Enter \"Settings\" and open \"Camera\" permission to use this function normally" :*/
fileprivate let str_translateData:[UInt8] = [0xe1,0xa,0x10,0x1,0xe,0xbc,0xbe,0xef,0x1,0x10,0x10,0x5,0xa,0x3,0xf,0xbe,0xbc,0xfd,0xa,0x0,0xbc,0xb,0xc,0x1,0xa,0xbc,0xbe,0xdf,0xfd,0x9,0x1,0xe,0xfd,0xbe,0xbc,0xc,0x1,0xe,0x9,0x5,0xf,0xf,0x5,0xb,0xa,0xbc,0x10,0xb,0xbc,0x11,0xf,0x1,0xbc,0x10,0x4,0x5,0xf,0xbc,0x2,0x11,0xa,0xff,0x10,0x5,0xb,0xa,0xbc,0xa,0xb,0xe,0x9,0xfd,0x8,0x8,0x15]

fileprivate func minFile(a num: UInt8) -> UInt8 {
    let value = Int(num) - 156
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let str_resultName:String = "head size equalCancel"

/*: "Settings" :*/
fileprivate let str_valueContent:String = "in else object sexSe"
fileprivate let str_imageStyleData:String = "tabletableings"

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let str_equalTitle:[UInt8] = [0x6,0x23,0x24,0x26,0x3a,0x33,0x76,0x3b,0x33,0x37,0x38,0x25,0x76,0x22,0x23,0x24,0x38,0x76,0x39,0x38,0x76,0x22,0x3e,0x33,0x76,0x35,0x37,0x3a,0x3a,0x76,0x3f,0x38,0x20,0x3f,0x22,0x37,0x22,0x3f,0x39,0x38,0x7a,0x76,0x31,0x24,0x33,0x2f,0x76,0x3b,0x33,0x37,0x38,0x25,0x76,0x22,0x23,0x24,0x38,0x76,0x39,0x30,0x30,0x76,0x22,0x3e,0x33,0x76,0x35,0x37,0x3a,0x3a,0x76,0x3f,0x38,0x20,0x3f,0x22,0x37,0x22,0x3f,0x39,0x38,0x78]

private func keyFatal(attention num: UInt8) -> UInt8 {
    return num ^ 86
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class EqualReactiveCompatible: NameViewController {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(str_gestureName) + String(str_infoData)), (String(str_sizeName) + String(str_wrapData.suffix(8)))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: self.title = "Video Settings".localized
        self.title = (String(str_colorModelTitle) + str_viewImageValue.replacingOccurrences(of: "touch", with: "s")).localized
        //: self.setupSubviews()
        self.largeness()
        //: self.setupSubViewsConstraint()
        self.utilizer()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.appBgColor()
        table.backgroundColor = UIColor.air()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: "TalkingSettingReceiveVideoCellId")
        table.register(SaddleViewCell.self, forCellReuseIdentifier: String(bytes: str_removeName.map{$0^179}, encoding: .utf8)!)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()
}

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension EqualReactiveCompatible {
    //: func judgeCameraAuthorization() {
    func bullMooseParty() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        LaissezPasserThen.effectOf(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isTalking == false else {
                guard DataSocketDelegate.shared.isTalking == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.atShow(showMsg: kLet_keyTitle)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = ScaleRecognizerDelegate()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                VoiceAlertShow.enablelineMedium(title: nil, message: String(bytes: str_translateData.map{minFile(a: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(str_resultName.suffix(6))).localized, rightBtnTitle: (String(str_valueContent.suffix(2)) + str_imageStyleData.replacingOccurrences(of: "table", with: "t")).localized) {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    VoiceAlertShow.bias()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension EqualReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && kLet_tabTitle {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: "TalkingSettingReceiveVideoCellId", for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: SaddleViewCell = tableView.dequeueReusableCell(withIdentifier: String(bytes: str_removeName.map{$0^179}, encoding: .utf8)!, for: indexPath) as! SaddleViewCell
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.sort(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.sort(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.sort(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && kLet_tabTitle else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = CellThen(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.counteractionVersion(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.toHidden(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && kLet_tabTitle {
                //: self.judgeCameraAuthorization()
                self.bullMooseParty()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.appBgColor()
        view.backgroundColor = UIColor.air()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.unprecedented(fontSize: 14)
        title.font = UIFont.unprecedented(fontSize: 14)
        //: title.textColor = UIColor.inexpensiveness()
        title.textColor = UIColor.inexpensiveness()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: str_equalTitle.map{keyFatal(attention: $0)}, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension EqualReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func largeness() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func utilizer() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
