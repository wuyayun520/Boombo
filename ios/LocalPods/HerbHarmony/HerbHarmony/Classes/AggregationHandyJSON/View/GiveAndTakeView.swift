
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_kindMakeValue:[UInt8] = [0x6b,0x70,0x6b,0x76,0x2a,0x65,0x71,0x66,0x67,0x74,0x3c,0x2b,0x22,0x6a,0x63,0x75,0x22,0x70,0x71,0x76,0x22,0x64,0x67,0x67,0x70,0x22,0x6b,0x6f,0x72,0x6e,0x67,0x6f,0x67,0x70,0x76,0x67,0x66]

fileprivate func makeListLast(visual num: UInt8) -> UInt8 {
    let value = Int(num) + 254
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let str_screenName:[Character] = ["b","g","_","m","e","s","s","a","g","e","_","t","o","p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiveAndTakeView.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/2/17.
//

//: import UIKit
import UIKit

//: class ILikeListView: UIView {
class GiveAndTakeView: UIView {
    /// 数据
    //: private lazy var dataArr = [ILikeListModel]()
    private lazy var dataArr = [ListLeadingHandyJSON]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: layer.masksToBounds = true
        layer.masksToBounds = true
        //: setupSubviews()
        nothings()
        //: setupSubViewsConstraint()
        tillButton()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_kindMakeValue.map{makeListLast(visual: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView()
        let colorV = UIImageView()
        //: colorV.image = UIImage.nearCounterval(name: "bg_message_top")
        colorV.image = UIImage.nearCounterval(name: (String(str_screenName)))
        //: colorV.contentMode = .scaleAspectFill
        colorV.contentMode = .scaleAspectFill
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: layout.itemSize = CGSize(width: 70, height: 90)
        layout.itemSize = CGSize(width: 70, height: 90)
        //: layout.minimumLineSpacing = 8
        layout.minimumLineSpacing = 8
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)

        //: let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.register(ILikeListViewItemCell.self, forCellWithReuseIdentifier: ILikeListViewItemCell.className())
        collectionView.register(HandleReusableView.self, forCellWithReuseIdentifier: HandleReusableView.className())
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension ILikeListView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension GiveAndTakeView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ILikeListViewItemCell.className(), for: indexPath) as! ILikeListViewItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HandleReusableView.className(), for: indexPath) as! HandleReusableView
        //: if indexPath.row < dataArr.count {
        if indexPath.row < dataArr.count {
            //: cell.refreshItem(dataArr[indexPath.row])
            cell.turn(dataArr[indexPath.row])
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }
        //: let model = dataArr[indexPath.row]
        let model = dataArr[indexPath.row]
        //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: model.uid)
        LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: model.uid)
    }
}

// MARK: - Event

//: extension ILikeListView {
extension GiveAndTakeView {
    /// 刷新I Like列表
    //: func refreshILikeList(_ models: [ILikeListModel]) {
    func stack(_ models: [ListLeadingHandyJSON]) {
        //: dataArr = models
        dataArr = models
        //: layoutIfNeeded()
        layoutIfNeeded()
        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - Layout

//: extension ILikeListView {
extension GiveAndTakeView {
    /// 添加视图
    //: private func setupSubviews() {
    private func nothings() {
        //: addSubview(colorImageView)
        addSubview(colorImageView)
        //: addSubview(collectionView)
        addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func tillButton() {
        //: colorImageView.snp.makeConstraints { make in
        colorImageView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(-kLet_likeTitle)
            make.top.equalToSuperview().offset(-kLet_likeTitle)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(100 + kLet_likeTitle)
            make.height.equalTo(100 + kLet_likeTitle)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
