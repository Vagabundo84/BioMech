//
//  ViewController.swift
//  BioMech Sensor
//
//  Created by Vagabundo on 4/24/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonT: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonS: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonA.layer.cornerRadius = 5
        buttonT.layer.cornerRadius = 5
        buttonC.layer.cornerRadius = 5
        buttonS.layer.cornerRadius = 5
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func aboutUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func technology(_ sender: Any) {
        self.tabBarController?.selectedIndex = 2
    }
    
    @IBAction func contactUs(_ sender: Any) {
        self.tabBarController?.selectedIndex = 3
    }
}

