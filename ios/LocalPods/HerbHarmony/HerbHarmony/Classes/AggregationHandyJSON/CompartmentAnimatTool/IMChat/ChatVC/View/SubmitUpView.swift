
//: Declare String Begin

/*: "Increase：" :*/
fileprivate let str_keyName:String = "else selfInc"
fileprivate let str_packageData:[Character] = ["r","e","a","s","e","："]

/*: "Decrease：" :*/
fileprivate let str_requestData:String = "normal"
fileprivate let str_textValue:[Character] = ["e","c","r","e","a","s","e","\u{ff1a}"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_betweenValue:[UInt8] = [0x6c,0x6b,0x6c,0x71,0x2d,0x66,0x6a,0x61,0x60,0x77,0x3f,0x2c,0x25,0x6d,0x64,0x76,0x25,0x6b,0x6a,0x71,0x25,0x67,0x60,0x60,0x6b,0x25,0x6c,0x68,0x75,0x69,0x60,0x68,0x60,0x6b,0x71,0x60,0x61]

private func giftModel(intimate num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "bg_talk_closed_tc" :*/
fileprivate let str_toTitle:String = "bg_talkequal first in tail"
fileprivate let str_titleValue:[Character] = ["_","c","l","o","s","e","d","_","t","c"]

/*: "bg_talk_closed_tc_intimate" :*/
fileprivate let str_tableData:[Character] = ["b","g","_","t","a","l","k","_","c","l","o","s","e","d","_","t","c","_"]
fileprivate let str_viewData:String = "incolor"
fileprivate let str_listenText:[Character] = ["i","m","a","t","e"]

/*: "btn_intimate_close" :*/
fileprivate let str_resultTrackValue:String = "btn_incell content"
fileprivate let str_leadingText:[Character] = ["_","c","l","o","s","e"]

/*: "Giving gifts 、making calls and sending paid messages can increase intimacy~" :*/
fileprivate let str_useData:[UInt8] = [0x8,0x2a,0x37,0x2a,0x2f,0x28,0xe1,0x28,0x2a,0x27,0x35,0x34,0xe1,0xa4,0x41,0x42,0x2e,0x22,0x2c,0x2a,0x2f,0x28,0xe1,0x24,0x22,0x2d,0x2d,0x34,0xe1,0x22,0x2f,0x25,0xe1,0x34,0x26,0x2f,0x25,0x2a,0x2f,0x28,0xe1,0x31,0x22,0x2a,0x25,0xe1,0x2e,0x26,0x34,0x34,0x22,0x28,0x26,0x34,0xe1,0x24,0x22,0x2f,0xe1,0x2a,0x2f,0x24,0x33,0x26,0x22,0x34,0x26,0xe1,0x2a,0x2f,0x35,0x2a,0x2e,0x22,0x24,0x3a,0x3f]

fileprivate func modelTab(medium num: UInt8) -> UInt8 {
    let value = Int(num) - 193
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "1 coin = 1 intimacy" :*/
fileprivate let str_frameValue:[Character] = ["1"," ","c","o","i","n"," ","="," ","1"," ","i","n","t"]
fileprivate let str_makeContent:String = "icoloracy"

/*: "If coins are not consumed within a certain period of time, the intimacy level will be reduced." :*/
fileprivate let str_sizeData:[UInt8] = [0xd6,0xf9,0xbf,0xfc,0xf0,0xf6,0xf1,0xec,0xbf,0xfe,0xed,0xfa,0xbf,0xf1,0xf0,0xeb,0xbf,0xfc,0xf0,0xf1,0xec,0xea,0xf2,0xfa,0xfb,0xbf,0xe8,0xf6,0xeb,0xf7,0xf6,0xf1,0xbf,0xfe,0xbf,0xfc,0xfa,0xed,0xeb,0xfe,0xf6,0xf1,0xbf,0xef,0xfa,0xed,0xf6,0xf0,0xfb,0xbf,0xf0,0xf9,0xbf,0xeb,0xf6,0xf2,0xfa,0xb3,0xbf,0xeb,0xf7,0xfa,0xbf,0xf6,0xf1,0xeb,0xf6,0xf2,0xfe,0xfc,0xe6,0xbf,0xf3,0xfa,0xe9,0xfa,0xf3,0xbf,0xe8,0xf6,0xf3,0xf3,0xbf,0xfd,0xfa,0xbf,0xed,0xfa,0xfb,0xea,0xfc,0xfa,0xfb,0xb1]

private func managerMode(input num: UInt8) -> UInt8 {
    return num ^ 159
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubmitUpView.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/7/26.
//

//: import UIKit
import UIKit

/// 亲密度说明弹窗
//: class TalkingIntimateInstructionsPopUpView: UIView {
class SubmitUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: TalkingRecognizerDelegate?
    //: var pushType = ""
    var pushType = ""
    //: var headerData = ["Increase：".localized,"Decrease：".localized]
    var headerData = [(String(str_keyName.suffix(3)) + String(str_packageData)).localized, (str_requestData.replacingOccurrences(of: "normal", with: "D") + String(str_textValue)).localized]

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.delayImage()
        //: self.setupSubViewsConstraint()
        self.addApp()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_betweenValue.map{giftModel(intimate: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearCounterval(name: "bg_talk_closed_tc")
        imag.image = UIImage.nearCounterval(name: (String(str_toTitle.prefix(7)) + String(str_titleValue)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var topView: UIImageView = {
    private lazy var topView: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.nearCounterval(name: "bg_talk_closed_tc_intimate")
        imag.image = UIImage.nearCounterval(name: (String(str_tableData) + str_viewData.replacingOccurrences(of: "color", with: "t") + String(str_listenText)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var msgTableView: UITableView = {
    private lazy var msgTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = UIColor.init(red: 242/255.0, green: 110/255.0, blue: 184/255.0, alpha: 0.72)
        table.backgroundColor = UIColor(red: 242 / 255.0, green: 110 / 255.0, blue: 184 / 255.0, alpha: 0.72)
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.layer.cornerRadius = 6
        table.layer.cornerRadius = 6
        //: table.register(TalkingIntimateInstructionsPopUpCell.self, forCellReuseIdentifier: TalkingIntimateInstructionsPopUpCell.className())
        table.register(ComfortablenessThen.self, forCellReuseIdentifier: ComfortablenessThen.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_intimate_close"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_resultTrackValue.prefix(6)) + "timate" + String(str_leadingText))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(playRemind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingIntimateInstructionsPopUpView {
extension SubmitUpView {
    //: @objc private func closeBtnClick() {
    @objc private func playRemind() {
        //: dismiss()
        videoOf()
    }

    //: func show() {
    func errorShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
    }

    //: @objc func dismiss() {
    @objc func videoOf() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingIntimateInstructionsPopUpView: UITableViewDelegate, UITableViewDataSource {
extension SubmitUpView: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 2
            return 2
            //: }else {
        } else {
            //: return 1
            return 1
        }
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingIntimateInstructionsPopUpCell.className(), for: indexPath) as! TalkingIntimateInstructionsPopUpCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ComfortablenessThen.className(), for: indexPath) as! ComfortablenessThen
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: if indexPath.row == 0 {
            if indexPath.row == 0 {
                //: cell.setCellData(msg: "Giving gifts 、making calls and sending paid messages can increase intimacy~".localized)
                cell.littleMsg(msg: String(bytes: str_useData.map{modelTab(medium: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: cell.setCellData(msg: "1 coin = 1 intimacy".localized)
                cell.littleMsg(msg: (String(str_frameValue) + str_makeContent.replacingOccurrences(of: "color", with: "m")).localized)
            }
            //: } else {
        } else {
            //: cell.setCellData(msg: "If coins are not consumed within a certain period of time, the intimacy level will be reduced.".localized)
            cell.littleMsg(msg: String(bytes: str_sizeData.map{managerMode(input: $0)}, encoding: .utf8)!.localized)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if section == 0 {
        if section == 0 {
            //: return 32
            return 32
            //: }else {
        } else {
            //: return 36
            return 36
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 32))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: 32))
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.behindUpRoom(fontSize: 16)
        titleLab.font = UIFont.behindUpRoom(fontSize: 16)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.backgroundColor = .clear
        titleLab.backgroundColor = .clear
        //: titleLab.text = headerData[section]
        titleLab.text = headerData[section]
        //: view.addSubview(titleLab)
        view.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.leading.equalTo(13)
            make.leading.equalTo(13)
            //: make.bottom.equalTo(0)
            make.bottom.equalTo(0)
            //: if section == 0 {
            if section == 0 {
                //: make.top.equalTo(0)
                make.top.equalTo(0)
                //: }else {
            } else {
                //: make.top.equalTo(4)
                make.top.equalTo(4)
            }
        }

        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingIntimateInstructionsPopUpView {
extension SubmitUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func delayImage() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: self.addSubview(topView)
        self.addSubview(topView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
        //: contentView.addSubview(msgTableView)
        contentView.addSubview(msgTableView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func addApp() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 301, height: 291))
            make.size.equalTo(CGSize(width: 301, height: 291))
        }

        //: msgTableView.snp.makeConstraints { make in
        msgTableView.snp.makeConstraints { make in
            //: make.top.equalTo(40)
            make.top.equalTo(40)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(contentView.snp.top).offset(-30)
            make.top.equalTo(contentView.snp.top).offset(-30)
            //: make.size.equalTo(CGSize.init(width: 107, height: 31))
            make.size.equalTo(CGSize(width: 107, height: 31))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
