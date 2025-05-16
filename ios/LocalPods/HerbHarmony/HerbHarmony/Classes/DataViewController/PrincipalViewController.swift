
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let str_dataValue:String = "head class true equal ifLaunc"
fileprivate let str_versionName:[Character] = ["h","I","m","a","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PrincipalViewController.swift
//  HerbHarmony
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: class NormalWaitingController: UIViewController {
class PrincipalViewController: UIViewController {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(str_dataValue.suffix(5)) + String(str_versionName)))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
        //: bgImgV.snp.makeConstraints { make in
        bgImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
