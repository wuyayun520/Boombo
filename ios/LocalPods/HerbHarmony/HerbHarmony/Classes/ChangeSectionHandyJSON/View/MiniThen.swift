
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_contentBlockName:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func giftInfo(view num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "icon_ziliao_nandi_default" :*/
fileprivate let str_hiddenContent:String = "icodevice"
fileprivate let str_shareText:String = "ao_naeffect self online top"
fileprivate let str_popValue:String = "efaullabel"

/*: "iv_crush" :*/
fileprivate let str_dataTitle:String = "iv_crfalse cell add name index"
fileprivate let str_buttonData:[Character] = ["u","s","h"]

/*: "Crush" :*/
fileprivate let str_femaleTitle:String = "Crushadd to guard"

/*: "get json error" :*/
fileprivate let str_endViewForText:String = "get demonstration data if as"
fileprivate let str_whiteName:String = " errorarray content frame view file"

/*: "targetUid" :*/
fileprivate let str_likeValue:String = "TARGET"
fileprivate let str_keyUpToName:[Character] = ["U","i","d"]

/*: "The other party has received your crush" :*/
fileprivate let str_equalTitle:[UInt8] = [0xb7,0x8b,0x86,0xc3,0x8c,0x97,0x8b,0x86,0x91,0xc3,0x93,0x82,0x91,0x97,0x9a,0xc3,0x8b,0x82,0x90,0xc3,0x91,0x86,0x80,0x86,0x8a,0x95,0x86,0x87,0xc3,0x9a,0x8c,0x96,0x91,0xc3,0x80,0x91,0x96,0x90,0x8b]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MiniThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class MiniThen: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
//        self.backgroundColor = UIColor.white
//        customUI()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_contentBlockName.map{giftInfo(view: $0)}, encoding: .utf8)!)
    }

    //: func customUI() {
    func write() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.equalRgba(51, 51, 51, 0.8)

        //: guard WithAdministratorAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard WithAdministratorAppManager.share.appStatus == SectionFreckleTextConvertible.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: RoomThen = {
        //: let btn = TalkingButton.init()
        let btn = RoomThen()
        //: btn.setBackgroundImage(UIImage.nearCounterval(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.nearCounterval(name: (str_hiddenContent.replacingOccurrences(of: "device", with: "n") + "_zili" + String(str_shareText.prefix(5)) + "ndi_d" + str_popValue.replacingOccurrences(of: "label", with: "t"))), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_dataTitle.prefix(5)) + String(str_buttonData))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(str_femaleTitle.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dismissHead), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
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
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension MiniThen: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func dismissHead() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = DigitiserReactiveCompatible.default.game(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(str_endViewForText.prefix(4)) + "json" + String(str_whiteName.prefix(6))))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(str_likeValue.lowercased() + String(str_keyUpToName))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        ManagerRequestTool.repressCompletion(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.bottomMsg(showMsg: String(bytes: str_equalTitle.map{$0^227}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.atShow(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
