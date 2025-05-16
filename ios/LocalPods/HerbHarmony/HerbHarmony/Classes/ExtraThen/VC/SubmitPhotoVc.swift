
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerData:[UInt8] = [0x8f,0x88,0x8f,0x92,0xce,0x85,0x89,0x82,0x83,0x94,0xdc,0xcf,0xc6,0x8e,0x87,0x95,0xc6,0x88,0x89,0x92,0xc6,0x84,0x83,0x83,0x88,0xc6,0x8f,0x8b,0x96,0x8a,0x83,0x8b,0x83,0x88,0x92,0x83,0x82]

private func lightColored(text num: UInt8) -> UInt8 {
    return num ^ 230
}

/*: "Photo greeting" :*/
fileprivate let str_layerData:String = "Photoimport top type right"
fileprivate let str_fatalData:[Character] = [" ","g"]
fileprivate let str_equalContent:String = "reetoing"

/*: "InduePhotoCell" :*/
fileprivate let str_plainKindName:String = "color countTalkin"
fileprivate let str_colorContent:String = "hiddent"
fileprivate let str_equalData:String = "oCellrender flag"

/*: "IconTableCell" :*/
fileprivate let str_timeName:String = "Talkitrue image make"
fileprivate let str_keyTitle:[Character] = ["P","h","o","t","o","T","a","b","l","e","C","e","l","l"]

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let str_normalCenterName:[UInt8] = [0x13,0xd,0x19,0x18,0x9,0x17,0xf,0x9,0x11,0x1c,0xf,0xf,0x1e,0xfd,0xf,0x1e,0xfa,0x12,0x19,0x1e,0x19,0x9,0x1d,0xf,0x16,0xf,0xd,0x1e,0x9,0x18,0x19,0x1c]

