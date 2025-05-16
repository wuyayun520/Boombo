
//: Declare String Begin

/*: "Wallet" :*/
fileprivate let str_buttonName:String = "Walletreturn size"

/*: "0 Private photos" :*/
fileprivate let str_quickTitle:[Character] = ["0"," ","P","r","i","v","a","t","e"," ","p","h"]
fileprivate let str_collectionData:String = "OTOS"

/*: "0 Private videos" :*/
fileprivate let str_timeText:String = "0 Privleading to color else control"
fileprivate let str_makeTouchName:String = "idsendo"
fileprivate let str_topOfValue:String = "allow"

/*: "0 min voice calls" :*/
fileprivate let str_requestWillUpValue:[Character] = ["0"," ","m","i","n"," ","v","o","i","c","e"," "]
fileprivate let str_makeDataAsValue:String = "CALLS"

/*: "0 min video calls" :*/
fileprivate let str_informationData:String = "0 miapp make index"
fileprivate let str_styleData:[Character] = [" ","c","a","l","l","s"]

/*: "me_private_photos_num" :*/
fileprivate let str_voiceErrorValue:[Character] = ["m","e","_","p","r","i","v","a","t","e","_","p","h"]
fileprivate let str_originValue:[Character] = ["o","t"]
fileprivate let str_mainData:[Character] = ["o","s","_","n","u","m"]

/*: "me_private_video_num" :*/
fileprivate let str_videoDataText:String = "of position true pop fromme_pri"
fileprivate let str_assetName:[Character] = ["i","d"]
fileprivate let str_labelTopToName:String = "eo_numshare icon"

/*: "me_min_voice_call" :*/
fileprivate let str_centerName:[Character] = ["m","e","_","m","i","n","_"]
fileprivate let str_searchValue:[Character] = ["v","o","i","c","e","_","c","a","l","l"]

/*: "me_min_video_call" :*/
fileprivate let str_listName:String = "me_minreturn extension m"
fileprivate let str_conditionData:String = "image"
fileprivate let str_legacyText:[Character] = ["o","_","c","a","l","l"]

/*: "&type=1" :*/
fileprivate let str_resumeToName:[Character] = ["&","t","y","p","e","=","1"]

/*: "&type=2" :*/
fileprivate let str_formatName:String = "&type=index room text to pic"
fileprivate let str_cellEqualTitle:[Character] = ["2"]

/*: "&type=4" :*/
fileprivate let str_editText:String = "item in current to&type=4"

/*: "&type=3" :*/
fileprivate let str_finishName:[Character] = ["&","t","y","p","e","=","3"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyRecognizerDelegate.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/3/24.
//

//: import UIKit
import UIKit

//: class TalkingWalletViewController: TalkingBaseViewController {
class EmptyRecognizerDelegate: NameViewController {
    //: private var section1Data = [(String, String)]()
    private var section1Data = [(String, String)]()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Wallet"
        self.title = (String(str_buttonName.prefix(6)))
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: loadResidualInfoData()
        residualPath()
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(loadResidualInfoData),
                                               selector: #selector(residualPath),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: kLet_greetData,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(PrincipalReactiveCompatible.self, forCellReuseIdentifier: PrincipalReactiveCompatible.className())
        //: table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        table.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWalletViewController {
extension EmptyRecognizerDelegate {
    /// 加载数据
    //: @objc private func loadResidualInfoData() {
    @objc private func residualPath() {
        //: TalkingUserRequestManager.func__reqResidualInfo() { succeed, result, errorModel in
        UnambiguousThen.sumeraction { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: var str1 = "0 Private photos"
            var str1 = (String(str_quickTitle) + str_collectionData.lowercased())
            //: var str2 = "0 Private videos"
            var str2 = (String(str_timeText.prefix(6)) + "ate v" + str_makeTouchName.replacingOccurrences(of: "send", with: "e") + str_topOfValue.replacingOccurrences(of: "allow", with: "s"))
            //: var str3 = "0 min voice calls"
            var str3 = (String(str_requestWillUpValue) + str_makeDataAsValue.lowercased())
            //: var str4 = "0 min video calls"
            var str4 = (String(str_informationData.prefix(4)) + "n video" + String(str_styleData))

            //: if let datas = Array<ResidualInfoModel>.deserialize(from: result as? Array) {
            if let datas = Array<ManagerHandyJSON>.deserialize(from: result as? Array) {
                //: datas.forEach { model in
                for model in datas {
                    //: if model?.type == 1 {
                    if model?.type == 1 { // 私密照片
                        //: str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str1 = str1.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 2 {
                    } else if model?.type == 2 { // 私密视频
                        //: str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str2 = str2.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 4 {
                    } else if model?.type == 4 { // 音频包
                        //: str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str3 = str3.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        //: } else if model?.type == 3 {
                    } else if model?.type == 3 { // 视频频包
                        //: str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                        str4 = str4.replacingOccurrences(of: "0", with: "\(model?.num ?? 0)")
                    }
                }
            }

            //: self.section1Data = [(str1, "me_private_photos_num"),
            self.section1Data = [(str1, (String(str_voiceErrorValue) + String(str_originValue) + String(str_mainData))),
                                 //: (str2, "me_private_video_num"),
                                 (str2, (String(str_videoDataText.suffix(6)) + "vate_v" + String(str_assetName) + String(str_labelTopToName.prefix(6)))),
                                 //: (str3, "me_min_voice_call"),
                                 (str3, (String(str_centerName) + String(str_searchValue))),
                                 //: (str4, "me_min_video_call")]
                                 (str4, (String(str_listName.prefix(6)) + "_vid" + str_conditionData.replacingOccurrences(of: "image", with: "e") + String(str_legacyText)))]
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWalletViewController: UITableViewDelegate, UITableViewDataSource {
extension EmptyRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return section1Data.count
        return section1Data.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
        let cell = tableView.dequeueReusableCell(withIdentifier: PrincipalReactiveCompatible.className(), for: indexPath) as! PrincipalReactiveCompatible
        //: let data = self.section1Data[indexPath.row]
        let data = self.section1Data[indexPath.row]
        //: let isLast = self.section1Data.count == (indexPath.row + 1)
        let isLast = self.section1Data.count == (indexPath.row + 1)
        //: cell.setViewData(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        cell.equalInformation(title: data.0, icon: data.1, row: indexPath.row, isLast: isLast)
        //: cell.setpurchaseBtn()
        cell.listEdition()
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: "&type=1")
            LeadingEqualReactiveCompatible.share.squash(appendParams: (String(str_resumeToName)))
            //: } else if indexPath.row == 1 {
        } else if indexPath.row == 1 {
            //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: "&type=2")
            LeadingEqualReactiveCompatible.share.squash(appendParams: (String(str_formatName.prefix(6)) + String(str_cellEqualTitle)))
            //: } else if indexPath.row == 2 {
        } else if indexPath.row == 2 {
            //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: "&type=4")
            LeadingEqualReactiveCompatible.share.squash(appendParams: (String(str_editText.suffix(7))))
            //: } else if indexPath.row == 3 {
        } else if indexPath.row == 3 {
            //: LeadingEqualReactiveCompatible.share.func__pushToRechargeAlert(appendParams: "&type=3")
            LeadingEqualReactiveCompatible.share.squash(appendParams: (String(str_finishName)))
        }
    }
}
