
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_noValue:[UInt8] = [0xec,0xeb,0xec,0xf1,0xad,0xe6,0xea,0xe1,0xe0,0xf7,0xbf,0xac,0xa5,0xed,0xe4,0xf6,0xa5,0xeb,0xea,0xf1,0xa5,0xe7,0xe0,0xe0,0xeb,0xa5,0xec,0xe8,0xf5,0xe9,0xe0,0xe8,0xe0,0xeb,0xf1,0xe0,0xe1]

private func equalRemove(position num: UInt8) -> UInt8 {
    return num ^ 133
}

/*: "Edit" :*/
fileprivate let str_selectedVoiceVarData:String = "manager let return nameEdit"

/*: "btn_me_edit_add" :*/
fileprivate let str_modeName:String = "btn_equal self self"
fileprivate let str_unprecedentedData:String = "call a model name adddit_a"
fileprivate let str_sizeName:String = "poppop"

/*: "About me" :*/
fileprivate let str_talkCoinValue:String = "Abomin stack play input path"
fileprivate let str_sharedText:String = "gift equalut me"

/*: "My interests" :*/
fileprivate let str_tableContent:String = "all extension manager content toMy intere"
fileprivate let str_simultaneouslyValue:[Character] = ["s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleMeCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: enum TagType: Int {
enum BringHomeSumLiteral: Int {
    //: case AboutMe = 0
    case AboutMe = 0
    //: case Interests
    case Interests
}

//: typealias EditAboutBtnBlock = () -> Void
typealias EditAboutBtnBlock = () -> Void
//: typealias EditdeleteTagBlock = (UserSeleteTagModel) -> Void
typealias EditdeleteTagBlock = (StartTransformable) -> Void

//: class TalkingEditAboutMeCell: UITableViewCell {
class TitleMeCell: UITableViewCell {
    //: var tagtype: TagType = .AboutMe
    var tagtype: BringHomeSumLiteral = .AboutMe
    //: var editBtnBlock: EditAboutBtnBlock!
    var editBtnBlock: EditAboutBtnBlock!
    //: var deleteBlock: EditdeleteTagBlock!
    var deleteBlock: EditdeleteTagBlock!

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleLB)
        backView.addSubview(titleLB)
        //: backView.addSubview(addBtn)
        backView.addSubview(addBtn)
        //: backView.addSubview(tagview)
        backView.addSubview(tagview)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_noValue.map{equalRemove(position: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self).offset(-15)
            make.bottom.equalTo(self).offset(-15)
        }
        //: titleLB.snp.makeConstraints { make in
        titleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView.snp.top)
            make.top.equalTo(backView.snp.top)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: addBtn.snp.makeConstraints { make in
        addBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(backView.snp.trailing).offset(-12)
            make.trailing.equalTo(backView.snp.trailing).offset(-12)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
            //: make.centerY.equalTo(titleLB)
            make.centerY.equalTo(titleLB)
        }
        //: tagview.snp.makeConstraints { make in
        tagview.snp.makeConstraints { make in
            //: make.leading.equalTo(backView)
            make.leading.equalTo(backView)
            //: make.trailing.equalTo(backView)
            make.trailing.equalTo(backView)
            //: make.top.equalTo(titleLB.snp.bottom)
            make.top.equalTo(titleLB.snp.bottom)
            //: make.bottom.equalTo(backView).offset(-8)
            make.bottom.equalTo(backView).offset(-8)
        }
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: tagview.setframe(frame: tagview.frame)
        tagview.currentDown(frame: tagview.frame)
        //: tagview.tagContentAlignment = .left
        tagview.tagContentAlignment = .left
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MeanSunLanguageManager.shared.direction == .rightToLeft {
            //: tagview.tagContentAlignment = .right
            tagview.tagContentAlignment = .right
        }
        //: tagview.backgroundColor = .white
        tagview.backgroundColor = .white
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLB: UILabel = {
    lazy var titleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        lb.font = UIFont.liveAttention(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.occurrence()
        lb.textColor = UIColor.occurrence()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var addBtn: TalkingButton = {
    lazy var addBtn: RoomThen = {
        //: let btn = TalkingButton.init()
        let btn = RoomThen()
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(str_selectedVoiceVarData.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.occurrence(), for: .normal)
        btn.setTitleColor(UIColor.occurrence(), for: .normal)
        //: btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        btn.titleLabel?.font = UIFont.liveAttention(type: .Regular, fontSize: 16)
        //: btn.setImage(UIImage.nearCounterval(name: "btn_me_edit_add"), for: .normal)
        btn.setImage(UIImage.nearCounterval(name: (String(str_modeName.prefix(4)) + "me_e" + String(str_unprecedentedData.suffix(5)) + str_sizeName.replacingOccurrences(of: "pop", with: "d"))), for: .normal)
        //: btn.addTarget(self, action: #selector(addBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(need), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var tagview: TalkingTagView = {
    lazy var tagview: ContainerTagView = {
        //: let tag = TalkingTagView.init()
        let tag = ContainerTagView()
        //: return tag
        return tag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditAboutMeCell {
extension TitleMeCell {
    //: func setTitle() {
    func headingSet() {
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: titleLB.text = "About me".localized
            titleLB.text = (String(str_talkCoinValue.prefix(3)) + String(str_sharedText.suffix(5))).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: titleLB.text = "My interests".localized
            titleLB.text = (String(str_tableContent.suffix(9)) + String(str_simultaneouslyValue)).localized
            //: break
        }
    }

    //: func setMessage(_ messarray: [UserSeleteTagModel]) {
    func addInFile(_ messarray: [StartTransformable]) {
        //: tagview.titles = messarray
        tagview.titles = messarray
        //: tagview.freshView()
        tagview.later()
        //: tagview.deleteBlock = { tag in
        tagview.deleteBlock = { tag in
            //: if self.deleteBlock != nil {
            if self.deleteBlock != nil {
                //: self.deleteBlock(tag)
                self.deleteBlock(tag)
            }
        }
    }

    //: @objc func addBtnClick() {
    @objc func need() {
        //: if editBtnBlock != nil {
        if editBtnBlock != nil {
            //: editBtnBlock()
            editBtnBlock()
        }
    }
}
