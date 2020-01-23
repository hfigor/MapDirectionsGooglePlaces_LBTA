//
//  MainController.swift
//  MapDirectionsGooglePlaces_LBTA
//
//  Created by Frank Cipolla on 1/17/20.
//  Copyright © 2020 Frank Cipolla. All rights reserved.
//

import UIKit
import MapKit
import SwiftUI

import LBTATools

class MainController: UIViewController {
    
    let mapView = MKMapView() // now using auto layout
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let mapView = MKMapView(frame: view.frame)
        
        
        view.addSubview(mapView)
        
        // Use LBTATools
        mapView.fillSuperview() // replaces code below:
        
        //        mapView.translatesAutoresizingMaskIntoConstraints = false // enable auto layout
        //        // set constraints
        //        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        //        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        //        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // MapView Options:
        //        view.backgroundColor = .yellow
       // mapView.mapType = .satellite // set map type
        
        setupRegionForMap()
    }
// MARK: Set Map Region
        
        
        
        fileprivate func setupRegionForMap() {
            let centerCoordinate = CLLocationCoordinate2D(latitude: 34.091708, longitude: -84.590092)
            let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            let region = MKCoordinateRegion(center: centerCoordinate, span: span)
            mapView.setRegion(region, animated: true)

    }
    
    // MARK: SwiftUI Preview
  
    
    struct MainPreview: PreviewProvider {
        static var previews: some View {
           // Text("Main preview HERE")
        // insert containerview here
            ContainerView().edgesIgnoringSafeArea(.all)
        }
    }
    
    // MARK: Imbed MapView into preview pane
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainController.ContainerView>) -> MainController {
            return MainController() // wants desired controller
        }
        
        func updateUIViewController(_ uiViewController: MainController, context: UIViewControllerRepresentableContext<MainController.ContainerView>) {
        }
        
        
    
        typealias UIViewControllerType = MainController
        
        
        }
    
    
    
    
    
    
    
}
