//
//  ContactUsViewController.swift
//  BioMech Sensor
//
//  Created by Vagabundo on 4/26/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit
import MapKit

class ContactUsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var butD: UIButton!
    @IBOutlet weak var butC: UIButton!
    @IBOutlet weak var butE: UIButton!
    @IBOutlet weak var butS: UIButton!
    
    let latitude = 44.758571
    let longitude = 19.222945
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        butD.layer.cornerRadius = 5
        butC.layer.cornerRadius = 5
        butE.layer.cornerRadius = 5
        butS.layer.cornerRadius = 5
        
        //-----------------
        let span = MKCoordinateSpanMake(0.007,0.007)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude,longitude: longitude),span: span)
        
        mapView.setRegion(region, animated: true)
        //------------------
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinAnn = MKPointAnnotation()
        pinAnn.coordinate = pinLocation
        pinAnn.title = "BioMech Sensor"
        pinAnn.subtitle = "Brace Gavric 26, Bijeljina 76 300"
        
        self.mapView.addAnnotation(pinAnn)
        //------------------
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //-------------------
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  /* // MARK: - Navigation
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func directions(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func callUs(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://0038755414122")!, options: [:], completionHandler: nil)    }
    
}
