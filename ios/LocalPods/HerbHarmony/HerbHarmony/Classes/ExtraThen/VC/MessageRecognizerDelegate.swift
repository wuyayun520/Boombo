
//: Declare String Begin

/*: "About me" :*/
fileprivate let str_freeSharedValue:String = "About color text style output case"
fileprivate let str_withoutText:String = "sharee"

/*: "My interests" :*/
fileprivate let str_detailData:[Character] = ["M","y"," ","i","n","t"]
fileprivate let str_modelValue:[Character] = ["e","r","e","s","t","s"]

/*: "Done" :*/
fileprivate let str_nameAppearEqualData:String = "Donein add view"

/*: "BridgeViewCell" :*/
fileprivate let str_executeOriginText:String = "view letTalki"
fileprivate let str_scaleViewTitle:String = "epush"

/*: "ModelTextThen" :*/
fileprivate let str_selectionData:String = "play letTalki"
fileprivate let str_toolContent:String = "bar image datagHe"
fileprivate let str_listModeData:String = "type self to number elseaderView"

/*: "aboutMe" :*/
fileprivate let str_throughEdgeText:String = "error style list make bottomaboutMe"

/*: "interest" :*/
fileprivate let str_popToValue:String = "equalteres"
fileprivate let str_listValue:String = "color"

/*: "tagIds" :*/
fileprivate let str_tableNoData:[Character] = ["t","a","g","I","d","s"]

/*: "category" :*/
fileprivate let str_timeName:String = "pageate"

/*: "Save the change?" :*/
fileprivate let str_labValue:[Character] = ["S","a","v","e"," ","t","h","e"," ","c","h","a"]
fileprivate let str_playerName:String = "if for block importnge?"

/*: "Cancel" :*/
fileprivate let str_userTitle:String = "add make exit view falseCancel"

/*: "Save" :*/
fileprivate let str_taskVoiceName:String = "equal value positionSave"

/*: "No more than 10 tags" :*/
fileprivate let str_mData:String = "No more self up"
fileprivate let str_viewData:[Character] = ["t","h","a","n"," ","1","0"," ","t","a","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol FromReactiveCompatible: NSObject {
    //: func freshSeleteTag()
    func playerByApp()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class MessageRecognizerDelegate: NameViewController {
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: FromReactiveCompatible?
    //: var tagtype: TagType = .AboutMe
    var tagtype: BringHomeSumLiteral = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [StartTransformable] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [RepairTransformable] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (String(str_freeSharedValue.prefix(6)) + str_withoutText.replacingOccurrences(of: "share", with: "m")).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(str_detailData) + String(str_modelValue)).localized
            //: break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(str_nameAppearEqualData.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.alright(), for: .normal)
        btn.setTitleColor(UIColor.alright(), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(giftClick), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: "TalkingTagCell")
        collectionView.register(BridgeViewCell.self, forCellWithReuseIdentifier: (String(str_executeOriginText.suffix(5)) + "ngTagC" + str_scaleViewTitle.replacingOccurrences(of: "push", with: "ll")))
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView")
        collectionView.register(ModelTextThen.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_selectionData.suffix(5)) + "ngTa" + String(str_toolContent.suffix(3)) + String(str_listModeData.suffix(8))))
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        noneItem()
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: InstanceReactiveCompatible = {
        //: let temp = TalkingTagLayout()
        let temp = InstanceReactiveCompatible()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension MessageRecognizerDelegate {
    //: func reqdata() {
    func noneItem() {
        //: if WithAdministratorAppManager.share.func__loadUserTagCacheData() == nil {
        if WithAdministratorAppManager.share.milk() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=WithAdministratorAppManager.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: BridgeMeasurable = WithAdministratorAppManager.share.milk() as! BridgeMeasurable
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                showOn(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                showOn(type: 2)
                //: break
            }
        }
    }

    //: func uploadTag() {
    func pull() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (String(str_throughEdgeText.suffix(7)))
            //: } else {
        } else {
            //: category = "interest"
            category = (str_popToValue.replacingOccurrences(of: "equal", with: "in") + str_listValue.replacingOccurrences(of: "color", with: "t"))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(str_tableNoData))] = str
        //: dict["category"] = category
        dict[(str_timeName.replacingOccurrences(of: "page", with: "c") + "gory")] = category
        //: ProgressHUD.show()
        StandardProgressHUD.indexRoom()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        QuantityeractionThen.total(params: dict) { [self] succeed, _, _ in
            //: ProgressHUD.dismiss()
            StandardProgressHUD.giftTo()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: WithAdministratorAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    WithAdministratorAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: WithAdministratorAppManager.share.loginUserMode.interest = self.seleteCellArray
                    WithAdministratorAppManager.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.playerByApp()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension MessageRecognizerDelegate {
    //: override func naviPopback() {
    override func frontPopback() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [StartTransformable] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = WithAdministratorAppManager.share.loginUserMode.aboutMe!
            modelArray = WithAdministratorAppManager.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = WithAdministratorAppManager.share.loginUserMode.interest!
            modelArray = WithAdministratorAppManager.share.loginUserMode.interest!
            //: break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = ManagerAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            VoiceAlertShow.customForTotal(message: (String(str_labValue) + String(str_playerName.suffix(4))).localized, leftBtnTitle: (String(str_userTitle.suffix(6))).localized, rightBtnTitle: (String(str_taskVoiceName.suffix(4))).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                VoiceAlertShow.bias()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                VoiceAlertShow.bias()
                //: self.uploadTag()
                self.pull()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func showOn(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [StartTransformable] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = WithAdministratorAppManager.share.loginUserMode.aboutMe!
            modelArray = WithAdministratorAppManager.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = WithAdministratorAppManager.share.loginUserMode.interest!
            modelArray = WithAdministratorAppManager.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.compareEnable(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func giftClick() {
        //: uploadTag()
        pull()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension MessageRecognizerDelegate: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkingTagCell", for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: (String(str_executeOriginText.suffix(5)) + "ngTagC" + str_scaleViewTitle.replacingOccurrences(of: "push", with: "ll")), for: indexPath) as! BridgeViewCell
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: StartTransformable = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name )
        cell.upPing(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.burn(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: BridgeViewCell = collectionView.cellForItem(at: indexPath) as! BridgeViewCell

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.compareEnable(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.compareEnable(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.atShow(showMsg: (String(str_mData.prefix(8)) + String(str_viewData)).localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.receive()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "TalkingTagHeaderView", for: indexPath) as! TalkingTagHeaderView
            let headView: ModelTextThen = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(str_selectionData.suffix(5)) + "ngTa" + String(str_toolContent.suffix(3)) + String(str_listModeData.suffix(8))), for: indexPath) as! ModelTextThen
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - NameMessageReactiveCompatible

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension MessageRecognizerDelegate: NameMessageReactiveCompatible {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func doingAt(_: InstanceReactiveCompatible, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func paradigm(_: InstanceReactiveCompatible, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func mentalPicture(_: InstanceReactiveCompatible, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func itemLayout(_: InstanceReactiveCompatible, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func referenceAt(_: InstanceReactiveCompatible, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
