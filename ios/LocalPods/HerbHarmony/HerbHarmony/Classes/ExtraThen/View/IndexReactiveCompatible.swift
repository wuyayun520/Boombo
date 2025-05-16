
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_rowName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_faceverification_guide_ok" :*/
fileprivate let str_playerToName:String = "icosection"
fileprivate let str_whiteText:String = "ebuttonific"
fileprivate let str_withoutData:String = "_guidmodel model"
fileprivate let str_equalTitle:String = "style dynamic bind application playere_ok"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let str_playerName:[UInt8] = [0x2e,0x77,0x65,0x69,0x76,0x65,0x72,0x20,0x72,0x6f,0x66,0x20,0x79,0x6c,0x74,0x6e,0x65,0x69,0x74,0x61,0x70,0x20,0xa,0x20,0x74,0x69,0x61,0x77,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x79,0x6c,0x6c,0x75,0x66,0x73,0x73,0x65,0x63,0x63,0x75,0x73,0x20,0x64,0x65,0x74,0x74,0x69,0x6d,0x62,0x75,0x53]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class IndexReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        infoEqual()
        //: layoutSubViewsConstraints()
        afterConstraints()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_rowName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.nearCounterval(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.nearCounterval(name: (str_playerToName.replacingOccurrences(of: "section", with: "n") + "_facev" + str_whiteText.replacingOccurrences(of: "button", with: "r") + "ation" + String(str_withoutData.prefix(5)) + String(str_equalTitle.suffix(4))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: str_playerName.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .occurrence()
        lb.textColor = .occurrence()
        //: lb.font = .liveAttention(type: .Regular, fontSize: 18)
        lb.font = .liveAttention(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension IndexReactiveCompatible {
    //: func createSubViews() {
    func infoEqual() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func afterConstraints() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
