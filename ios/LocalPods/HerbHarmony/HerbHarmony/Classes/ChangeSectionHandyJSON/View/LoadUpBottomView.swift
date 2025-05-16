
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_byName:[UInt8] = [0x92,0x95,0x92,0x8f,0xd3,0x98,0x94,0x9f,0x9e,0x89,0xc1,0xd2,0xdb,0x93,0x9a,0x88,0xdb,0x95,0x94,0x8f,0xdb,0x99,0x9e,0x9e,0x95,0xdb,0x92,0x96,0x8b,0x97,0x9e,0x96,0x9e,0x95,0x8f,0x9e,0x9f]

private func addMagnitudeeraction(then num: UInt8) -> UInt8 {
    return num ^ 251
}

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let str_modelTitle:[Character] = ["b","t","n","_","d","o","n","g","t","a","i","_","d","i","a","n","z","a"]
fileprivate let str_playerValue:String = "sex bubble near self youn_nor"

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let str_frameValue:String = "item old on makebtn_do"
fileprivate let str_searchText:[Character] = ["a","n","z","a","n","_","n","o","r","1"]

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let str_noteText:String = "float true instance pairbtn_d"
fileprivate let str_sessionTitle:String = "_pingat status manager self"
fileprivate let str_sendShowTitle:String = "R"

/*: "btn_dynamic_chat_nor" :*/
fileprivate let str_normalData:String = "btn_dcookie in data available make"
fileprivate let str_blockValue:String = "minimumnam"
fileprivate let str_replyValue:String = "at_norto clear in row from"

/*: "icon_dynamic_heart_default" :*/
fileprivate let str_nameValue:String = "icon_height message make live smart"
fileprivate let str_labelTitle:[Character] = ["c"]
fileprivate let str_viewData:[Character] = ["_","h","e","a","r","t","_","d","e","f","a","u","l","t"]

/*: "Chat" :*/
fileprivate let str_makeText:[Character] = ["C","h","a","t"]

/*: "#752FE9" :*/
fileprivate let str_statusModelValue:String = "#"
fileprivate let str_mapName:String = "752FE9let user let"

/*: "99+" :*/
fileprivate let str_atBagValue:[UInt8] = [0x56,0x56,0x44]

private func appName(data num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "%d" :*/
fileprivate let str_errorText:[Character] = ["%","d"]

/*: "Comment" :*/
fileprivate let str_awakeData:String = "let menu shared titleComment"

/*: "momentId" :*/
fileprivate let str_titleDataName:[Character] = ["m","o","m","e","n","t","I","d"]

/*: "type" :*/
fileprivate let str_hiddenTitle:String = "modeype"

/*: "like" :*/
fileprivate let str_coverName:[Character] = ["l","i","k","e"]

/*: "model" :*/
fileprivate let str_engineWhiteTitle:[UInt8] = [0xbf,0xbd,0xb6,0xb7,0xbe]

private func yearLog(value num: UInt8) -> UInt8 {
    return num ^ 210
}

/*: "get json error" :*/
fileprivate let str_formatName:String = "glocation"
fileprivate let str_addBottomData:String = "add self layer instancet js"
fileprivate let str_imageFailContent:String = "arrayor"

/*: "comment" :*/
fileprivate let str_toValue:[Character] = ["c","o","m","m","e"]
fileprivate let str_meName:[Character] = ["n","t"]

/*: "number" :*/
fileprivate let str_sizeMessageTitle:String = "NUMBER"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoadUpBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class LoadUpBottomView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = ModelHandyJSON()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        front()
        //: setupSubViewsConstraint()
        voiceDoing()
        //: bindInteraction()
        cleaveWithinGiveAndTake()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_byName.map{addMagnitudeeraction(then: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 14)
        label.font = .liveAttention(type: .Regular, fontSize: 14)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_modelTitle) + String(str_playerValue.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: (String(str_frameValue.suffix(6)) + "ngtai_di" + String(str_searchText))), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 16)
        label.font = .liveAttention(type: .Regular, fontSize: 16)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_noteText.suffix(5)) + "ongtai" + String(str_sessionTitle.prefix(5)) + "lun_no" + str_sendShowTitle.lowercased())), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .liveAttention(type: .Regular, fontSize: 16)
        label.font = .liveAttention(type: .Regular, fontSize: 16)
        //: label.textColor = .inexpensiveness()
        label.textColor = .inexpensiveness()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: RoomThen = {
        //: let btn = TalkingButton.init()
        let btn = RoomThen()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (String(str_normalData.prefix(5)) + str_blockValue.replacingOccurrences(of: "minimum", with: "y") + "ic_ch" + String(str_replyValue.prefix(6)))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_nameValue.prefix(5)) + "dynami" + String(str_labelTitle) + String(str_viewData))), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(str_makeText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 14)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension LoadUpBottomView {
    //: func configModel(model: TalkingMomentModel) {
    func underEnter(model: ModelHandyJSON) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = WithAdministratorAppManager.share.loginUserMode.sex == model.sex ||  WithAdministratorAppManager.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = WithAdministratorAppManager.share.loginUserMode.sex == model.sex || WithAdministratorAppManager.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.inexpensiveness()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (str_statusModelValue.capitalized + String(str_mapName.prefix(6)))) : .inexpensiveness()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(str_awakeData.suffix(7))).localized
    }

    //: func likeBtnClik() {
    func colorLab() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.talk(type: 1)
            //: self.likeplayer()
            self.fileLikeplayer()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            talk(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func talk(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(String(str_titleDataName))] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(str_hiddenTitle.replacingOccurrences(of: "mode", with: "t"))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.likeData(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.inexpensiveness()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (str_statusModelValue.capitalized + String(str_mapName.prefix(6)))) : .inexpensiveness()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: kLet_scalePlainData, object: self, userInfo: [(str_hiddenTitle.replacingOccurrences(of: "mode", with: "t")): (String(str_coverName)), String(bytes: str_engineWhiteTitle.map{yearLog(value: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.atShow(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func greetFromClick() {
        //: LeadingEqualReactiveCompatible.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        LeadingEqualReactiveCompatible.share.cellRowCompletion(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func fileLikeplayer() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = DigitiserReactiveCompatible.default.game(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = DigitiserReactiveCompatible.default.game(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (str_formatName.replacingOccurrences(of: "location", with: "e") + String(str_addBottomData.suffix(4)) + "on e" + str_imageFailContent.replacingOccurrences(of: "array", with: "rr")))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func restore(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(String(str_titleDataName))] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(str_hiddenTitle.replacingOccurrences(of: "mode", with: "t"))] as! String == (String(str_toValue) + String(str_meName)).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(str_sizeMessageTitle.lowercased())] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension LoadUpBottomView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension LoadUpBottomView {
    // 添加视图
    //: private func setupSubviews() {
    private func front() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func voiceDoing() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.behindUpRoom(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.behindUpRoom(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cleaveWithinGiveAndTake() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(restore(notification:)), name: kLet_appName, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.colorLab()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.greetFromClick()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
