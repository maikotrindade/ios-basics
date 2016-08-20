//
//  ViewController.swift
//  MapKitLocation
//
//  Created by ifsp on 19/08/16.
//  Copyright (c) 2016 com.ifsp. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        
        let berlin = MKCoordinateRegionMake( CLLocationCoordinate2DMake(52.52007, 13.404954), MKCoordinateSpanMake(0.1766154, 0.153035))
        mapView.setRegion(berlin, animated: true)
    
        cameraSetup()
        
    }

    private func cameraSetup() {
        mapView.camera.altitude = 1400
        mapView.camera.pitch = 50
        mapView.camera.heading = 180
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentControlChanged(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
        case 1:
            mapView.mapType = MKMapType.Satellite
        case 2:
        mapView.mapType = MKMapType.Hybrid
        default:
            mapView.mapType = MKMapType.Standard
        }
    }
    

    @IBAction func trafficButton(sender: AnyObject) {
//        mapView.showTraffic = !mapView.showsTraffic
//        if (mapView.showsTraffic == true) {
//            sender.title("Hide Traffic", forState: UIControlState.Normal)
//        } else {
//            sender.title("Show Traffic", forState: UIControlState.Normal)
//        }
    }
    
    
    @IBAction func compassButton(sender: AnyObject) {
//        mapView.showsCompass = !mapView.showsCompass
//        if (mapView.showsCompass == true) {
//            sender.title("Hide Compass", forState: UIControlState.Normal)
//        } else {
//            sender.title("Show Compass", forState: UIControlState.Normal)
//        }
    }
    
    
}

