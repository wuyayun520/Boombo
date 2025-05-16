//
//  MyEditProfilesVC.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

import UIKit

class MyEditProfilesVC: NameViewController {

    var seleteAboutme: [StartTransformable] = []
    var seleteInters: [StartTransformable] = []
    
    var isdeleteAboutme = false
    var isdeleteInters = false
    
    var isTips = false
    
    var PhotoArray: [PossibilityHandyJSON] = []
    var seletePhotoArray: [UIImage] = []
    var DeletePhotoArray: [String] = []
    
    var nameStr: String = ""
    var birthday: String = ""
    var signStr: String = "nil"
    
    private var VideoIconPath = ""
    private var videoPath = ""
    private var videoStatus = -3     // 视频审核状态：0待审核 1审核通过 -1审核拒绝 -3未上传
    private var isChangeVideo = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideNavi = false
        self.view.backgroundColor = UIColor.air()
        self.title = "Edit profiles".localized
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        btn.setTitle("Done".localized, for: .normal)
        btn.setTitleColor(UIColor.init(hex: "#999999"), for: .normal)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Medium, fontSize: 15)
        btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        let item = UIBarButtonItem(customView: btn)
        self.navigationItem.rightBarButtonItem=item
        
        seleteAboutme = WithAdministratorAppManager.share.loginUserMode.aboutMe!
        seleteInters = WithAdministratorAppManager.share.loginUserMode.interest!
        designView()
        GetGallery()
        getVideoInfo()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    deinit {
        StandardProgressHUD.giftTo()
        NotificationCenter.default.removeObserver(self)
    }
         
    // MARK: - Lazy load
    lazy var MainTable: UITableView = {
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        table.backgroundColor = UIColor.clear
        return table
    }()
}

// MARK: - Laod data
extension MyEditProfilesVC {
    func GetGallery() {
        var dict = Dictionary<String, Any>()
        dict["uid"] = WithAdministratorAppManager.share.loginUserMode.userID
        QuantityeractionThen.subDraft(params: dict) { succeed, result, errorModel in
            if succeed {
                let array: Array =  result as! Array<Any>
                if array.count>0 {
                    self.PhotoArray.removeAll()
                }
                if let datas = Array<PossibilityHandyJSON>.deserialize(from: array as? Array) {
                    self.PhotoArray.append(contentsOf: (datas as? [PossibilityHandyJSON])!)
                }
                self.MainTable.reloadData()
            }
        }
    }
    override func frontPopback() {
        
        for i in MainTable.visibleCells {
            if i.reuseIdentifier == "ChangeViewCell" {
                let namecell: ChangeViewCell = i as! ChangeViewCell
                namecell.nameTF.resignFirstResponder()
            }
            if i.reuseIdentifier == "ToThen" {
                let namecell: ToThen = i as! ToThen
                namecell.textView.resignFirstResponder()
            }
        }
        if (nameStr.count > 0&&WithAdministratorAppManager.share.loginUserMode.nickname != nameStr)||( birthday.count > 0&&WithAdministratorAppManager.share.loginUserMode.birthday != self.birthday)||(signStr != "nil" && WithAdministratorAppManager.share.loginUserMode.signature != signStr)||self.seletePhotoArray.count>0||self.DeletePhotoArray.count>0||isdeleteAboutme||isdeleteInters || isChangeVideo {
            
            let config = ManagerAlertConfig()
            config.alignment = .center
            VoiceAlertShow.customForTotal(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
                guard let self = self else {return}
                VoiceAlertShow.bias()
                self.navigationController?.popViewController(animated: true)
                
            }, rightBlock: { [weak self] in
                guard let self = self else {return}
                VoiceAlertShow.bias()
                self.uploadTool(isBack: true)
            }, config: config)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
   
    }
 
