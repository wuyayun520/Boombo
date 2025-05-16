
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_leadingTitle:[UInt8] = [0x3f,0x38,0x3f,0x22,0x7e,0x35,0x39,0x32,0x33,0x24,0x6c,0x7f,0x76,0x3e,0x37,0x25,0x76,0x38,0x39,0x22,0x76,0x34,0x33,0x33,0x38,0x76,0x3f,0x3b,0x26,0x3a,0x33,0x3b,0x33,0x38,0x22,0x33,0x32]

private func errorAction(stage num: UInt8) -> UInt8 {
    return num ^ 86
}

/*: "HandbasketReactiveCompatible" :*/
fileprivate let str_textTitle:String = "Talkmanager empty base self view"
fileprivate let str_scaleTitle:[Character] = ["m","e","n","t","P","h","o"]
fileprivate let str_titleContent:String = "equal if nametosCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverLeadingThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosView: UICollectionView {
class CoverLeadingThen: UICollectionView {
    //: var  cunrrenModel  = TalkingMomentModel()
    var cunrrenModel = ModelHandyJSON()
    //: var isMyhost = false
    var isMyhost = false

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let flayout = UICollectionViewFlowLayout.init()
        let flayout = UICollectionViewFlowLayout()
        //: super.init(frame: frame, collectionViewLayout: flayout)
        super.init(frame: frame, collectionViewLayout: flayout)
        //: setupSubviews()
        sectionFor()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_leadingTitle.map{errorAction(stage: $0)}, encoding: .utf8)!)
    }

    //: func configModel(model: TalkingMomentModel) {
    func framework(model: ModelHandyJSON) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: self.reloadData()
        self.reloadData()
    }
}

// MARK: - UICollectionViewDelegate

//: extension TalkingMomentPhotosView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension CoverLeadingThen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, insetForSectionAt _: Int) -> UIEdgeInsets {
        //: if cunrrenModel.pic.count == 4 {
        if cunrrenModel.pic.count == 4 {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 12)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 12)
            //: } else if (cunrrenModel.pic.count == 1) {
        } else if cunrrenModel.pic.count == 1 {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: ScreenWidth-200-30)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: ScreenWidth - 200 - 30)

            //: } else {
        } else {
            //: return UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 12)
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 12)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: if cunrrenModel.pic.count == 1 {
        if cunrrenModel.pic.count == 1 {
            //: return CGSize.init(width: 200, height: 200)
            return CGSize(width: 200, height: 200)
            //: } else {
        } else {
            //: var width = isMyhost ? (ScreenWidth-30-24-30)/3 : (ScreenWidth-30-24)/3
            var width = isMyhost ? (ScreenWidth - 30 - 24 - 30) / 3 : (ScreenWidth - 30 - 24) / 3
            //: return CGSize.init(width: width, height: width)
            return CGSize(width: width, height: width)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection _: Int) -> CGSize {
        //: return CGSize.init(width: ScreenWidth, height: 1)
        return CGSize(width: ScreenWidth, height: 1)
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumLineSpacingForSectionAt _: Int) -> CGFloat {
        //: return 6
        return 6
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, minimumInteritemSpacingForSectionAt _: Int) -> CGFloat {
        //: return 6
        return 6
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return cunrrenModel.pic.count
        return cunrrenModel.pic.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingMomentPhotosCell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingMomentPhotosCell", for: indexPath) as! TalkingMomentPhotosCell
        let cell: HandbasketReactiveCompatible = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_textTitle.prefix(4)) + "ingMo" + String(str_scaleTitle) + String(str_titleContent.suffix(7))), for: indexPath) as! HandbasketReactiveCompatible
        //: let model: TalkingMomentPhotoModel = cunrrenModel.pic[indexPath.row]
        let model: ClimaxModelType = cunrrenModel.pic[indexPath.row]
        //: cell.configUrl(url: model.thumbUrl ?? "")
        cell.visualImageUrl(url: model.thumbUrl ?? "")
        //: if indexPath.item == 0 && cunrrenModel.pinStatus {
        if indexPath.item == 0 && cunrrenModel.pinStatus {
            //: cell.setTopImage()
            cell.labSave()
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let vc =  TalkingMomentPhotosVC.init(momentModel: cunrrenModel, index: indexPath.row, type: .normal)
        let vc = CountryViewController(momentModel: cunrrenModel, index: indexPath.row, type: .normal)
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.actionController()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - LayoutUI

//: extension TalkingMomentPhotosView {
extension CoverLeadingThen {
    // 添加视图
    //: private func setupSubviews() {
    private func sectionFor() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: register(TalkingMomentPhotosCell.self, forCellWithReuseIdentifier: "TalkingMomentPhotosCell")
        register(HandbasketReactiveCompatible.self, forCellWithReuseIdentifier: (String(str_textTitle.prefix(4)) + "ingMo" + String(str_scaleTitle) + String(str_titleContent.suffix(7))))
        //: dataSource = self
        dataSource = self
        //: delegate = self
        delegate = self
        //: isScrollEnabled = false
        isScrollEnabled = false
    }
}
