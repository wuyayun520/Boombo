
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_blockName:[UInt8] = [0xc2,0xc5,0xc2,0xdf,0x83,0xc8,0xc4,0xcf,0xce,0xd9,0x91,0x82,0x8b,0xc3,0xca,0xd8,0x8b,0xc5,0xc4,0xdf,0x8b,0xc9,0xce,0xce,0xc5,0x8b,0xc2,0xc6,0xdb,0xc7,0xce,0xc6,0xce,0xc5,0xdf,0xce,0xcf]

private func dittyBagTo(video num: UInt8) -> UInt8 {
    return num ^ 171
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableDHoteViewCell.swift
//  DropMenu
//
//  Created by song on 2020/8/4.
//

//: import UIKit
import UIKit

//: class DropMenuCell: UITableViewCell {
class TableDHoteViewCell: UITableViewCell {
    //: lazy var menuImageView: UIImageView = self.makeMenuImageView()
    lazy var menuImageView: UIImageView = self.buttonBlock()
    //: lazy var menuTitleLabel: UILabel = self.makeMenuTitleLable()
    lazy var menuTitleLabel: UILabel = self.unagitated()

    //: var lineColor: UIColor = .white
    var lineColor: UIColor = .white

    //: var isFinalCell = false {
    var isFinalCell = false {
        //: didSet {
        didSet {
            //: if isFinalCell {
            if isFinalCell {
                //: lineLayer?.removeFromSuperlayer()
                lineLayer?.removeFromSuperlayer()
                //: } else {
            } else {
                //: drawLineSep()
                rank()
            }
        }
    }

    //: fileprivate var selectedBgView: UIView?
    fileprivate var selectedBgView: UIView?
    //: fileprivate var lineLayer: CALayer?
    fileprivate var lineLayer: CALayer?

    //: var menuModel: DropMenuModel? {
    var menuModel: ToCountimateMenuModel? {
        //: didSet {
        didSet {
            //: guard let menuModel = menuModel else { return }
            guard let menuModel = menuModel else { return }
            //: if (menuModel.image != nil) {
            if menuModel.image != nil {
                //: menuImageView.isHidden = false
                menuImageView.isHidden = false
                //: menuImageView.image = menuModel.image
                menuImageView.image = menuModel.image
                //: menuImageView.frame = CGRect(x: Config.menuContentMargin, y: (self.bounds.size.height - Config.menuImageWidth)*0.5, width: Config.menuImageWidth, height: Config.menuImageWidth)
                menuImageView.frame = CGRect(x: Config.menuContentMargin, y: (self.bounds.size.height - Config.menuImageWidth) * 0.5, width: Config.menuImageWidth, height: Config.menuImageWidth)
                //: menuTitleLabel.frame = CGRect(x: Config.menuContentMargin * 2 + Config.menuImageWidth, y: 0, width: self.bounds.size.width - (Config.menuContentMargin * 3 + Config.menuImageWidth), height: self.bounds.size.height)
                menuTitleLabel.frame = CGRect(x: Config.menuContentMargin * 2 + Config.menuImageWidth, y: 0, width: self.bounds.size.width - (Config.menuContentMargin * 3 + Config.menuImageWidth), height: self.bounds.size.height)
                //: } else {
            } else {
                //: menuImageView.isHidden = true
                menuImageView.isHidden = true
                //: menuTitleLabel.frame = CGRect(x: Config.menuContentMargin, y: 0, width: self.bounds.size.width - Config.menuContentMargin * 2, height: self.bounds.size.height)
                menuTitleLabel.frame = CGRect(x: Config.menuContentMargin, y: 0, width: self.bounds.size.width - Config.menuContentMargin * 2, height: self.bounds.size.height)
            }
            //: menuTitleLabel.text = menuModel.title
            menuTitleLabel.text = menuModel.title
        }
    }

    //: var dropMenuStyle: DropMenuStyle? {
    var dropMenuStyle: ModeMMenuStyle? {
        //: didSet {
        didSet {
            //: guard let style = dropMenuStyle else { return }
            guard let style = dropMenuStyle else { return }
            //: switch style {
            switch style {
            //: case .MenuDarkStyle:
            case .MenuDarkStyle:
                //: selectedBgView?.backgroundColor = UIColor.black.withAlphaComponent(0.2)
                selectedBgView?.backgroundColor = UIColor.black.withAlphaComponent(0.2)
                //: menuTitleLabel.textColor = .white
                menuTitleLabel.textColor = .white
                //: lineColor = .white
                lineColor = .white
            //: case .MenuLightStyle:
            case .MenuLightStyle:
                //: selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                //: menuTitleLabel.textColor = .black
                menuTitleLabel.textColor = .black
                //: lineColor = .lightGray
                lineColor = .lightGray
            //: case .MenuCustStyle:
            case .MenuCustStyle:
                //: selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                selectedBgView?.backgroundColor = UIColor.groupTableViewBackground
                //: menuTitleLabel.textColor = .black
                menuTitleLabel.textColor = .black
                //: lineColor = .lightGray
                lineColor = .lightGray
            }
        }
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupUI()
        increase()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_blockName.map{dittyBagTo(video: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: private func makeMenuImageView() -> UIImageView {
    private func buttonBlock() -> UIImageView {
        //: let imageView = UIImageView()
        let imageView = UIImageView()
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: imageView.contentMode = .scaleAspectFill
        imageView.contentMode = .scaleAspectFill
        //: return imageView
        return imageView
    }

    //: private func makeMenuTitleLable() -> UILabel {
    private func unagitated() -> UILabel {
        //: let titleLablel = UILabel()
        let titleLablel = UILabel()
        //: titleLablel.font = UIFont.systemFont(ofSize: Config.menuTitleFontSize)
        titleLablel.font = UIFont.systemFont(ofSize: Config.menuTitleFontSize)
        //: titleLablel.textAlignment = .center
        titleLablel.textAlignment = .center
        //: return titleLablel
        return titleLablel
    }

    //: private func setupUI() {
    private func increase() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: selectedBgView = UIView(frame: bounds)
        selectedBgView = UIView(frame: bounds)
        //: selectedBackgroundView = selectedBgView
        selectedBackgroundView = selectedBgView
        //: addSubview(menuImageView)
        addSubview(menuImageView)
        //: addSubview(menuTitleLabel)
        addSubview(menuTitleLabel)
    }

    //: private func drawLineSep() {
    private func rank() {
        //: let lineLayer = CAShapeLayer()
        let lineLayer = CAShapeLayer()
        //: lineLayer.strokeColor = UIColor.RGBA(230, 230, 230, 1.0).cgColor
        lineLayer.strokeColor = UIColor.equalRgba(230, 230, 230, 1.0).cgColor
        //: lineLayer.frame = bounds
        lineLayer.frame = bounds
        //: lineLayer.lineWidth = 0.5
        lineLayer.lineWidth = 0.5
        //: let sepline = UIBezierPath()
        let sepline = UIBezierPath()
        //: sepline.move(to: CGPoint(x: Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        sepline.move(to: CGPoint(x: Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        //: sepline.addLine(to: CGPoint(x: bounds.size.width - Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        sepline.addLine(to: CGPoint(x: bounds.size.width - Config.menuContentMargin, y: bounds.size.height - lineLayer.lineWidth))
        //: lineLayer.path = sepline.cgPath
        lineLayer.path = sepline.cgPath
        //: layer.addSublayer(lineLayer)
        layer.addSublayer(lineLayer)
        //: self.lineLayer = lineLayer
        self.lineLayer = lineLayer
    }
}
