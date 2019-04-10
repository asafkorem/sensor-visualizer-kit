//
//  MapViewController.swift
//  SensorVisualizer
//
//  Created by Joseph Blau on 6/26/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.showsBuildings = true
    }
}
