
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_rangeName:[UInt8] = [0x2f,0x28,0x2f,0x32,0x6e,0x25,0x29,0x22,0x23,0x34,0x7c,0x6f,0x66,0x2e,0x27,0x35,0x66,0x28,0x29,0x32,0x66,0x24,0x23,0x23,0x28,0x66,0x2f,0x2b,0x36,0x2a,0x23,0x2b,0x23,0x28,0x32,0x23,0x22]

private func pathLive(red num: UInt8) -> UInt8 {
    return num ^ 70
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InstanceThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/23.
//

//: import UIKit
import UIKit

//: protocol PrivateChatReplyTipsProtocol: NSObject {
protocol IndexTipsProtocol: NSObject {
    //: func seleteReplyTipsMessage(str: String)
    func rowStr(str: String)
}

//: class TalkingPrivateChatReplyTipsView: UIView {
class InstanceThen: UIView {
    //: var quickReplyText: Array<String> = []
    var quickReplyText: [String] = []
    //: open weak var delegate: PrivateChatReplyTipsProtocol?
    open weak var delegate: IndexTipsProtocol?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: setupSubviews()
        dismissFor()
        //: setData()
        voiceData()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_rangeName.map{pathLive(red: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        postWith()
    }

    //: deinit {
    deinit {}

    //: lazy var scrollView: UIScrollView = {
    lazy var scrollView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.bouncesZoom = true
        view.bouncesZoom = true
        //: view.maximumZoomScale = 2.5
        view.maximumZoomScale = 2.5
        //: view.minimumZoomScale = 1.0
        view.minimumZoomScale = 1.0
        //: view.isMultipleTouchEnabled = true
        view.isMultipleTouchEnabled = true
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = true
        view.showsVerticalScrollIndicator = true
        //: view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: view.delaysContentTouches = false
        view.delaysContentTouches = false
        //: view.canCancelContentTouches = true
        view.canCancelContentTouches = true
        //: view.alwaysBounceVertical = false
        view.alwaysBounceVertical = false
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatReplyTipsView {
extension InstanceThen {
    //: func setData() {
    func voiceData() {
        //: if WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count > 4 {
        if WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count > 4 {
            //: let getRandom = randomSequenceGenerator(min: 0, max: WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count-1)
            let getRandom = aggregation(min: 0, max: WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count - 1)
            //: for _ in 0...3 {
            for _ in 0 ... 3 {
                //: let index =  getRandom()
                let index = getRandom()
                //: if index <= WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count-1 {
                if index <= WithAdministratorAppManager.share.appUserConfigMode.quickReplyText.count - 1 {
                    //: quickReplyText.append(WithAdministratorAppManager.share.appUserConfigMode.quickReplyText[index])
                    quickReplyText.append(WithAdministratorAppManager.share.appUserConfigMode.quickReplyText[index])
                }
            }
            //: } else {
        } else {
            //: quickReplyText = WithAdministratorAppManager.share.appUserConfigMode.quickReplyText
            quickReplyText = WithAdministratorAppManager.share.appUserConfigMode.quickReplyText
        }
    }

    //: func randomSequenceGenerator(min: Int, max: Int) -> () -> Int {
    func aggregation(min: Int, max: Int) -> () -> Int {
        //: var numbers: [Int] = []
        var numbers: [Int] = []
        //: return {
        return {
            //: if numbers.isEmpty {
            if numbers.isEmpty {
                //: numbers = Array(min ... max)
                numbers = Array(min ... max)
            }
            //: let index = Int(arc4random_uniform(UInt32(numbers.count)))
            let index = Int(arc4random_uniform(UInt32(numbers.count)))
            //: return numbers.remove(at: index)
            return numbers.remove(at: index)
        }
    }

    //: func setTipsStrView() {
    func todayInfo() {
        //: var lastLabel: UILabel? = nil
        var lastLabel: UILabel?
        //: for (i, str) in quickReplyText.enumerated() {
        for (i, str) in quickReplyText.enumerated() {
            //: let rect = str.boundingRect(with: size, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 13)], context: nil)
            let rect = str.boundingRect(with: size, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: UIFont.liveAttention(type: .Regular, fontSize: 13)], context: nil)

            //: let width = Int(rect.width) + 20
            let width = Int(rect.width) + 20
            //: let lb = UILabel()
            let lb = UILabel()
            //: lb.text = str
            lb.text = str
            //: lb.font = UIFont.unprecedented(fontSize: 13)
            lb.font = UIFont.unprecedented(fontSize: 13)
            //: lb.textColor = .white
            lb.textColor = .white
            //: lb.isUserInteractionEnabled = true
            lb.isUserInteractionEnabled = true
            //: lb.textAlignment = .center
            lb.textAlignment = .center
            //: lb.backgroundColor = UIColor(red: 252/255.0, green: 252/255.0, blue: 255/255.0, alpha: 0.2)
            lb.backgroundColor = UIColor(red: 252 / 255.0, green: 252 / 255.0, blue: 255 / 255.0, alpha: 0.2)
            //: lb.layer.cornerRadius = 14
            lb.layer.cornerRadius = 14
            //: lb.layer.masksToBounds = true
            lb.layer.masksToBounds = true
            //: lb.tag = i
            lb.tag = i
            //: let tap = UITapGestureRecognizer(target: self, action: #selector(TipsStrTagGes(sender:)))
            let tap = UITapGestureRecognizer(target: self, action: #selector(ticket(sender:)))
            //: lb.addGestureRecognizer(tap)
            lb.addGestureRecognizer(tap)
            //: scrollView.addSubview(lb)
            scrollView.addSubview(lb)

            //: lb.snp.makeConstraints { make in
            lb.snp.makeConstraints { make in
                //: make.top.equalTo(10)
                make.top.equalTo(10)
                //: make.width.equalTo(width)
                make.width.equalTo(width)
                //: make.height.equalTo(28)
                make.height.equalTo(28)
                //: if let last = lastLabel {
                if let last = lastLabel {
                    //: make.leading.equalTo(last.snp.trailing).offset(10)
                    make.leading.equalTo(last.snp.trailing).offset(10)
                    //: } else {
                } else {
                    //: make.leading.equalTo(15)
                    make.leading.equalTo(15)
                }

                //: if i == quickReplyText.count - 1 {
                if i == quickReplyText.count - 1 {
                    //: make.trailing.equalTo(scrollView).offset(-15)
                    make.trailing.equalTo(scrollView).offset(-15)
                }
            }
            //: lastLabel = lb
            lastLabel = lb
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: scrollView.layoutIfNeeded()
            scrollView.layoutIfNeeded()
            //: scrollView.scrollToRight(animated: false)
            scrollView.scrollToRight(animated: false)
        }
    }

    //: @objc func TipsStrTagGes(sender: UITapGestureRecognizer) {
    @objc func ticket(sender: UITapGestureRecognizer) {
        //: let lb = sender.view as? UILabel
        let lb = sender.view as? UILabel
        //: self.delegate?.seleteReplyTipsMessage(str: lb?.text ?? "")
        self.delegate?.rowStr(str: lb?.text ?? "")
    }
}

//: extension TalkingPrivateChatReplyTipsView {
extension InstanceThen {
    //: func setupSubviews() {
    func dismissFor() {
        //: self.addSubview(scrollView)
        self.addSubview(scrollView)
    }

    //: func setupSubViewsConstraint() {
    func postWith() {
        //: scrollView.snp.makeConstraints { make in
        scrollView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
