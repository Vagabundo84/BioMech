//
//  SocialViewController.swift
//  BioMech Sensor
//
//  Created by Vagabundo on 4/29/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activityInd: UIActivityIndicatorView!
    
    var sendData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sendData
       
        if navigationItem.title == "Facebook" {
            let url = NSURL(string: "https://www.facebook.com/BioMech-Sensor-doo-1652668428368056/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        } else if navigationItem.title == "Twitter" {
            let url = NSURL(string: "https://twitter.com/BioMech_LLC")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }else if navigationItem.title == "Instagram" {
            let url = NSURL(string: "https://www.instagram.com/biomechsports/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        } else if navigationItem.title == "LinkedIn" {
            let url = NSURL(string: "https://www.linkedin.com/company/biomech-sensor-d-o-o/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        } else if navigationItem.title == "YouTube" {
            let url = NSURL(string: "https://www.youtube.com/channel/UCu_r4YZyhRBX6PTXFg-JRVQ")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        } else if navigationItem.title == "Website" {
            let url = NSURL(string: "https://www.biomech.us")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityInd.startAnimating()
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityInd.stopAnimating()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