fileprivate func playTotalimate(cell num: UInt8) -> UInt8 {
    let value = Int(num) + 86
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let str_transformName:[UInt8] = [0x65,0x72,0x70,0x5f,0x74,0x63,0x65,0x6c,0x65,0x73,0x5f,0x6f,0x74,0x6f,0x68,0x50,0x74,0x65,0x53,0x74,0x65,0x65,0x72,0x67,0x5f,0x65,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "  Burn after reading" :*/
fileprivate let str_renderValue:String = "  Buras observer data type"
fileprivate let str_imageName:String = "ter reinput name constraint"
fileprivate let str_toData:String = "playering"

/*: "Finish" :*/
fileprivate let str_upValue:String = "Finishclass frame request level manager"

/*: "type" :*/
fileprivate let str_pushData:[Character] = ["t","y","p","e"]

/*: "isBurn" :*/
fileprivate let str_specialFormData:String = "make"
fileprivate let str_cellValue:String = "sBurnreturn button"

/*: "list" :*/
fileprivate let str_viewMessageData:String = "lmodelt"

/*: "unlockGift" :*/
fileprivate let str_pathData:String = "UNL"
fileprivate let str_pageGreetData:[Character] = ["o","c","k","G","i","f","t"]

/*: "giftId" :*/
fileprivate let str_transformValue:String = "manager"
fileprivate let str_segmentData:[Character] = ["i","f","t","I","d"]

/*: "id" :*/
fileprivate let str_modelData:[Character] = ["i","d"]

/*: "content" :*/
fileprivate let str_messageText:String = "coequalteequalt"

/*: "status" :*/
fileprivate let str_toTitle:String = "never"
fileprivate let str_cookieName:String = "TATUS"

/*: "photo" :*/
fileprivate let str_imageText:String = "pcolorto"

/*: "Delete Successfully" :*/
fileprivate let str_sharedValue:[Character] = ["D","e","l","e","t","e"," "]
fileprivate let str_findData:String = "block"
fileprivate let str_toText:String = "uindexess"

/*: "unlockGiftId" :*/
fileprivate let str_hiddenValue:[Character] = ["u","n","l","o","c","k"]
fileprivate let str_actualData:String = "GiftIdfield self to end"

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let str_advertisingValue:[UInt8] = [0xaf,0xca,0xc6,0xc9,0xbb,0xbe,0x7a,0xbb,0x7a,0xbc,0xbf,0xbb,0xcf,0xce,0xc3,0xc0,0xcf,0xc6,0x7a,0xca,0xc2,0xc9,0xce,0xc9,0x7a,0xc9,0xc0,0x7a,0xce,0xc2,0xbf,0x7a,0xc1,0xcc,0xbf,0xbf,0xce,0xc3,0xc8,0xc1]

fileprivate func passePartout(with num: UInt8) -> UInt8 {
    let value = Int(num) + 166
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SubmitPhotoVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class SubmitPhotoVc: NameViewController {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [PossibilityHandyJSON] = []
    //: var giftDic = Dictionary<String, Any>()
    var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerData.map{lightColored(text: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(str_layerData.prefix(5)) + String(str_fatalData) + str_equalContent.replacingOccurrences(of: "to", with: "t")).localized
        //: self.view.backgroundColor = UIColor.appBgColor()
        self.view.backgroundColor = UIColor.air()
        //: setupSubviews()
        fill()
        //: setupSubViewsConstraint()
        deadline()
        //: bindInteraction()
        sumervalObserver()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: kLet_senseContent, height: kLet_environmentClickValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: "TalkingEditPhotoCell")
        table.register(InduePhotoCell.self, forCellReuseIdentifier: (String(str_plainKindName.suffix(6)) + "gEditP" + str_colorContent.replacingOccurrences(of: "hidden", with: "ho") + String(str_equalData.prefix(5))))
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: "TalkingGreetPhotoTableCell")
        table.register(IconTableCell.self, forCellReuseIdentifier: (String(str_timeName.prefix(5)) + "ngGreet" + String(str_keyTitle)))
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.nearCounterval(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: String(bytes: str_normalCenterName.map{playTotalimate(cell: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.nearCounterval(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.nearCounterval(name: String(bytes: str_transformName.reversed(), encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((String(str_renderValue.prefix(5)) + "n af" + String(str_imageName.prefix(6)) + str_toData.replacingOccurrences(of: "player", with: "ad")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.occurrence(), for: .normal)
        btn.setTitleColor(UIColor.occurrence(), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(overdo), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(str_upValue.prefix(6))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: CGSize(width: kLet_senseContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(utilize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension SubmitPhotoVc {
    //: func getPhotoList(isFreshAll: Bool) {
    func dismissView(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(String(str_pushData))] = 4
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        QuantityeractionThen.tagCompletion(params: dict) { [weak self] succeed, result, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(str_specialFormData.replacingOccurrences(of: "make", with: "i") + String(str_cellValue.prefix(5)))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(str_viewMessageData.replacingOccurrences(of: "model", with: "is"))] as? [Any] ?? Array()
                //: self.giftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                self.giftDic = dict[(str_pathData.lowercased() + String(str_pageGreetData))] as? [String: Any] ?? Dictionary()
                //: self.seleteGiftId = self.giftDic["giftId"] as? String ?? ""
                self.seleteGiftId = self.giftDic[(str_transformValue.replacingOccurrences(of: "manager", with: "g") + String(str_segmentData))] as? String ?? ""
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = PossibilityHandyJSON()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(str_messageText.replacingOccurrences(of: "equal", with: "n"))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(str_toTitle.replacingOccurrences(of: "never", with: "s") + str_cookieName.lowercased())] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.lowerClass()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension SubmitPhotoVc {
    //: @objc func finishBtnClick() {
    @objc func utilize() {
        //: self.saveInfo()
        self.untilAdd()
    }

    //: @objc func seleteBtnClick() {
    @objc func overdo() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        lowerClass()
    }

    //: func examinefinishBtnStatus() {
    func lowerClass() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - ShowThen

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension SubmitPhotoVc: ShowThen {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func toVignette(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        mopUp(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func followCollection(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func sumernalRepresentation(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            sizeUp(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func mopUp(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].lengthPicAccountingData()! as NSData
                let resultData: NSData = icon[i].lengthPicAccountingData()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(String(str_pushData))] = 4
                //: dict["photo"] = resultData
                dict[(str_imageText.replacingOccurrences(of: "color", with: "ho"))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                QuantityeractionThen.finishError(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: ProgressHUD.dismiss()
                        StandardProgressHUD.giftTo()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.dismissView(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.lowerClass()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func sizeUp(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: PossibilityHandyJSON = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        QuantityeractionThen.package(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.successMsg(showMsg: (String(str_sharedValue) + str_findData.replacingOccurrences(of: "block", with: "S") + str_toText.replacingOccurrences(of: "index", with: "cc") + "fully").localized)
                //: self.examinefinishBtnStatus()
                self.lowerClass()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func untilAdd() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(String(str_hiddenValue) + String(str_actualData.prefix(6)))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(str_specialFormData.replacingOccurrences(of: "make", with: "i") + String(str_cellValue.prefix(5)))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        QuantityeractionThen.atToEqual(params: dict) { succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension SubmitPhotoVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((kLet_senseContent - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = "TalkingEditPhotoCell"
            let identifier = (String(str_plainKindName.suffix(6)) + "gEditP" + str_colorContent.replacingOccurrences(of: "hidden", with: "ho") + String(str_equalData.prefix(5)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? InduePhotoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = InduePhotoCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.lumbarVertebra(str: String(bytes: str_advertisingValue.map{passePartout(with: $0)}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.request(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.after()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = "TalkingGreetPhotoTableCell"
            let identifier = (String(str_timeName.prefix(5)) + "ngGreet" + String(str_keyTitle))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? IconTableCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = IconTableCell(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.block(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.lowerClass()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension SubmitPhotoVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func fill() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func deadline() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func sumervalObserver() {
        //: getPhotoList(isFreshAll: true)
        dismissView(isFreshAll: true)
    }
}
