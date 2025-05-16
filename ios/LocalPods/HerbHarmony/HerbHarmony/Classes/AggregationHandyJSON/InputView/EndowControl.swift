
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_colorName:[UInt8] = [0x2a,0x2d,0x2a,0x37,0x6b,0x20,0x2c,0x27,0x26,0x31,0x79,0x6a,0x63,0x2b,0x22,0x30,0x63,0x2d,0x2c,0x37,0x63,0x21,0x26,0x26,0x2d,0x63,0x2a,0x2e,0x33,0x2f,0x26,0x2e,0x26,0x2d,0x37,0x26,0x27]

/*: "#DCDCD" :*/
fileprivate let str_groupValue:String = "play model string#DCDC"
fileprivate let str_sharedText:[Character] = ["D"]

/*: "Reply" :*/
fileprivate let str_homeData:[Character] = ["R","e","p","l","y"]

/*: "btn_delete" :*/
fileprivate let str_actionValue:[Character] = ["b","t","n"]
fileprivate let str_collectionData:[Character] = ["_","d","e","l","e","t","e"]

/*: "text" :*/
fileprivate let str_leadingName:[Character] = ["t","e","x","t"]

/*: "gift" :*/
fileprivate let str_iconData:String = "gilab"

/*: "Sent " :*/
fileprivate let str_viewEditListenerText:String = "Sent data self path"

/*: " x :*/
fileprivate let str_videoValue:[Character] = [" ","x"]

/*: "audio" :*/
fileprivate let str_equalContent:String = "indicatorudio"

/*: "[Audio]" :*/
fileprivate let str_layerText:String = "add center pair table empty[Audio]"

/*: "img" :*/
fileprivate let str_withTitle:String = "imstage"

/*: "[Image]" :*/
fileprivate let str_likeText:[Character] = ["[","I"]
fileprivate let str_useText:String = "touch viewmage]"

/*: "video" :*/
fileprivate let str_buttonToText:[Character] = ["v","i","d","e","o"]

/*: ": [" :*/
fileprivate let str_nearName:String = ":lab["

/*: "Video" :*/
fileprivate let str_attentionName:[Character] = ["V","i","d","e","o"]

/*: "map" :*/
fileprivate let str_outputContentNextText:String = "MAP"

/*: "[Location]" :*/
fileprivate let str_errorText:String = "[Lobject page"
fileprivate let str_nearTitle:String = "self let along title selfocation]"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndowControl.swift
//  HerbHarmony
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class EndowControl: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        warning()
        //: setupSubViewsConstraint()
        viewsModel()
        //: bindInteraction()
        contentCounteraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_colorName.map{$0^67}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(str_groupValue.suffix(5)) + String(str_sharedText)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .colorPush()
        //: lab.text = "Reply".localized
        lab.text = (String(str_homeData)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.unprecedented(fontSize: 14)
        lab.font = UIFont.unprecedented(fontSize: 14)
        //: lab.textColor = .inexpensiveness()
        lab.textColor = .inexpensiveness()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_actionValue) + String(str_collectionData))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: PathModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (String(str_leadingName)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (str_iconData.replacingOccurrences(of: "lab", with: "ft")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_viewEditListenerText.prefix(5))).localized + quoteModel.renderData.contextImage() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (str_equalContent.replacingOccurrences(of: "indicator", with: "a")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_layerText.suffix(7))).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (str_withTitle.replacingOccurrences(of: "stage", with: "g")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_likeText) + String(str_useText.suffix(5))).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (String(str_buttonToText)) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(str_attentionName)).localized + "]"
                //: }else if quoteModel.renderType == "map" {
            } else if quoteModel.renderType == (str_outputContentNextText.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Location]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(str_errorText.prefix(2)) + String(str_nearTitle.suffix(8))).localized
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension EndowControl {
    /// 添加视图
    //: private func setupSubviews() {
    private func warning() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsModel() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func contentCounteraction() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
