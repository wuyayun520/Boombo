
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_releaseLayerContent:[UInt8] = [0x55,0x52,0x55,0x48,0x14,0x5f,0x53,0x58,0x59,0x4e,0x6,0x15,0x1c,0x54,0x5d,0x4f,0x1c,0x52,0x53,0x48,0x1c,0x5e,0x59,0x59,0x52,0x1c,0x55,0x51,0x4c,0x50,0x59,0x51,0x59,0x52,0x48,0x59,0x58]

private func viewVideo(array num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "icon_translation_go" :*/
fileprivate let str_backgroundText:String = "icon_tvalue in data"
fileprivate let str_requestCellData:String = "femaleio"
fileprivate let str_effectDoinglyContent:[Character] = ["n","_","g","o"]

/*: "#EAE8FE" :*/
fileprivate let str_resultName:[Character] = ["#","E","A","E","8","F","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StandardReactiveCompatible.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class StandardReactiveCompatible: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        inheritance()
        //: setupSubViewsConstraint()
        someEqual()
        //: bindInteraction()
        field()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_releaseLayerContent.map{viewVideo(array: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.alright()
        lab.textColor = UIColor.alright()
        //: lab.font = UIFont.unprecedented(fontSize: 16)
        lab.font = UIFont.unprecedented(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.nearCounterval(name: "icon_translation_go").withTintColor(.alright())
        img.image = UIImage.nearCounterval(name: (String(str_backgroundText.prefix(6)) + "ransl" + str_requestCellData.replacingOccurrences(of: "female", with: "at") + String(str_effectDoinglyContent))).withTintColor(.alright())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension StandardReactiveCompatible {
    /// 刷新视图
    //: func refresh(_ model: CoverThen) {
    func lockBarError(_ model: CoverThen) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func subOf(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension StandardReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func inheritance() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: (String(str_resultName)))
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.alright().cgColor
        layer.borderColor = UIColor.alright().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func someEqual() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func field() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(subOf))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
