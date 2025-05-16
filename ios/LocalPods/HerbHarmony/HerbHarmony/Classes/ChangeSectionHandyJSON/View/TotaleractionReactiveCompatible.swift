
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nearText:[UInt8] = [0xab,0xac,0xab,0xb6,0xea,0xa1,0xad,0xa6,0xa7,0xb0,0xf8,0xeb,0xe2,0xaa,0xa3,0xb1,0xe2,0xac,0xad,0xb6,0xe2,0xa0,0xa7,0xa7,0xac,0xe2,0xab,0xaf,0xb2,0xae,0xa7,0xaf,0xa7,0xac,0xb6,0xa7,0xa6]

private func withFrame(map num: UInt8) -> UInt8 {
    return num ^ 194
}

/*: "Are you sure you want to delete the video?" :*/
fileprivate let str_playerName:[UInt8] = [0x3f,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x68,0x74,0x20,0x65,0x74,0x65,0x6c,0x65,0x64,0x20,0x6f,0x74,0x20,0x74,0x6e,0x61,0x77,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x75,0x73,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x41]

/*: "Cancel" :*/
fileprivate let str_checkBackgroundName:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let str_picNameValue:[Character] = ["O","K"]

/*: "btn_moment_pic_add" :*/
fileprivate let str_followingData:[Character] = ["b","t","n","_","m","o","m","e","n","t"]
fileprivate let str_searchTitle:String = "if let share_pic_add"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TotaleractionReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: protocol FreeCollectionViewDelegate: NSObjectProtocol {
protocol BridgeObjectProtocol: NSObjectProtocol {
    /// 添加图片
    //: func needSelectReleaseImages()
    func cancel()
    /// 展示当前选中图片
    /// - Parameter index: 索引
    //: func needShowCurrentImage(index: IndexPath)
    func sizeFor(index: IndexPath)
    /// 展示当前选中视频
    //: func needShowCurrentVideo()
    func tv()
}

//: class FreeCollectionView: UICollectionView {
class TotaleractionReactiveCompatible: UICollectionView {
    // 最大选中图片数
    //: var MaxImagesCount = 9
    var MaxImagesCount = 9
    //: var deleteActionBlock: (() -> Void)?
    var deleteActionBlock: (() -> Void)? // 删除按钮
    //: weak var delegte: FreeCollectionViewDelegate?
    weak var delegte: BridgeObjectProtocol?
    //: var headerView: FreeCollectionHeaderView?
    var headerView: AlongView?
    //: var contentType: MomentType?
    var contentType: StackClusterLiteral?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nearText.map{withFrame(map: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let flowLayout = UICollectionViewFlowLayout()
        let flowLayout = UICollectionViewFlowLayout()
        //: flowLayout.sectionInset = UIEdgeInsets(top: 0,
        flowLayout.sectionInset = UIEdgeInsets(top: 0,
                                               //: left: 15,
                                               left: 15,
                                               //: bottom: 0,
                                               bottom: 0,
                                               //: right: ScreenWidth-FreeCollectionViewCell_width*3-15-7*2)
                                               right: kLet_senseContent - kLet_viewText * 3 - 15 - 7 * 2)
        //: flowLayout.minimumLineSpacing = 7
        flowLayout.minimumLineSpacing = 7
        //: flowLayout.minimumInteritemSpacing = 7
        flowLayout.minimumInteritemSpacing = 7
        //: flowLayout.headerReferenceSize = CGSize(width: ScreenWidth, height: actualWidth(w: 240+22))
        flowLayout.headerReferenceSize = CGSize(width: kLet_senseContent, height: actualWidth(w: 240 + 22))
        //: flowLayout.footerReferenceSize = CGSize(width: ScreenWidth, height: actualWidth(w: 56))
        flowLayout.footerReferenceSize = CGSize(width: kLet_senseContent, height: actualWidth(w: 56))
        //: super.init(frame: frame, collectionViewLayout: flowLayout)
        super.init(frame: frame, collectionViewLayout: flowLayout)
        //: createUI()
        executeUi()
    }

    // MARK: - UI

    //: private func createUI() {
    private func executeUi() {
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.isScrollEnabled = false
        self.isScrollEnabled = false
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.register(FreeCollectionViewCell.self, forCellWithReuseIdentifier: FreeCollectionViewCell.className())
        self.register(VocalismViewCell.self, forCellWithReuseIdentifier: VocalismViewCell.className())
        //: self.register(FreeCollectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FreeCollectionHeaderView.className())
        self.register(AlongView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AlongView.className())
        //: self.register(FreeCollectionFooterView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FreeCollectionFooterView.className())
        self.register(StigmatizeReactiveCompatible.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: StigmatizeReactiveCompatible.className())
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self

        // 长按拖拽
        //: let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressMethod(gestureRecongnizer:)))
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(equalMessage(gestureRecongnizer:)))
        //: longPress.delegate = self
        longPress.delegate = self
        //: longPress.minimumPressDuration = 0.3
        longPress.minimumPressDuration = 0.3
        //: self.addGestureRecognizer(longPress)
        self.addGestureRecognizer(longPress)
        // 点击手势
        //: let tapGesture = UITapGestureRecognizer(target: self, action: #selector(closeKeyBoard))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(videoItem))
        //: tapGesture.cancelsTouchesInView = false
        tapGesture.cancelsTouchesInView = false
        //: self.addGestureRecognizer(tapGesture)
        self.addGestureRecognizer(tapGesture)
    }

    // MARK: - Lazy load

    //: lazy var imageArray: Array = {
    lazy var imageArray: Array = //: return [UIImage]()
        [UIImage]()
    //: }()
}

// MARK: - 手势

//: extension FreeCollectionView: UIGestureRecognizerDelegate {
extension TotaleractionReactiveCompatible: UIGestureRecognizerDelegate {
    //: @objc func closeKeyBoard() {
    @objc func videoItem() {
        //: self.endEditing(true)
        self.endEditing(true)
    }

    //: @objc func longPressMethod(gestureRecongnizer: UILongPressGestureRecognizer) {
    @objc func equalMessage(gestureRecongnizer: UILongPressGestureRecognizer) {
        //: let point = gestureRecongnizer.location(in: self)
        let point = gestureRecongnizer.location(in: self)
        //: switch gestureRecongnizer.state {
        switch gestureRecongnizer.state {
        //: case .began:
        case .began:
            //: dragBegin(point: point)
            equalBlock(point: point)
        //: case .changed:
        case .changed:
            //: dragBegin(point: point)
            equalBlock(point: point)
        //: case .ended:
        case .ended:
            //: dragEnd(point: point)
            spread(point: point)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 开始拖拽
    //: func dragBegin(point: CGPoint) {
    func equalBlock(point _: CGPoint) {}

    /// 正在拖拽
    //: func dragChange(point: CGPoint) {
    func pullAlong(point _: CGPoint) {}

    /// 结束拖拽
    //: func dragEnd(point: CGPoint) {
    func spread(point _: CGPoint) {}
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate

//: extension FreeCollectionView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
extension TotaleractionReactiveCompatible: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: if imageArray.count < MaxImagesCount {
        if imageArray.count < MaxImagesCount {
            //: return imageArray.count + 1
            return imageArray.count + 1
        }
        //: return imageArray.count
        return imageArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FreeCollectionViewCell.className(), for: indexPath) as! FreeCollectionViewCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VocalismViewCell.className(), for: indexPath) as! VocalismViewCell
        //: cell.deleteBlock = {
        cell.deleteBlock = { // 删除操作
            //: if indexPath.row < self.imageArray.count {
            if indexPath.row < self.imageArray.count {
                //: if self.contentType == .Video {
                if self.contentType == .Video {
                    //: TalkingAlertShow.alert(title: nil,
                    VoiceAlertShow.enablelineMedium(title: nil,
                                                      //: message: "Are you sure you want to delete the video?".localized,
                                                      message: String(bytes: str_playerName.reversed(), encoding: .utf8)!.localized,
                                                      //: leftBtnTitle: "Cancel".localized,
                                                      leftBtnTitle: (String(str_checkBackgroundName)).localized,
                                                      //: rightBtnTitle: "OK".localized) {
                                                      rightBtnTitle: "OK".localized)
                    {
                        //: TalkingAlertShow.hideAlert()
                        VoiceAlertShow.bias()
                        //: return
                        //: } rightBlock: {
                    } rightBlock: {
                        //: TalkingAlertShow.hideAlert()
                        VoiceAlertShow.bias()
                        //: if self.deleteActionBlock != nil {
                        if self.deleteActionBlock != nil {
                            //: self.imageArray.remove(at: indexPath.row)
                            self.imageArray.remove(at: indexPath.row)
                            //: self.reloadData()
                            self.reloadData()
                            //: self.deleteActionBlock!()
                            self.deleteActionBlock!()
                        }
                    }
                    //: }else {
                } else {
                    //: if self.deleteActionBlock != nil {
                    if self.deleteActionBlock != nil {
                        //: self.imageArray.remove(at: indexPath.row)
                        self.imageArray.remove(at: indexPath.row)
                        //: self.reloadData()
                        self.reloadData()
                        //: self.deleteActionBlock!()
                        self.deleteActionBlock!()
                    }
                }
            }
        }
        //: if imageArray.count < MaxImagesCount && indexPath.row == imageArray.count {
        if imageArray.count < MaxImagesCount && indexPath.row == imageArray.count { // 添加按钮
            //: cell.releaseImageView.image = UIImage.nearCounterval(name: "btn_moment_pic_add")
            cell.releaseImageView.image = UIImage.nearCounterval(name: (String(str_followingData) + String(str_searchTitle.suffix(8))))
            //: cell.deleteBtn.isHidden = true
            cell.deleteBtn.isHidden = true
            //: cell.playimageView.isHidden = true
            cell.playimageView.isHidden = true
            //: } else {
        } else {
            //: let image = imageArray[indexPath.row].withRenderingMode(.automatic)
            let image = imageArray[indexPath.row].withRenderingMode(.automatic)
            //: cell.releaseImageView.image = image
            cell.releaseImageView.image = image
            //: cell.deleteBtn.isHidden = false
            cell.deleteBtn.isHidden = false

            //: if contentType == .Video {
            if contentType == .Video {
                //: cell.playimageView.isHidden = false
                cell.playimageView.isHidden = false
                //: }else {
            } else {
                //: cell.playimageView.isHidden = true
                cell.playimageView.isHidden = true
            }
        }

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }

        //: if kind == UICollectionView.elementKindSectionHeader {
        if kind == UICollectionView.elementKindSectionHeader {
            //: headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FreeCollectionHeaderView.className(), for: indexPath) as? FreeCollectionHeaderView
            headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AlongView.className(), for: indexPath) as? AlongView
            //: return headerView!
            return headerView!
            //: } else {
        } else {
            //: let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FreeCollectionFooterView.className(), for: indexPath) as! FreeCollectionFooterView
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: StigmatizeReactiveCompatible.className(), for: indexPath) as! StigmatizeReactiveCompatible
            //: return footerView
            return footerView
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if imageArray.count < MaxImagesCount && indexPath.row == imageArray.count {
        if imageArray.count < MaxImagesCount && indexPath.row == imageArray.count { // 添加图片
            //: self.delegte?.needSelectReleaseImages()
            self.delegte?.cancel()
            //: } else {
        } else {
            //: if contentType == .Video {
            if contentType == .Video {
                //: self.delegte?.needShowCurrentVideo()
                self.delegte?.tv()
                //: }else {
            } else {
                //: self.delegte?.needShowCurrentImage(index: indexPath)
                self.delegte?.sizeFor(index: indexPath)
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: if contentType == .Video {
        if contentType == .Video {
            //: return CGSize(width: 100, height: 120)
            return CGSize(width: 100, height: 120)
            //: }else {
        } else {
            //: return CGSize(width: FreeCollectionViewCell_width, height: FreeCollectionViewCell_width)
            return CGSize(width: kLet_viewText, height: kLet_viewText)
        }
    }
}
