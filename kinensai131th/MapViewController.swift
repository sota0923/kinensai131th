//
//  MapViewController.swift
//  kinensai131th
//
//  Created by 原奏太 on 2019/07/14.
//  Copyright © 2019年 原奏太. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

struct Annotation {
    let address: String
    let title: String?
    let subtitle: String?
}

class MapViewController: UIViewController {
   
    @IBOutlet var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubviews()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startUpdatingLocation()
        
        let annotation = Annotation(
            address: "愛知県名古屋市東区筒井一丁目2-34",
            title: "東海高校",
            subtitle: "記念祭開催中")
        add(with: annotation)
    }
    
    private func add(with annotation: Annotation) {
        CLGeocoder().geocodeAddressString(annotation.address) { [weak self] (placeMarks, error) in
            guard let placeMark = placeMarks?.first,
                let latitude = placeMark.location?.coordinate.latitude,
                let longitude = placeMark.location?.coordinate.longitude else { return }
            
            let point = MKPointAnnotation()
            point.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
            point.title = annotation.title
            point.subtitle = annotation.subtitle
            self?.mapView.addAnnotation(point)
        }
    }
    
    private func startUpdatingLocation() {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        default:
            break
        }
        locationManager.startUpdatingLocation()
    }
    
    private func configureSubviews() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 100
        locationManager.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.mapType = .standard
        mapView.userTrackingMode = .follow
        mapView.userTrackingMode = .followWithHeading
    }
}


// MARK: - MKMapViewDelegate
extension MapViewController: MKMapViewDelegate {
}


// MARK: - CLLocationManagerDelegate
extension MapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("位置情報の取得に成功しました")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        let alert = UIAlertController(title: nil, message: "位置情報の取得に失敗しました", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { (_) in
            self.dismiss(animated: true, completion: nil)
        }))
        present(alert, animated: true, completion: nil)
    }
    
    
        
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
