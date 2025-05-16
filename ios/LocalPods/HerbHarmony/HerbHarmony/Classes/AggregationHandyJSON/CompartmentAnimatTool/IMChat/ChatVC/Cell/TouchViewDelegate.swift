
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let str_makeValue:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "LocationPin" :*/
fileprivate let str_itemName:String = "Loaction view screen save if"
fileprivate let str_selectDeleteName:String = "pictio"

/*: "icon_site" :*/
fileprivate let str_searchText:String = "from push toicon_si"
fileprivate let str_backgroundValue:String = "blocke"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__

//: import UIKit
import UIKit

//: import MapKit
import MapKit

//: class TalkingChatMapMsgCell: TalkingChatBaseMsgCell {
class TouchViewDelegate: MTouchMsgCell {
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

        //: designView()
        fromView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: str_makeValue.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var mapView: MKMapView = {
    lazy var mapView: MKMapView = {
        //: let map = MKMapView.init()
        let map = MKMapView()
        //: map.layer.cornerRadius = 12.0
        map.layer.cornerRadius = 12.0
        //: map.layer.masksToBounds = true
        map.layer.masksToBounds = true
        //: map.isZoomEnabled = false
        map.isZoomEnabled = false
        //: map.isScrollEnabled = false
        map.isScrollEnabled = false
        //: map.delegate = self
        map.delegate = self
        //: return map
        return map
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension TouchViewDelegate {
    //: override func fill(with data: TCommonCellData) {
    override func fill(with data: TCommonCellData) {
        //: super.fill(with: data)
        super.fill(with: data)
        //: guard let mapCellData = data as? UserCellData else { return }
        guard let mapCellData = data as? UserCellData else { return }

        //: let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        let tempArr = mapCellData.msgModel.msgInfo.latlon.components(separatedBy: ",")
        //: if let latitude = tempArr.first , let longitude = tempArr.last {
        if let latitude = tempArr.first, let longitude = tempArr.last {
            //: let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            let location = CLLocationCoordinate2D(latitude: latitude.doubleValue, longitude: longitude.doubleValue)
            //: let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015)
            let span = MKCoordinateSpan(latitudeDelta: 0.015, longitudeDelta: 0.015) // 缩放级别
            //: let region = MKCoordinateRegion(center: location, span: span)
            let region = MKCoordinateRegion(center: location, span: span)
            //: self.mapView.setRegion(region, animated: false)
            self.mapView.setRegion(region, animated: false)
            //: self.addAnnotation(coordinate2D: location)
            self.listWith(coordinate2D: location)
        }
    }
}

// MARK: - Event

//: extension TalkingChatMapMsgCell {
extension TouchViewDelegate {
    //: func designView() {
    func fromView() {
        //: self.container.addSubview(mapView)
        self.container.addSubview(mapView)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.mapView.snp.remakeConstraints { make in
        self.mapView.snp.remakeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.width.equalTo(212)
            make.width.equalTo(212)
            //: make.height.equalTo(145)
            make.height.equalTo(145)
        }
    }
}

//: extension TalkingChatMapMsgCell : MKMapViewDelegate {
extension TouchViewDelegate: MKMapViewDelegate {
    //: private func addAnnotation(coordinate2D: CLLocationCoordinate2D) {
    private func listWith(coordinate2D: CLLocationCoordinate2D) {
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
        let identifier = (String(str_itemName.prefix(2)) + str_selectDeleteName.replacingOccurrences(of: "pic", with: "ca") + "nPin")
        //: var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView
        //: if annotationView == nil {
        if annotationView == nil {
            //: annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            //: annotationView?.canShowCallout = true
            annotationView?.canShowCallout = true
            //: annotationView?.image = UIImage.nearCounterval(name: "icon_site")
            annotationView?.image = UIImage.nearCounterval(name: (String(str_searchText.suffix(7)) + str_backgroundValue.replacingOccurrences(of: "block", with: "t")))
        }
        //: return annotationView
        return annotationView
    }
}
