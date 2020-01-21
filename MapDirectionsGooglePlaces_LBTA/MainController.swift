//
//  MainController.swift
//  MapDirectionsGooglePlaces_LBTA
//
//  Created by Frank Cipolla on 1/17/20.
//  Copyright © 2020 Frank Cipolla. All rights reserved.
//

import UIKit
import MapKit
import LBTATools

class MainController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let mapView = MKMapView(frame: view.frame)
        let mapView = MKMapView() // now using auto layout
        
        view.addSubview(mapView)
        
        // Use LBTATools
        mapView.fillSuperview()
        
        mapView.mapType = .satellite
        
//        mapView.translatesAutoresizingMaskIntoConstraints = false // enable auto layout
//        // set constraints
//        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

//        view.backgroundColor = .yellow
    }
}
