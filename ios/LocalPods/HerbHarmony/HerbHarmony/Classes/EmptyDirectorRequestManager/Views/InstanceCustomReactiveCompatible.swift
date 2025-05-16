
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_rawData:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

private func hiddenMake(info num: UInt8) -> UInt8 {
    return num ^ 217
}

/*: "icon_kong_kong_default" :*/
fileprivate let str_callModelData:[Character] = ["i","c","o","n","_","k"]
fileprivate let str_createViewText:String = "ong_become color label true on"
fileprivate let str_splitName:String = "efdatalt"

/*: "You've got no list yet." :*/
fileprivate let str_colorShadowTitle:String = "You\'"
fileprivate let str_modelName:[Character] = ["o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InstanceCustomReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class InstanceCustomReactiveCompatible: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_rawData.map{hiddenMake(info: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.liveTopSubviews()
        //: self.setupSubViewsConstraint()
        self.setupBackConstraint()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearCounterval(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.nearCounterval(name: (String(str_callModelData) + String(str_createViewText.prefix(4)) + "kong_d" + str_splitName.replacingOccurrences(of: "data", with: "au"))))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.inexpensiveness()
        lab.textColor = UIColor.inexpensiveness()
        //: lab.font = .liveAttention(type: .Regular, fontSize: 16)
        lab.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (str_colorShadowTitle + "ve g" + String(str_modelName)).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension InstanceCustomReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func liveTopSubviews() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupBackConstraint() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(kLet_indexText)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