    @objc func doneBtnClick() {
        uploadTool(isBack: false)
    }
    func uploadTool(isBack: Bool) {
        
        for i in MainTable.visibleCells {
            if i.reuseIdentifier == "ChangeViewCell" {
                let namecell: ChangeViewCell = i as! ChangeViewCell
                namecell.nameTF.resignFirstResponder()
            }
            if i.reuseIdentifier == "ToThen" {
                let namecell: ToThen = i as! ToThen
                namecell.textView.resignFirstResponder()
            }
        }
        
        var dict = Dictionary<String, Any>()
        
        if nameStr.count > 0 && WithAdministratorAppManager.share.loginUserMode.nickname != nameStr {
            dict["nickname"] = nameStr
        }
        if birthday.count > 0 && WithAdministratorAppManager.share.loginUserMode.birthday != birthday {
            dict["birthday"] = birthday
        }
        if signStr != "nil" && WithAdministratorAppManager.share.loginUserMode.signature != signStr {
            dict["desc"] = signStr
        }
        
        photoAndTagTool(BackT: isBack, isTips: dict.count == 0)
        
        if VideoIconPath.count>1 && videoPath.count>1 && isChangeVideo == true && WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue {
            uploadVideo()
        }
        
        if dict.count == 0 {
            return
        }
        
        StandardProgressHUD.indexRoom()

        QuantityeractionThen.fixing(params: dict) { [weak self] succeed, result, errorModel in
            StandardProgressHUD.giftTo()
            guard let self = self else {return}
            if succeed {
                self.successMsg(showMsg: "Modify the success".localized)
                
                if self.nameStr.count > 0 {
                    WithAdministratorAppManager.share.loginUserMode.nickname = self.nameStr
                }
                if self.birthday.count > 0 {
                    WithAdministratorAppManager.share.loginUserMode.birthday = self.birthday
                }
                WithAdministratorAppManager.share.loginUserMode.signature = self.signStr
                
                if isBack {
                    self.navigationController?.popViewController(animated: true)
                }
                
            } else {
                if errorModel?.errorCode != 100 {
                    self.atShow(showMsg: errorModel!.errorMsg )
                }
            }
        }
    }
    
