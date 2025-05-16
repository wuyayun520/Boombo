
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_reportValue:[UInt8] = [0xea,0xed,0xea,0xf7,0xab,0xe0,0xec,0xe7,0xe6,0xf1,0xb9,0xaa,0xa3,0xeb,0xe2,0xf0,0xa3,0xed,0xec,0xf7,0xa3,0xe1,0xe6,0xe6,0xed,0xa3,0xea,0xee,0xf3,0xef,0xe6,0xee,0xe6,0xed,0xf7,0xe6,0xe7]

/*: "#222222" :*/
fileprivate let str_emptyDownValue:[Character] = ["#","2","2","2","2","2","2"]

/*: "#EAE8FE" :*/
fileprivate let str_clickName:[Character] = ["#","E","A","E","8","F"]
fileprivate let str_acceptText:[Character] = ["E"]

/*: "#D0D0D0" :*/
fileprivate let str_ofImageForName:String = "user index false#D0D0D0"

/*: "btn_me_edit_option_delete" :*/
fileprivate let str_clearData:[Character] = ["b","t","n","_","m","e","_","e"]
fileprivate let str_modelName:String = "distandard"
fileprivate let str_windowCornerText:String = "nor color guard time_opt"
fileprivate let str_tableValueTitle:String = "ELETE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BridgeViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class BridgeViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)
        self.addSubview(TagBtn)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_reportValue.map{$0^131}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (String(str_emptyDownValue))), for: .normal)
        //: temp.setTitleColor(UIColor.alright(), for: .selected)
        temp.setTitleColor(UIColor.alright(), for: .selected)
        //: temp.titleLabel?.font  = .liveAttention(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .liveAttention(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.backgroundBlock(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.backgroundBlock(color: UIColor(hex: (String(str_clickName) + String(str_acceptText)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(str_ofImageForName.suffix(7))))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.nearCounterval(name: "btn_me_edit_option_delete")
        temp.image = UIImage.nearCounterval(name: (String(str_clearData) + str_modelName.replacingOccurrences(of: "standard", with: "t") + String(str_windowCornerText.suffix(4)) + "ion_d" + str_tableValueTitle.lowercased()))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension BridgeViewCell {
    //: func fill(title: String)  {
    func upPing(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func burn(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        sumerest(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func receive() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        sumerest(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func anonym() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        sumerest(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func sumerest(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(str_ofImageForName.suffix(7))))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func aboveDeleteThat() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
