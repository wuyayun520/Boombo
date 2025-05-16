
//: Declare String Begin

/*: "MDoingReactiveCompatible deinit" :*/
fileprivate let str_equalName:[Character] = ["Q","u","o","t","e","D","e","t","a","i","l","P","o","p"]
fileprivate let str_makeContent:String = "layer in click view falseView d"
fileprivate let str_nearLabValue:[Character] = ["e","i","n","i","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_cornerName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MDoingReactiveCompatible.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class MDoingReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(str_equalName) + String(str_makeContent.suffix(6)) + String(str_nearLabValue)))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.showOff()
        //: self.setupSubViewsConstraint()
        self.punctuate()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_cornerName.reversed(), encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        lb.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension MDoingReactiveCompatible {
    //: func show() {
    func sex() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
    }

    //: @objc func dismiss() {
    @objc func toVoice() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension MDoingReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func showOff() {
        //: self.backgroundColor = UIColor.appBgColor()
        self.backgroundColor = UIColor.air()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func punctuate() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
