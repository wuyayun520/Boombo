
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_liveData:[UInt8] = [0x61,0x66,0x61,0x6c,0x20,0x5b,0x67,0x5c,0x5d,0x6a,0x32,0x21,0x18,0x60,0x59,0x6b,0x18,0x66,0x67,0x6c,0x18,0x5a,0x5d,0x5d,0x66,0x18,0x61,0x65,0x68,0x64,0x5d,0x65,0x5d,0x66,0x6c,0x5d,0x5c]

fileprivate func mTheoryMore(user num: UInt8) -> UInt8 {
    let value = Int(num) - 248
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_nor" :*/
fileprivate let str_shapeData:String = "fatal color block age userbtn_li"
fileprivate let str_tableNameData:String = "ve_norbuilder size model"

/*: "Live" :*/
fileprivate let str_equalValue:String = "hidden party selfLive"

/*: "btn_party_nor" :*/
fileprivate let str_greetValue:String = "btn_load length gift"
fileprivate let str_quoteData:String = "item action cell objecty_nor"

/*: "Party" :*/
fileprivate let str_regularName:String = "Partytarget self return value match"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FullThen.swift
//  HerbHarmony
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class FullThen: UIView {
    //: private var popView: TalkingPopView?
    private var popView: TalkingRecognizerDelegate?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        context()
        //: setupSubViewsConstraint()
        misreckoning()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_liveData.map{mTheoryMore(user: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_shapeData.suffix(6)) + String(str_tableNameData.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(indexLocate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 17)
        lab.font = UIFont.behindUpRoom(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(str_equalValue.suffix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var partyBtn: UIButton = {
    private lazy var partyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_party_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_greetValue.prefix(4)) + "part" + String(str_quoteData.suffix(5)))), for: .normal)
        //: btn.addTarget(self, action: #selector(partyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fun), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var partyLab: UILabel = {
    private lazy var partyLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.occurrence()
        lab.textColor = UIColor.occurrence()
        //: lab.font = UIFont.behindUpRoom(fontSize: 17)
        lab.font = UIFont.behindUpRoom(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Party".localized
        lab.text = (String(str_regularName.prefix(5))).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension FullThen {
    /// 展示视图
    //: func show() {
    func ofShow() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue)
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
    }

    /// 隐藏视图
    //: func dismiss() {
    func comparable() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func indexLocate() {
        //: dismiss()
        comparable()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: kLet_timeValue, object: nil)
    }

    /// 语聊房按钮事件
    //: @objc private func partyButtonAction() {
    @objc private func fun() {
        //: dismiss()
        comparable()
        //: LeadingEqualReactiveCompatible.share.func_pushToVoiceRoomVC()
        LeadingEqualReactiveCompatible.share.jabbing()
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension FullThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func context() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
        //: backView.addSubview(partyBtn)
        backView.addSubview(partyBtn)
        //: backView.addSubview(partyLab)
        backView.addSubview(partyLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func misreckoning() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kLet_appMarginText)
            make.height.equalTo(163 + kLet_appMarginText)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(actualWidth(w: 32))
            //: make.leading.equalTo(actualWidth(w: 63))
            make.leading.equalTo(actualWidth(w: 63))
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_senseContent / 2)
        }

        //: partyBtn.snp.makeConstraints { make in
        partyBtn.snp.makeConstraints { make in
            //: make.top.width.height.equalTo(liveBtn)
            make.top.width.height.equalTo(liveBtn)
            //: make.trailing.equalTo(-actualWidth(w: 63))
            make.trailing.equalTo(-actualWidth(w: 63))
        }
        //: partyLab.snp.makeConstraints { make in
        partyLab.snp.makeConstraints { make in
            //: make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(partyBtn)
            make.centerX.equalTo(partyBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(kLet_senseContent / 2)
        }
    }
}
