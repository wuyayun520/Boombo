
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorValue:[UInt8] = [0x28,0x2d,0x28,0x33,0xe7,0x22,0x2e,0x23,0x24,0x31,0xf9,0xe8,0xdf,0x27,0x20,0x32,0xdf,0x2d,0x2e,0x33,0xdf,0x21,0x24,0x24,0x2d,0xdf,0x28,0x2c,0x2f,0x2b,0x24,0x2c,0x24,0x2d,0x33,0x24,0x23]

fileprivate func maxLabel(icon num: UInt8) -> UInt8 {
    let value = Int(num) - 191
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_daily_todayBg_nor" :*/
fileprivate let str_currentValue:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o"]
fileprivate let str_disappearName:String = "dayBghidden live"

/*: "btn_daily_style1_nor" :*/
fileprivate let str_modelValue:String = "btn_dshared make true"
fileprivate let str_equalViewContent:String = "stmomentl"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let str_targetValue:String = "tab"
fileprivate let str_dataLayerComponentValue:[Character] = ["t","n","_","d","a","i","l","y","_","t","o","d","a","y","L","i","g","h","t","_","n","o","r"]

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let str_managerData:String = "btn_daiequal green"
fileprivate let str_spaceLiteData:String = "error"
fileprivate let str_indexName:String = "y_noapp self"
fileprivate let str_upModelTitle:String = "In_nortarget white view self return"

/*: "btn_daily_signIn_nor" :*/
fileprivate let str_colorText:[Character] = ["b","t"]
fileprivate let str_layerCurrentValue:[Character] = ["n","_","d","a","i","l","y","_","s","i","g","n","I","n","_","n","o","r"]

/*: "btn_daily_today_nor" :*/
fileprivate let str_stopPlayerContent:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o","d"]
fileprivate let str_viewData:String = "ay_norbackground least behind number content"

/*: "#FF8F1A" :*/
fileprivate let str_houseContent:[Character] = ["#","F","F","8","F","1","A"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class EqualThen: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorValue.map{maxLabel(icon: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.userDoing()
        //: self.setupSubViewsConstraint()
        self.postTo()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "btn_daily_todayBg_nor")
        img.image = UIImage.nearCounterval(name: (String(str_currentValue) + String(str_disappearName.prefix(5)) + "_nor"))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "btn_daily_style1_nor")
        img.image = UIImage.nearCounterval(name: (String(str_modelValue.prefix(5)) + "aily_" + str_equalViewContent.replacingOccurrences(of: "moment", with: "y") + "e1_nor"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "btn_daily_todayLight_nor")
        img.image = UIImage.nearCounterval(name: (str_targetValue.replacingOccurrences(of: "tab", with: "b") + String(str_dataLayerComponentValue)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.behindUpRoom(fontSize: 14)
        lab.font = UIFont.behindUpRoom(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension EqualThen {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func restoreToPtolemaicSystem(model: ExtraThen) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.unprecedented(fontSize: 17)
        dayLab.font = UIFont.unprecedented(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.nearCounterval(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.nearCounterval(name: (String(str_managerData.prefix(7)) + str_spaceLiteData.replacingOccurrences(of: "error", with: "l") + String(str_indexName.prefix(4)) + "tSign" + String(str_upModelTitle.prefix(6))))
            //: dayLab.textColor = UIColor.inexpensiveness()
            dayLab.textColor = UIColor.inexpensiveness()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.nearCounterval(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.nearCounterval(name: (String(str_colorText) + String(str_layerCurrentValue)))
            //: dayLab.textColor = UIColor.inexpensiveness()
            dayLab.textColor = UIColor.inexpensiveness()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.nearCounterval(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.nearCounterval(name: (String(str_stopPlayerContent) + String(str_viewData.prefix(6))))
            //: dayLab.font = UIFont.behindUpRoom(fontSize: 17)
            dayLab.font = UIFont.behindUpRoom(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(str_houseContent)))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.nearCounterval(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.nearCounterval(name: (String(str_stopPlayerContent) + String(str_viewData.prefix(6))))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.colorPush()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension EqualThen {
    // 添加视图
    //: private func setupSubviews() {
    private func userDoing() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func postTo() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
