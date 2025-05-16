
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_frameTitle:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

private func centerIndex(content num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "#E6BD8B" :*/
fileprivate let str_makeData:String = "#Eof nor if image var"
fileprivate let str_viewName:String = "6BD8Braw view self list"

/*: "+ :*/
fileprivate let str_cellText:String = "index"

/*: "get json error" :*/
fileprivate let str_sharedName:String = "G"
fileprivate let str_momentValue:String = "et jself enable true"
fileprivate let str_nearName:String = "cancelor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HandleAnimationView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/16.
//

//: import UIKit
import UIKit

//: class TalkingPointAnimationView: UIView {
class HandleAnimationView: UIView {
    //: var isPlayAnimation = false
    var isPlayAnimation = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.selected()
        //: self.setupSubViewsConstraint()
        self.channelButton()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_frameTitle.map{centerIndex(content: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: private lazy var pointSVGA: SVGAPlayer = {
    private lazy var pointSVGA: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: private lazy var pointLab: UILabel = {
    private lazy var pointLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 24)
        lab.font = UIFont.liveAttention(type: .Semibold, fontSize: 24)
        //: lab.textColor = UIColor.init(hex: "#E6BD8B")
        lab.textColor = UIColor(hex: (String(str_makeData.prefix(2)) + String(str_viewName.prefix(5))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.alpha = 0
        lab.alpha = 0
        //: return lab
        return lab
        //: }()
    }()
}

//: extension TalkingPointAnimationView {
extension HandleAnimationView {
    //: func setPointData(point: String, isminiStr: Bool = false) {
    func nameCurrent(point: String, isminiStr: Bool = false) {
        //: if isPlayAnimation { return }
        if isPlayAnimation { return }

        //: let str  = "+\(point)"
        let str = "+\(point)"
        //: let attrString = NSMutableAttributedString(string: str)
        let attrString = NSMutableAttributedString(string: str)
        //: let attributes = [.foregroundColor: UIColor.init(hex: "#E6BD8B")!, .font: UIFont.liveAttention(type: .Semibold, fontSize: isminiStr ? 15: 24)] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(str_makeData.prefix(2)) + String(str_viewName.prefix(5))))!, .font: UIFont.liveAttention(type: .Semibold, fontSize: isminiStr ? 15 : 24)] as [NSAttributedString.Key: Any]
        //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
        //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#E6BD8B")!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 14)] as [NSAttributedString.Key: Any]
        let attributes2 = [.foregroundColor: UIColor(hex: (String(str_makeData.prefix(2)) + String(str_viewName.prefix(5))))!, .font: UIFont.liveAttention(type: .Semibold, fontSize: 14)] as [NSAttributedString.Key: Any]

        /// 中间对齐
        //: if !isminiStr {
        if !isminiStr {
            //: let paStyle = NSMutableParagraphStyle()
            let paStyle = NSMutableParagraphStyle()
            //: attrString.addAttributes([.baselineOffset: 5, .paragraphStyle: paStyle], range: NSRange(location: 0, length: 1))
            attrString.addAttributes([.baselineOffset: 5, .paragraphStyle: paStyle], range: NSRange(location: 0, length: 1))
            //: attrString.addAttributes(attributes2, range: NSRange(location: 0, length: 1))
            attrString.addAttributes(attributes2, range: NSRange(location: 0, length: 1))
        }
        //: pointLab.attributedText = attrString
        pointLab.attributedText = attrString
        //: isPlayAnimation = true
        isPlayAnimation = true
        //: UIView.animate(withDuration: 0.6, delay: 0.5) { [weak self] in
        UIView.animate(withDuration: 0.6, delay: 0.5) { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pointLab.alpha = 1
            self.pointLab.alpha = 1
            //: self.pointLab.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.pointLab.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            //: }completion: { success in
        } completion: { _ in
            //: UIView.animate(withDuration: 0.5, delay: 0.5) { [weak self] in
            UIView.animate(withDuration: 0.5, delay: 0.5) { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pointLab.alpha = 0
                self.pointLab.alpha = 0
                //: self.pointLab.transform = CGAffineTransform(scaleX: 1.8, y: 1.8)
                self.pointLab.transform = CGAffineTransform(scaleX: 1.8, y: 1.8)
                //: }completion: { [weak self]  success in
            } completion: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isPlayAnimation = false
                self.isPlayAnimation = false
                //: self.pointLab.text = ""
                self.pointLab.text = ""
                //: self.pointLab.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.pointLab.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .VideoCall_femalePoint)
            var url = DigitiserReactiveCompatible.default.game(type: .VideoCall_femalePoint)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .videoCall_femalePoint_ar)
                url = DigitiserReactiveCompatible.default.game(type: .videoCall_femalePoint_ar)
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .videoCall_femalePoint_es)
                url = DigitiserReactiveCompatible.default.game(type: .videoCall_femalePoint_es)
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .videoCall_femalePoint_pt)
                url = DigitiserReactiveCompatible.default.game(type: .videoCall_femalePoint_pt)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.pointSVGA.videoItem = videoItem
                self.pointSVGA.videoItem = videoItem
                //: self.pointSVGA.startAnimation()
                self.pointSVGA.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (str_sharedName.lowercased() + String(str_momentValue.prefix(4)) + "son e" + str_nearName.replacingOccurrences(of: "cancel", with: "rr")))
        }
    }
}

//: extension TalkingPointAnimationView {
extension HandleAnimationView {
    //: func setupSubviews() {
    func selected() {
        //: self.addSubview(pointSVGA)
        self.addSubview(pointSVGA)
        //: self.addSubview(pointLab)
        self.addSubview(pointLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func channelButton() {
        //: pointSVGA.snp.makeConstraints { make in
        pointSVGA.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: pointLab.snp.makeConstraints { make in
        pointLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.centerY.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview().offset(-5)
        }
    }
}
