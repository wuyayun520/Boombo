
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_recordInstanceName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_wallet" :*/
fileprivate let str_limitTitle:String = "let domainicon_"
fileprivate let str_labCreateText:String = "count"

/*: "icon_me_dgc" :*/
fileprivate let str_modeContent:String = "icon_model result return"

/*: "icon_me_friends" :*/
fileprivate let str_indexData:String = "ICON"
fileprivate let str_kingTabValue:String = "modelen"
fileprivate let str_resultName:String = "dnumber"

/*: "xicon_me_posts" :*/
fileprivate let str_tableName:String = "xicpath"
fileprivate let str_toValue:String = "framets"

/*: "icon_me_Service" :*/
fileprivate let str_imageAssetData:String = "ICO"
fileprivate let str_modeTitle:[Character] = ["n","_","m","e","_","S","e","r","v","i","c","e"]

/*: "icon_me_game" :*/
fileprivate let str_mName:String = "centercon"
fileprivate let str_instanceValue:[Character] = ["a","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class InfoThen: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(TagContiguousBytes, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        dataConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_recordInstanceName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(SubmitReusableView.self, forCellWithReuseIdentifier: SubmitReusableView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension InfoThen {
    //: func setViewData() {
    func belowText() {
        //: if WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue { // 默认模式
            //: if WithAdministratorAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(str_limitTitle.suffix(5)) + "me_walle" + str_labCreateText.replacingOccurrences(of: "count", with: "t"))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(str_modeContent.prefix(5)) + "me_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (str_indexData.lowercased() + "_me_f" + str_kingTabValue.replacingOccurrences(of: "model", with: "ri") + str_resultName.replacingOccurrences(of: "number", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (str_tableName.replacingOccurrences(of: "path", with: "o") + "n_me_p" + str_toValue.replacingOccurrences(of: "frame", with: "os"))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (str_imageAssetData.lowercased() + String(str_modeTitle)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(str_modeContent.prefix(5)) + "me_dgc")),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (str_indexData.lowercased() + "_me_f" + str_kingTabValue.replacingOccurrences(of: "model", with: "ri") + str_resultName.replacingOccurrences(of: "number", with: "s"))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (str_tableName.replacingOccurrences(of: "path", with: "o") + "n_me_p" + str_toValue.replacingOccurrences(of: "frame", with: "os"))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (str_imageAssetData.lowercased() + String(str_modeTitle)))]
            }
            // 游戏入口
            //: if WithAdministratorAppManager.share.appUserConfigMode.gameShowBit == 1 ||
            if WithAdministratorAppManager.share.appUserConfigMode.gameShowBit == 1 ||
                //: WithAdministratorAppManager.share.appUserConfigMode.gameShowBit == 3 {
                WithAdministratorAppManager.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Game, "icon_me_game"))
                tupleData.append((.My_Game, (str_mName.replacingOccurrences(of: "center", with: "i") + "_me_g" + String(str_instanceValue))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(str_modeContent.prefix(5)) + "me_dgc")),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (str_tableName.replacingOccurrences(of: "path", with: "o") + "n_me_p" + str_toValue.replacingOccurrences(of: "frame", with: "os"))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (str_imageAssetData.lowercased() + String(str_modeTitle)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        titleProduce()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension InfoThen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SubmitReusableView.className(), for: indexPath) as! SubmitReusableView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.digitizerCard(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: LeadingEqualReactiveCompatible.share.func__pushToSubscribePageWebVC()
            LeadingEqualReactiveCompatible.share.numberimateVc()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .InviteFriends)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: WithAdministratorAppManager.share.loginUserMode.userID)
            let vc = DataSignViewController(uid: WithAdministratorAppManager.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.actionController()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: LeadingEqualReactiveCompatible.share.func__pushToWebVC(webViewType: .FAQ)
            LeadingEqualReactiveCompatible.share.enableLine(webViewType: .FAQ)

        //: case .My_Game:
        case .My_Game:
            //: let vc = TalkingGameListViewController()
            let vc = EndowViewDelegate()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.actionController()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (kLet_senseContent - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension InfoThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func dataConstraint() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func titleProduce() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - SubmitReusableView

//: class TalkingMeItemCell: UICollectionViewCell {
class SubmitReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_recordInstanceName.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func digitizerCard(_ data: (TagContiguousBytes, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.nearCounterval(name: data.1)
        icon.image = UIImage.nearCounterval(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = .liveAttention(type: .Regular, fontSize: 14)
        lab.font = .liveAttention(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
