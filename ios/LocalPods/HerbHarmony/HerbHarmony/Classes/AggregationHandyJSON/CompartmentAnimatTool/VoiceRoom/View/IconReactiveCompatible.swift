
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_existData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#FA9D33" :*/
fileprivate let str_wrapTitle:[Character] = ["#","F","A","9","D","3","3"]

/*: "gift_icon_nodata" :*/
fileprivate let str_imageWillName:[Character] = ["g","i","f","t","_","i","c","o","n","_","n"]
fileprivate let str_managerData:String = "odlabela"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IconReactiveCompatible.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/10/8.
//

//: import UIKit
import UIKit

/// 视图高度
//: let TalkingVoiceRoomIconGiftView_H = 70.0
let kLet_marginTitle = 70.0

//: class TalkingVoiceRoomIconGiftView: UIView {
class IconReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        targetDown()
        //: setupSubViewsConstraint()
        presentImage()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_existData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: lazy var collectionView: UICollectionView = {
    lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.contentInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 4, bottom: 0, right: 0)
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.register(TalkingVoiceRoomIconGiftItemCell.self, forCellWithReuseIdentifier: TalkingVoiceRoomIconGiftItemCell.className())
        collectionView.register(StartTitleThen.self, forCellWithReuseIdentifier: StartTitleThen.className())
        //: collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.contentInsetAdjustmentBehavior = .never
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor(hex: "#FA9D33")
        swit.onTintColor = UIColor(hex: (String(str_wrapTitle)))
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(viewTitle), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()

    //: private lazy var noDataView: UIImageView = {
    private lazy var noDataView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.nearCounterval(name: "gift_icon_nodata")
        v.image = UIImage.nearCounterval(name: (String(str_imageWillName) + str_managerData.replacingOccurrences(of: "label", with: "at")))
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomIconGiftView {
extension IconReactiveCompatible {
    /// 全选开关事件
    //: @objc private func switchDidChange() {
    @objc private func viewTitle() {
        //: refreshAllIcon(allSelected: switchBtn.isOn)
        applicationThroughSelected(allSelected: switchBtn.isOn)
    }

    /// 全选/全不选
    /// - Parameters:
    ///   - allSelected: 全选 / 全不选
    ///   - selectedUid: 单个用户选中
    //: func refreshAllIcon(allSelected: Bool, selectedUid: String? = nil) {
    func applicationThroughSelected(allSelected: Bool, selectedUid: String? = nil) {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< kLet_domainData {
            //: if let model = TalkingVoiceRoomManager.shared().getMikePosition(key: index) {
            if let model = StackMThen.estimated().accumulationKey(key: index) {
                //: if String(model.uid) == selectedUid {
                if String(model.uid) == selectedUid {
                    //: model.needGift = true
                    model.needGift = true
                    //: } else {
                } else {
                    //: model.needGift = allSelected
                    model.needGift = allSelected
                }
                //: TalkingVoiceRoomManager.shared().modifyMikePosition(key: index, model: model)
                StackMThen.estimated().atModel(key: index, model: model)
            }
        }
        //: refreshIconView()
        keyShow()
    }

    /// 刷新视图
    //: func refreshIconView() {
    func keyShow() {
        //: var selSwitchBtn = true
        var selSwitchBtn = true // 是否选中switch按钮
        //: var hasData = false
        var hasData = false // 是否有数据
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        for (_, model) in StackMThen.estimated().imageCollectionPositions() {
            //: if model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid {
            if model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid {
                //: hasData = true
                hasData = true
                //: if model.needGift == false {
                if model.needGift == false {
                    //: selSwitchBtn = false
                    selSwitchBtn = false
                    //: return
                    continue
                }
            }
        }
        //: noDataView.isHidden = hasData
        noDataView.isHidden = hasData
        //: switchBtn.isOn = selSwitchBtn
        switchBtn.isOn = selSwitchBtn
        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomIconGiftView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension IconReactiveCompatible: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return MIKE_SEAT_COUNT
        return kLet_domainData
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingVoiceRoomIconGiftItemCell.className(), for: indexPath) as! TalkingVoiceRoomIconGiftItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StartTitleThen.className(), for: indexPath) as! StartTitleThen
        //: if let model = TalkingVoiceRoomManager.shared().getMikePosition(key: indexPath.row) {
        if let model = StackMThen.estimated().accumulationKey(key: indexPath.row) {
            //: cell.refreshIcon(position: indexPath.row, model: model)
            cell.iconKey(position: indexPath.row, model: model)
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: indexPath.row) else { return }
        guard let model = StackMThen.estimated().accumulationKey(key: indexPath.row) else { return }
        //: model.needGift = !model.needGift
        model.needGift = !model.needGift
        //: TalkingVoiceRoomManager.shared().modifyMikePosition(key: indexPath.row, model: model)
        StackMThen.estimated().atModel(key: indexPath.row, model: model)
        //: refreshIconView()
        keyShow()
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //: if let model = TalkingVoiceRoomManager.shared().getMikePosition(key: indexPath.row), model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid {
        if let model = StackMThen.estimated().accumulationKey(key: indexPath.row), model.uid > 0, String(model.uid) != WithAdministratorAppManager.share.loginUid {
            //: return CGSize(width: 50.0, height: TalkingVoiceRoomIconGiftView_H)
            return CGSize(width: 50.0, height: kLet_marginTitle)
        }
        //: return CGSize(width: 0.0, height: TalkingVoiceRoomIconGiftView_H)
        return CGSize(width: 0.0, height: kLet_marginTitle)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomIconGiftView {
extension IconReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func targetDown() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(collectionView)
        addSubview(collectionView)
        //: addSubview(switchBtn)
        addSubview(switchBtn)
        //: addSubview(noDataView)
        addSubview(noDataView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func presentImage() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.leading.bottom.equalToSuperview()
            make.top.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(switchBtn.snp.leading).offset(-8)
            make.trailing.equalTo(switchBtn.snp.leading).offset(-8)
        }

        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }

        //: noDataView.snp.makeConstraints { make in
        noDataView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
