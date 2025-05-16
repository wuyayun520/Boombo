
//: Declare String Begin

/*: "icon_kong_kong_default" :*/
fileprivate let str_firstName:[Character] = ["i"]
fileprivate let str_layerName:String = "con_kview view"
fileprivate let str_topPlayerTitle:String = "ng_dany player"

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_nameTitle:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

private func coequalHandle(point num: UInt8) -> UInt8 {
    return num ^ 41
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EmptyView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

/// 样式
//: public struct EmptyStyle {
public struct StackEmptyStyle {
    /// 提示文字
    //: public var TipsTitle = ""
    public var TipsTitle = ""

    /// 缺省图片
    //: public var TipsIcon = "icon_kong_kong_default"
    public var TipsIcon = (String(str_firstName) + String(str_layerName.prefix(5)) + "ong_ko" + String(str_topPlayerTitle.prefix(4)) + "efault")

    /// 添加下拉刷新，默认添加
    //: public var addHeaderRefresh = true
    public var addHeaderRefresh = true
}

//: typealias EmptyViewBlock = () -> Void
typealias EmptyViewBlock = () -> Void

//: class EmptyView: UIScrollView {
class EmptyView: UIScrollView {
    //: var emptyBlock: EmptyViewBlock?
    var emptyBlock: EmptyViewBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_nameTitle.map{coequalHandle(point: $0)}, encoding: .utf8)!)
    }

    //: public init(frame: CGRect, style: EmptyStyle) {
    public init(frame: CGRect, style: StackEmptyStyle) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .appBgColor()
        self.backgroundColor = .air()
        //: enptyStyle = style
        enptyStyle = style
        //: createUI()
        canGestureObserver()
        //: if enptyStyle.addHeaderRefresh {
        if enptyStyle.addHeaderRefresh {
            //: self.addHeaderRefresh { [weak self] in
            self.reloadStart { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.headerRefresh()
                self.put()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: self.endRefresh()
                    self.cellIndex()
                }
            }
        }
    }

    //: func headerRefresh() {
    func put() {
        //: if self.emptyBlock != nil {
        if self.emptyBlock != nil {
            //: emptyBlock!()
            emptyBlock!()
        }
    }

    // MARK: - UI

    //: func createUI() {
    func canGestureObserver() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(StatusBarHeight+192)
            make.top.equalToSuperview().offset(kLet_messageContent + 192)
        }

        //: self.addSubview(desLab)
        self.addSubview(desLab)
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }

    // MARK: - Lazy load

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.nearCounterval(name: self.enptyStyle.TipsIcon))
        let v = UIImageView(image: UIImage.nearCounterval(name: self.enptyStyle.TipsIcon))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .inexpensiveness()
        lab.textColor = .inexpensiveness()
        //: lab.font = .liveAttention(type: .Regular, fontSize: 16)
        lab.font = .liveAttention(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = self.enptyStyle.TipsTitle
        lab.text = self.enptyStyle.TipsTitle
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var enptyStyle: EmptyStyle = {
    lazy var enptyStyle: StackEmptyStyle = {
        //: let temp = EmptyStyle()
        let temp = StackEmptyStyle()
        //: return temp
        return temp
        //: }()
    }()
}
