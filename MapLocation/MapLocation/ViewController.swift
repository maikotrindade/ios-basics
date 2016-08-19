//
//  ViewController.swift
//  MapLocation
//
//  Created by ifsp on 19/08/16.
//  Copyright (c) 2016 com.ifsp. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var theMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude : CLLocationDegrees = 48.399193
        let longitude : CLLocationDegrees = 9.993341
        let latDelta: CLLocationDegrees = 0.01
        let longDelta: CLLocationDegrees = 0.01
        
        let theSpan : MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let churchLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let theRegion: MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated : true)
        
        
        let theUImMiniterAnnotation = MKPointAnnotation()
        theUImMiniterAnnotation.coordinate = churchLocation
        theUImMiniterAnnotation.title = "UIm Minister"
        theUImMiniterAnnotation.subtitle = "A famous church in Germany"
    
        self.theMapView.addAnnotation(theUImMiniterAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

