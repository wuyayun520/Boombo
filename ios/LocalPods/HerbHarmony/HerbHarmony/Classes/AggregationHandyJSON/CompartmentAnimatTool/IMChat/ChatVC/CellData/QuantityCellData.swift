
//: Declare String Begin

/*: "bg_chat_honey_left" :*/
fileprivate let str_makeData:String = "bg_chalet not view index value"
fileprivate let str_toContent:String = "ney_false remove component"

/*: "bg_chat_honey_right" :*/
fileprivate let str_withText:String = "bg_image index"
fileprivate let str_pathData:[Character] = ["c","h","a","t","_","h","o","n","e","y","_","r","i","g","h","t"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_imageData:[UInt8] = [0x7a,0x7d,0x7a,0x67,0x3b,0x70,0x7c,0x77,0x76,0x61,0x29,0x3a,0x33,0x7b,0x72,0x60,0x33,0x7d,0x7c,0x67,0x33,0x71,0x76,0x76,0x7d,0x33,0x7a,0x7e,0x63,0x7f,0x76,0x7e,0x76,0x7d,0x67,0x76,0x77]

private func compareFatal(succeed num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: \n" :*/
fileprivate let str_myContent:[Character] = ["\n"]

/*: "#FA74B7" :*/
fileprivate let str_cellName:String = "to file to count#F"
fileprivate let str_layerContent:String = "A74model"

/*: "icon_coin" :*/
fileprivate let str_nearFileText:String = "icon_covar show"
fileprivate let str_topText:[Character] = ["i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuantityCellData.swift
//  HerbHarmony
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: @objcMembers public class QuantityCellData: TalkingChatMsgBaseCellData {
@objcMembers public class QuantityCellData: CollectionReactiveCompatible {
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero

    //: override public init(direction: TMsgDirection) {
    override public init(direction: TMsgDirection) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_chat_honey_left")
            self.bubbleImg = UIImage.inwardsLoad(name: (String(str_makeData.prefix(6)) + "t_ho" + String(str_toContent.prefix(4)) + "left"))
            //: self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 40, bottom: 20, right: 50), resizingMode: .stretch)
            self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 40, bottom: 20, right: 50), resizingMode: .stretch)
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_chat_honey_right")
            self.bubbleImg = UIImage.inwardsLoad(name: (String(str_withText.prefix(3)) + String(str_pathData)))
            //: self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 50, bottom: 20, right: 40), resizingMode: .stretch)
            self.bubbleImg = self.bubbleImg?.resizableImage(withCapInsets: UIEdgeInsets(top: 30, left: 50, bottom: 20, right: 40), resizingMode: .stretch)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_imageData.map{compareFatal(succeed: $0)}, encoding: .utf8)!)
    }

    //: override public func contentSize() -> CGSize {
    override public func contentSize() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = kLet_senseContent - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFLOAT_MAX), text: self.attributedString)
        //: let yySize = yyLayout?.textBoundingRect.size ?? .zero
        let yySize = yyLayout?.textBoundingRect.size ?? .zero
        //: var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize
        //: self.textOrigin = CGPoint(x: 16, y: 16)
        self.textOrigin = CGPoint(x: 16, y: 16)
        //: temTextSize.height += 32
        temTextSize.height += 32
        //: temTextSize.width += 32
        temTextSize.width += 32
        //: if self.direction == .MsgDirectionIncoming && self.msgModel.msgInfo.wantGift.sendStatus != 1 {
        if self.direction == .MsgDirectionIncoming && self.msgModel.msgInfo.wantGift.sendStatus != 1 {
            //: temTextSize.height += 30
            temTextSize.height += 30
        }
        //: return CGSize(width: max(80, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(80, temTextSize.width), height: temTextSize.height)
    }

    //: public lazy var attributedString: NSMutableAttributedString = {
    public lazy var attributedString: NSMutableAttributedString = {
        //: let attr = formatGiftMsgString(giftModel: self.msgModel)
        let attr = imageApp(giftModel: self.msgModel)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatGiftMsgString(giftModel: DataNameModel) -> NSMutableAttributedString {
    func imageApp(giftModel: DataNameModel) -> NSMutableAttributedString {
        //: let attr = NSMutableAttributedString.init()
        let attr = NSMutableAttributedString()
        //: let font = UIFont.unprecedented(fontSize: 16)
        let font = UIFont.unprecedented(fontSize: 16)
        //: let giftname = changeGiftName(giftmodel: giftModel.msgInfo.wantGift)
        let giftname = sharedGiftmodel(giftmodel: giftModel.msgInfo.wantGift)
        //: let str = "\(giftModel.msgInfo.wantGift.content)"
        let str = "\(giftModel.msgInfo.wantGift.content)"
        //: let attr1 = NSMutableAttributedString.init(string: str, attributes: [.font: font, .foregroundColor: UIColor.occurrence()])
        let attr1 = NSMutableAttributedString(string: str, attributes: [.font: font, .foregroundColor: UIColor.occurrence()])
        //: let attr2 = NSMutableAttributedString.init(string: "\(giftname)\n", attributes: [.font: font, .foregroundColor: UIColor.init(hex: "#FA74B7")!])
        let attr2 = NSMutableAttributedString(string: "\(giftname)\n", attributes: [.font: font, .foregroundColor: UIColor(hex: (String(str_cellName.suffix(2)) + str_layerContent.replacingOccurrences(of: "model", with: "B7")))!])
        //: let attr3 = NSMutableAttributedString.init(string: "\(giftModel.msgInfo.wantGift.giftPrice)", attributes: [.font: font, .foregroundColor: UIColor.init(hex: "#FA74B7")!])
        let attr3 = NSMutableAttributedString(string: "\(giftModel.msgInfo.wantGift.giftPrice)", attributes: [.font: font, .foregroundColor: UIColor(hex: (String(str_cellName.suffix(2)) + str_layerContent.replacingOccurrences(of: "model", with: "B7")))!])

        //: let giftImgV = UIImageView.init()
        let giftImgV = UIImageView()
        //: giftImgV.size = CGSize.init(width: 29, height: 29)
        giftImgV.size = CGSize(width: 29, height: 29)
        //: giftImgV.contentMode = .scaleAspectFit
        giftImgV.contentMode = .scaleAspectFit
        //: giftImgV.setGiftUrlImage(urlStr: giftModel.msgInfo.wantGift.giftIcon)
        giftImgV.setStr(urlStr: giftModel.msgInfo.wantGift.giftIcon)
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV, contentMode: .center, attachmentSize: giftImgV.size, alignTo: font, alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV, contentMode: .center, attachmentSize: giftImgV.size, alignTo: font, alignment: .center)
        //: let giftImgV2 = UIImageView.init()
        let giftImgV2 = UIImageView()
        //: giftImgV2.size = CGSize.init(width: 14, height: 14)
        giftImgV2.size = CGSize(width: 14, height: 14)
        //: giftImgV2.contentMode = .scaleAspectFit
        giftImgV2.contentMode = .scaleAspectFit
        //: giftImgV2.image = UIImage.nearCounterval(name: "icon_coin")
        giftImgV2.image = UIImage.nearCounterval(name: (String(str_nearFileText.prefix(7)) + String(str_topText)))
        //: let attachText2 = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV2, contentMode: .center, attachmentSize: giftImgV2.size, alignTo: font, alignment: .center)
        let attachText2 = NSMutableAttributedString.yy_attachmentString(withContent: giftImgV2, contentMode: .center, attachmentSize: giftImgV2.size, alignTo: font, alignment: .center)

        //: attr.append(attr1)
        attr.append(attr1)
        //: attr.append(attachText)
        attr.append(attachText)
        //: attr.append(attr2)
        attr.append(attr2)
        //: attr.append(attachText2)
        attr.append(attachText2)
        //: attr.append(attr3)
        attr.append(attr3)

        //: return attr
        return attr
    }

    //: func changeGiftName(giftmodel: TelecastingModel) -> String {
    func sharedGiftmodel(giftmodel: TelecastingModel) -> String {
        //: var gameName = giftmodel.giftName
        var gameName = giftmodel.giftName
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if DoingAddrTool.share.interfaceLang == ConditionCollection.en.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.en.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ConditionCollection.en.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.ar.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.ar.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ConditionCollection.ar.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.es.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.es.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ConditionCollection.es.rawValue] as? NSString ?? ""
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if DoingAddrTool.share.interfaceLang == ConditionCollection.pt.rawValue {
            //: gameName = giftmodel.giftNameI18n[LangType.pt.rawValue] as? NSString ?? ""
            gameName = giftmodel.giftNameI18n[ConditionCollection.pt.rawValue] as? NSString ?? ""
        }
        //: return gameName as String
        return gameName as String
    }
}
