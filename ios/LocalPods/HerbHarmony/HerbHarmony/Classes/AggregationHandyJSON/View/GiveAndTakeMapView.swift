
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_managerGiftValue:[UInt8] = [0x62,0x65,0x62,0x7f,0x23,0x68,0x64,0x6f,0x6e,0x79,0x31,0x22,0x2b,0x63,0x6a,0x78,0x2b,0x65,0x64,0x7f,0x2b,0x69,0x6e,0x6e,0x65,0x2b,0x62,0x66,0x7b,0x67,0x6e,0x66,0x6e,0x65,0x7f,0x6e,0x6f]

private func centerIcon(before num: UInt8) -> UInt8 {
    return num ^ 11
}

/*: "Send Current Location" :*/
fileprivate let str_rangeThatText:String = "Sendstem make"
fileprivate let str_roomName:String = "ent Lstyle user"

/*: "Cancel" :*/
fileprivate let str_indexData:[Character] = ["C","a","n","c","e","l"]

/*: "%.5f,%.5f" :*/
fileprivate let str_sexImageTitle:String = "%.5f,voice make make main lab"

/*: "LocationPin" :*/
fileprivate let str_pageData:String = "Locatself i screen var"
fileprivate let str_modelValue:[Character] = ["i","o","n","P","i","n"]

/*: "icon_site" :*/
fileprivate let str_limitedText:String = "icon_skit background in"
fileprivate let str_thirdTitle:String = "iappe"

/*: "定位成功coordinate =   :*/
fileprivate let str_removeValue:String = "equal let else定位成功coo"
fileprivate let str_aboutManagerContent:String = "rstylena"