    func photoAndTagTool(BackT: Bool, isTips: Bool) {
        self.isTips = isTips
        if self.DeletePhotoArray.count>0 {
            // 先删再加
            deletePhoto()
        } else {
            if self.seletePhotoArray.count>0 {
                uploadPhoto()
            }
        }
        
        if isdeleteAboutme {
            deleteTag(type: 1)
        }
        if isdeleteInters {
            deleteTag(type: 2)
        }
        if BackT {
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    /// 上传相册
    func uploadPhoto() {
        for i in 0..<seletePhotoArray.count {
            var dict = Dictionary<String, Any>()
            let resultData: NSData = seletePhotoArray[i].lengthPicAccountingData()! as NSData
            dict["pic"] = resultData
            StandardProgressHUD.indexRoom()
            QuantityeractionThen.textQuantity(params: dict) { [weak self] succeed, result, errorModel in
                StandardProgressHUD.giftTo()
                guard let self = self else {return}
                if succeed {
                    if  self.isTips {
                        self.isTips = false
                        self.successMsg(showMsg: "Modify the success".localized)
                    }
                    self.seletePhotoArray.removeAll()
                    self.GetGallery()
                }
            }
        }
    }
    
    /// 删除相册
    func deletePhoto() {
        var str = DeletePhotoArray.joined(separator: ",")
        str = "[\(str)]"
        var dict = Dictionary<String, Any>()
        dict["pids"] = str
        StandardProgressHUD.indexRoom()
        QuantityeractionThen.enable(params: dict) { [weak self] succeed, result, errorModel in
            
            guard let self = self else {return}
            if self.seletePhotoArray.count>0 {
                self.uploadPhoto()
            } else {
                StandardProgressHUD.giftTo()
            }
            if succeed {
                if  self.isTips {
                    self.isTips = false
                    self.successMsg(showMsg: "Modify the success".localized)
                }

                self.DeletePhotoArray.removeAll()
                self.GetGallery()
            }
        }
        
    }
    
    /// 修改tag
    func deleteTag(type: Int) {
        var array: [StartTransformable] = []
        var category = ""
        if type==1 {
            array=seleteAboutme
            category="aboutMe"
        } else {
            array=seleteInters
            category="interest"
        }
        var str = ""
        for i in 0..<array.count {
            let model = array[i]
            str += model.tag_id!
            if i<array.count-1 {
                str += ","
            }
        }
        var dict = Dictionary<String, Any>()
        dict["tagIds"] = str
        dict["category"] = category
        StandardProgressHUD.indexRoom()
        QuantityeractionThen.total(params: dict) { [weak self] succeed, result, errorModel in
            StandardProgressHUD.giftTo()
            guard let self = self else {return}
            if succeed {
                if  self.isTips {
                    self.isTips = false
                    self.successMsg(showMsg: "Modify the success".localized)
                }
                if type==1 {
                    self.isdeleteAboutme = false
                    WithAdministratorAppManager.share.loginUserMode.aboutMe = self.seleteAboutme
                } else {
                    self.isdeleteInters = false
                    WithAdministratorAppManager.share.loginUserMode.interest = self.seleteInters
                }
            }
        }
    }
    
    /// 上传视频
    func uploadVideo() {
        StandardProgressHUD.indexRoom()
        AssociatedStateDirectorSignatureProvider.shared.net(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            guard succeed else {
                StandardProgressHUD.giftTo()
                self.atShow(showMsg: "An error occurred, please try again".localized)
                return
            }
            
            var dict = Dictionary<String, Any>()
            dict["imgUrl"] = coverUrl
            dict["videoUrl"] = videoUrl
           
            QuantityeractionThen.blackOutWearerRangeTelevisionParamsAdjust(params: dict) { [weak self] succeed, result, errorModel in
                StandardProgressHUD.giftTo()
                guard let self = self else { return }
               
                guard succeed else {
                    self.atShow(showMsg: "An error occurred, please try again".localized)
                    return
                }
                self.VideoIconPath = ""
                self.videoPath = ""
                self.isChangeVideo = false
                self.videoStatus = 0
                self.successMsg(showMsg: "Video cover submitted successfully".localized)
                for i in self.MainTable.visibleCells {
                    if i.reuseIdentifier == "ContainerView" {
                        let videocell: ContainerView = i as! ContainerView
                        videocell.deal(videoPlayPath: dict["videoUrl"] as! String)
                        videocell.bedSizeMidstreamAccumulation(status: self.videoStatus)
                    }
                }
            }
        }
    }
    
    func getVideoInfo() {
        QuantityeractionThen.attention { [weak self] succeed, result, errorModel in
            guard let self = self else {return}
            if succeed {
                guard let dict = result as? Dictionary<String, Any> else {return}
                self.videoPath = dict["video_url"] as! String
                self.VideoIconPath = dict["img_url"] as! String
                self.videoStatus = dict["status"] as? Int ?? -3
                self.MainTable.reloadData()
            }
        }
        
    }
}

// MARK: - Event
extension MyEditProfilesVC {
    @objc func keyboardShowBeHidden(notification: NSNotification) {
        let info = notification.userInfo
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height

        for i in MainTable.visibleCells {
            if i.reuseIdentifier == "ChangeViewCell" {
                let namecell: ChangeViewCell = i as! ChangeViewCell
                if namecell.nameTF.isFirstResponder {
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                }
            }
            if i.reuseIdentifier == "ToThen" {
                let namecell: ToThen = i as! ToThen
                if namecell.textView.isFirstResponder {
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension MyEditProfilesVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            if WithAdministratorAppManager.share.loginUserMode.sex == MiniSubqueryConvertible.female.rawValue {
                return 226
            }
            return 0
            
        } else if indexPath.section == 1 {
            let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let Y = 46+sizewh*3+18
            let cellheiht = Y+12+26+15
            return CGFloat(cellheiht)
        } else if indexPath.section == 2 {
            return 107+15
        } else if indexPath.section == 3 {
            return 64
        } else if indexPath.section == 4 {
            return 176
        } else if indexPath.section == 5 || indexPath.section == 6 {
            if indexPath.section == 5 && seleteAboutme.count>0 {
                return self.computeCellheight(type: 1)+64
            } else if indexPath.section == 6 && seleteInters.count>0 {
                return self.computeCellheight(type: 2)+64
            }
            return 64
        }
        return 56
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let identifier = "ContainerView"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ContainerView
            if cell == nil {
                cell = ContainerView(style: .default, reuseIdentifier: identifier)
            }
            cell?.bedSizeMidstreamAccumulation(status: self.videoStatus)
            if VideoIconPath.count>1 && videoPath.count>1 {
                cell?.date(iconPath: VideoIconPath)
                cell?.deal(videoPlayPath: videoPath)
            }
            cell?.seleteBlock = { [weak self] imagPath, VideoPath in
                guard let self = self else {return}
                self.VideoIconPath = imagPath
                self.videoPath = VideoPath
                self.isChangeVideo = true
            }
            cell?.deleteBlock = { [weak self] in
                guard let self = self else {return}
                self.VideoIconPath = ""
                self.videoPath = ""
                self.isChangeVideo = false
            }
            return cell!
            
        } else if indexPath.section == 1 {
            let identifier = "InduePhotoCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? InduePhotoCell
            if cell == nil {
                cell = InduePhotoCell(style: .default, reuseIdentifier: identifier)
            }
            if PhotoArray.count>0 {
                cell?.request(selete: PhotoArray)
            } else {
                cell?.after()
            }
            cell?.delegate = self
            return cell!
        } else if indexPath.section == 2 {
            let identifier = "ChangeViewCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ChangeViewCell
            if cell == nil {
                cell = ChangeViewCell(style: .default, reuseIdentifier: identifier)
            }
            cell?.nameBlock = { [weak self] name in
                guard let self = self else {return}
                self.nameStr = name
                
            }
            return cell!
        } else if indexPath.section == 3 {
            let identifier = "MagnitudeimateView"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? MagnitudeimateView
            if cell == nil {
                cell = MagnitudeimateView(style: .default, reuseIdentifier: identifier)
            }
            cell?.birthdayBlock = { [weak self] day in
                guard let self = self else {return}
                self.birthday = day
            }
            return cell!
        } else if indexPath.section == 4 {
            let identifier = "ToThen"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ToThen
            if cell == nil {
                cell = ToThen(style: .default, reuseIdentifier: identifier)
            }
            cell?.signBlock = { [weak self] sign in
                guard let self = self else {return}
                self.signStr = sign
            }
           
            return cell!
        } else if indexPath.section == 5 || indexPath.section == 6 {
            let identifier = "TitleMeCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TitleMeCell
            if cell == nil {
                cell = TitleMeCell(style: .default, reuseIdentifier: identifier)
            }
            if indexPath.section == 5 {
                cell!.tagtype = .AboutMe
            } else {
                cell!.tagtype = .Interests
            }
            cell?.headingSet()
            if seleteAboutme.count>0 && indexPath.section == 5 {
                cell?.addInFile(seleteAboutme)
            }
            if seleteInters.count>0 && indexPath.section == 6 {
                cell?.addInFile(seleteInters)
            }
            cell?.editBtnBlock = { [weak self] in
                guard let self = self else {return}
                let vc = MessageRecognizerDelegate.init()
                vc.delegate = self
                if indexPath.section == 5 {
                    vc.tagtype = .AboutMe
                } else {
                    vc.tagtype = .Interests
                }
                self.navigationController!.pushViewController(vc, animated: true)
            }
            cell?.deleteBlock = { [weak self] tag in
                guard let self = self else {return}
                if indexPath.section == 5 {
                    if  self.seleteAboutme.contains(where: { $0.compareEnable(compareTo: tag)}) {
                        self.seleteAboutme.removeAll(where: {$0.compareEnable(compareTo: tag)})
                        self.isdeleteAboutme = true
                    }
                } else {
                    if  self.seleteInters.contains(where: { $0.compareEnable(compareTo: tag)}) {
                        self.seleteInters.removeAll(where: {$0.compareEnable(compareTo: tag)})
                        self.isdeleteInters = true
                    }
                }
            }
            return cell!
        } else {
            let identifier = "UITableViewCell"
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            if cell == nil {
                cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            }
            return cell!
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
   
    func computeCellheight(type: Int) -> CGFloat {
        let itemSpacing = CGFloat(8)
        var contentWidthInRow = CGFloat(0)
        var array = Array<StartTransformable>()
        if type == 1 {
            array = self.seleteAboutme
        } else {
            array = self.seleteInters
        }
        var contentHeightInRow = CGFloat(30)
        
        for item in array {
            var tag_name = ""
            if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
                tag_name = item.tag_name_ar
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
                tag_name = item.tag_name_es
            } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
                tag_name = item.tag_name_pt
            }
            if tag_name.count <= 0 {
                tag_name = item.tag_name
            }
            let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.liveAttention(type: .Regular, fontSize: 15)], context: nil)
            let tagWidth = rect.width + 30
            if contentWidthInRow + tagWidth + itemSpacing > ScreenWidth-54 {
                // 需要换行
                contentHeightInRow += (10 + 30)
                contentWidthInRow = itemSpacing
            } else {
                contentWidthInRow += (tagWidth+itemSpacing)
            }
        }
        if array.count == 10 {
            contentHeightInRow += 40
        }
        return contentHeightInRow + 12
    }
}

// MARK: - FromReactiveCompatible
extension MyEditProfilesVC: FromReactiveCompatible {
    func playerByApp() {
        seleteAboutme =  WithAdministratorAppManager.share.loginUserMode.aboutMe!
        seleteInters =  WithAdministratorAppManager.share.loginUserMode.interest!
        self.MainTable .reloadData()
    }
}

// MARK: - ShowThen
extension MyEditProfilesVC: ShowThen {
    /// 添加本地图片
    func toVignette(_ icon: [UIImage]) {
        for i in icon {
            self.seletePhotoArray.append(i)
            var model = PossibilityHandyJSON.init()
            model.imagePic = i
            model.isLocal = true
            PhotoArray.append(model)
        }
    }
    /// 删除本地相册选择的图片
    func followCollection(_ icon: UIImage) {
        if  seletePhotoArray.contains(where: {$0 == icon}) {
            seletePhotoArray.removeAll(where: {$0 == icon})
        }
        var seleteIndex = -1
        for i in 0..<PhotoArray.count {
            if icon == PhotoArray[i].imagePic {
                seleteIndex =  i
                break
            }
        }
        if seleteIndex>=0 && seleteIndex<PhotoArray.count {
            PhotoArray.remove(at: seleteIndex)
            self.MainTable.reloadData()
        }
    }
    /// 删除后台相册的图片
    func sumernalRepresentation(_ iconUid: String) {
        var seleteIndex = -1
        for i in 0..<PhotoArray.count {
            if iconUid == PhotoArray[i].uid {
                seleteIndex =  i
                self.DeletePhotoArray.append(iconUid)
            }
        }
        if seleteIndex>=0 && seleteIndex<PhotoArray.count {
            PhotoArray.remove(at: seleteIndex)
            self.MainTable.reloadData()
        }
    }
}

// MARK: - UI
extension MyEditProfilesVC {
    private func designView() {
        self.view.addSubview(MainTable)
        MainTable.register(ContainerView.self, forCellReuseIdentifier: "ContainerView")
        MainTable.register(InduePhotoCell.self, forCellReuseIdentifier: "InduePhotoCell")
        MainTable.register(ChangeViewCell.self, forCellReuseIdentifier: "ChangeViewCell")
        MainTable.register(MagnitudeimateView.self, forCellReuseIdentifier: "MagnitudeimateView")
        MainTable.register(ToThen.self, forCellReuseIdentifier: "ToThen")
        MainTable.register(TitleMeCell.self, forCellReuseIdentifier: "TitleMeCell")
        MainTable.separatorStyle = .none
        MainTable.dataSource = self
        MainTable.delegate = self
        MainTable.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalTo(self.view)
            make.top.equalTo(self.view).offset(20)
        }
    }
}
