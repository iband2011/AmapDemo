//
//  ViewController.swift
//  AmapDemo
//
//  Created by iband on 2021/7/2.
//

import UIKit

class ViewController: UIViewController, MAMapViewDelegate, AMapLocationManagerDelegate {

    var mapView: MAMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        mapView = MAMapView(frame: .zero)
        view.addSubview(mapView)
        mapView.snp.makeConstraints { make in
            make.left.top.right.bottom.equalToSuperview()
        }
        mapView.delegate = self
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        mapView.mapType = .standard
        mapView.isRotateCameraEnabled = false
        mapView.showsCompass = false
        mapView.zoomLevel = 13
    }
    
    func mapViewRegionChanged(_ mapView: MAMapView!) {
        
    }
    
    func mapViewRequireLocationAuth(_ locationManager: CLLocationManager!) {
        locationManager.requestAlwaysAuthorization()
    }
}