/*: "定位失败 =  :*/
fileprivate let str_rankData:[Character] = ["\u{5b9a}","\u{4f4d}","失","败"," ","="," "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GiveAndTakeMapView.swift
//  HerbHarmony
//
//  Created by Hemming on 2025/3/20.
//

//: import UIKit
import UIKit

//: import MapKit
import MapKit

//: class TalkingMapView: UIView {
class GiveAndTakeMapView: UIView {
    // 右边按钮点击事件
    //: var sendBlcok: ((_ coordinate: String) -> Void)?
    var sendBlcok: ((_ coordinate: String) -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: TalkingRecognizerDelegate?

    /// 是否点击底部发送按钮进入（发送时初始化不会传递经纬度）
    //: private var isSend: Bool = false
    private var isSend: Bool = false
    /// 是否查看消息列表中自己发送的地图
    //: private var lookSelf = false
    private var lookSelf = false

    //: private var isSetCenter: Bool = false
    private var isSetCenter: Bool = false

    //: init(frame: CGRect, isSelf: Bool = false, latlon: String?) {
    init(frame: CGRect, isSelf: Bool = false, latlon: String?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.lookSelf = isSelf
        self.lookSelf = isSelf
        //: self.isSend = (latlon == nil)
        self.isSend = (latlon == nil)
        //: setupSubviews()
        hiddenSubviews()
        //: setupSubViewsConstraint()
        rowConstraint()

        //: if isSend {
        if isSend {
            // 发送模式：只跟踪用户位置
            //: mapView.region.span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
            mapView.region.span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015) // 缩放级别
            //: mapView.showsUserLocation = true
            mapView.showsUserLocation = true
            //: mapView.userTrackingMode = .follow
            mapView.userTrackingMode = .follow
            //: } else {
        } else {
            // 查看模式：显示对方位置，同时也显示自己
            //: mapView.showsUserLocation = !lookSelf
            mapView.showsUserLocation = !lookSelf
            //: mapView.userTrackingMode = .none
            mapView.userTrackingMode = .none

            //: if let tempArr = latlon?.components(separatedBy: ","), let latitude = tempArr.first, let longitude = tempArr.last {
            if let tempArr = latlon?.components(separatedBy: ","), let latitude = tempArr.first, let longitude = tempArr.last {
                //: let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
                // 暂时设置地图中心为对方位置
                //: let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
                let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
                //: let region = MKCoordinateRegion(center: location, span: span)
                let region = MKCoordinateRegion(center: location, span: span)
                //: self.mapView.setRegion(region, animated: false)
                self.mapView.setRegion(region, animated: false)
                // 添加对方位置标记
                //: self.addAnnotation(coordinate2D: location)
                self.dismiss2d(coordinate2D: location)
            }
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_managerGiftValue.map{centerIcon(before: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var mapView: MKMapView = {
    private lazy var mapView: MKMapView = {
        //: let map = MKMapView()
        let map = MKMapView()
        //: map.delegate = self
        map.delegate = self
        //: return map
        return map
        //: }()
    }()

    //: private lazy var sendBtn: UIButton = {
    private lazy var sendBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.nameColors(colors: UIColor.modelColor(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Send Current Location".localized, for: .normal)
        btn.setTitle((String(str_rangeThatText.prefix(4)) + " Curr" + String(str_roomName.prefix(5)) + "ocation").localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(sendButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickButtonSend), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var cacleBtn: UIButton = {
    private lazy var cacleBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        btn.titleLabel?.font = UIFont.behindUpRoom(fontSize: 16)
        //: btn.setTitleColor(.alright(), for: .normal)
        btn.setTitleColor(.alright(), for: .normal)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(str_indexData)).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.alright().cgColor
        btn.layer.borderColor = UIColor.alright().cgColor
        //: btn.addTarget(self, action: #selector(cancleButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(missive), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMapView {
extension GiveAndTakeMapView {
    //: func show() {
    func bag() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = TalkingRecognizerDelegate(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.bluntEnd(view: self)
        //: popView?.showInView(view: IconThen.getWindow())
        popView?.inwards(view: IconThen.getBind())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func fullback() {
        //: popView?.dismissView()
        popView?.viewCover()
        //: popView = nil
        popView = nil
    }

    //: @objc private func sendButtonClick() {
    @objc private func clickButtonSend() {
//        let geocoder = CLGeocoder()
//        let location = CLLocation(latitude: self.mapView.centerCoordinate.latitude, longitude: self.mapView.centerCoordinate.longitude)
//
//        geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
//            if let error = error {
//               print("反地理编码错误: \(error.localizedDescription)")
//               return
//            }
//
//            guard let placemark = placemarks?.first else {
//               print("未找到地址信息")
//               return
//            }
//            // 获取地址信息
//            let address = [
//                placemark.country,              // 国家
//                placemark.administrativeArea,   // 省
//                placemark.locality,             // 市
//                placemark.subLocality,          // 区
//                placemark.thoroughfare,         // 街道
//                placemark.subThoroughfare       // 门牌号
//            ].compactMap { $0 }.joined(separator: "")
//
//             print("地址: \(address)")
//        }

        //: self.sendBlcok?(String(format: "%.5f,%.5f", self.mapView.userLocation.coordinate.latitude, self.mapView.userLocation.coordinate.longitude))
        self.sendBlcok?(String(format: "%.5f,%.5f", self.mapView.userLocation.coordinate.latitude, self.mapView.userLocation.coordinate.longitude))
        //: dismiss()
        fullback()
    }

    //: @objc private func cancleButtonClick() {
    @objc private func missive() {
        //: dismiss()
        fullback()
    }
}

// MARK: - Layout

//: extension TalkingMapView {
extension GiveAndTakeMapView {
    // 添加视图
    //: private func setupSubviews() {
    private func hiddenSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(mapView)
        contentView.addSubview(mapView)
        //: contentView.addSubview(cacleBtn)
        contentView.addSubview(cacleBtn)
        //: if isSend {
        if isSend {
            //: contentView.addSubview(sendBtn)
            contentView.addSubview(sendBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func rowConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: 218) + kLet_likeTitle)
            make.top.equalTo(actualWidth(w: 218) + kLet_likeTitle)
        }
        //: mapView.snp.makeConstraints { make in
        mapView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: cacleBtn.snp.makeConstraints { make in
        cacleBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            //: make.bottom.equalToSuperview().offset(-34)
            make.bottom.equalToSuperview().offset(-34)
        }
        //: if isSend {
        if isSend {
            //: sendBtn.snp.makeConstraints { make in
            sendBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.bottom.equalTo(cacleBtn.snp.top).offset(-18)
                make.bottom.equalTo(cacleBtn.snp.top).offset(-18)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 315), height: actualWidth(w: 50)))
            }
        }
    }
}

//: extension TalkingMapView : MKMapViewDelegate {
extension GiveAndTakeMapView: MKMapViewDelegate {
    //: private func addAnnotation(coordinate2D: CLLocationCoordinate2D) {
    private func dismiss2d(coordinate2D: CLLocationCoordinate2D) {
        //: let annotation = MKPointAnnotation()
        let annotation = MKPointAnnotation()
        //: annotation.coordinate = coordinate2D
        annotation.coordinate = coordinate2D
        //: mapView.addAnnotation(annotation)
        mapView.addAnnotation(annotation)
    }

    //: func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
    func mapView(_ mapView: MKMapView, viewFor annotation: any MKAnnotation) -> MKAnnotationView? {
        //: guard !(annotation is MKUserLocation) else { return nil }
        guard !(annotation is MKUserLocation) else { return nil }
        //: let identifier = "LocationPin"
        let identifier = (String(str_pageData.prefix(5)) + String(str_modelValue))
        //: var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView

        //: if annotationView == nil {
        if annotationView == nil {
            //: annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            //: annotationView?.canShowCallout = true
            annotationView?.canShowCallout = true
            //: annotationView?.image = UIImage.nearCounterval(name: "icon_site")
            annotationView?.image = UIImage.nearCounterval(name: (String(str_limitedText.prefix(6)) + str_thirdTitle.replacingOccurrences(of: "app", with: "t")))
        }
        //: return annotationView
        return annotationView
    }

    //: func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
    func mapView(_: MKMapView, didUpdate userLocation: MKUserLocation) {
        //: printLog(message: "定位成功coordinate =  \(userLocation.coordinate)")
        printLog(message: (String(str_removeValue.suffix(7)) + str_aboutManagerContent.replacingOccurrences(of: "style", with: "di") + "te =  ") + "\(userLocation.coordinate)")
        //: if isSend {
        if isSend {
            //: if !isSetCenter {
            if !isSetCenter {
                //: self.mapView.setCenter(userLocation.coordinate, animated: false)
                self.mapView.setCenter(userLocation.coordinate, animated: false)
                //: isSetCenter = true
                isSetCenter = true
            }
        }
    }

    //: func mapView(_ mapView: MKMapView, didFailToLocateUserWithError error: Error) {
    func mapView(_: MKMapView, didFailToLocateUserWithError error: Error) {
        //: printLog(message: "定位失败 = \(error)")
        printLog(message: (String(str_rankData)) + "\(error)")
    }
}
