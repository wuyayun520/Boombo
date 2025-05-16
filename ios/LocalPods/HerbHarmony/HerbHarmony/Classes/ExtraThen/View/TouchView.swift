
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_inputValue:[UInt8] = [0xcb,0xcc,0xcb,0xd6,0x8a,0xc1,0xcd,0xc6,0xc7,0xd0,0x98,0x8b,0x82,0xca,0xc3,0xd1,0x82,0xcc,0xcd,0xd6,0x82,0xc0,0xc7,0xc7,0xcc,0x82,0xcb,0xcf,0xd2,0xce,0xc7,0xcf,0xc7,0xcc,0xd6,0xc7,0xc6]

private func letMode(succeed num: UInt8) -> UInt8 {
    return num ^ 162
}

/*: "Sun" :*/
fileprivate let str_applicationText:String = "data quantitySun"

/*: "Mon" :*/
fileprivate let str_sizeValue:String = "press self bar if managerMon"

/*: "Tue" :*/
fileprivate let str_cornerValue:[Character] = ["T","u","e"]

/*: "Wed" :*/
fileprivate let str_countName:[Character] = ["W","e","d"]

/*: "Thu" :*/
fileprivate let str_lineContentName:[Character] = ["T","h","u"]

/*: "Fri" :*/
fileprivate let str_infoShareCornerTitle:String = "var make type blockFri"

/*: "Sat" :*/
fileprivate let str_ofTitle:[Character] = ["S","a","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let kLet_screenValue = actualWidth(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class TouchView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_inputValue.map{letMode(succeed: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.indexEnable()
        //: self.setupSubViewsConstraint()
        self.object()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.behindUpRoom(fontSize: 18)
        lab.font = UIFont.behindUpRoom(fontSize: 18)
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        [(String(str_applicationText.suffix(3))), (String(str_sizeValue.suffix(3))), (String(str_cornerValue)), (String(str_countName)), (String(str_lineContentName)), (String(str_infoShareCornerTitle.suffix(3))), (String(str_ofTitle))]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension TouchView {
    // 添加视图
    //: private func setupSubviews() {
    private func indexEnable() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.corners(width: kLet_senseContent, height: kLet_screenValue, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.occurrence()
            lab.textColor = UIColor.occurrence()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.unprecedented(fontSize: 16)
            lab.font = UIFont.unprecedented(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = kLet_senseContent / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(actualWidth(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func object() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(actualWidth(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
