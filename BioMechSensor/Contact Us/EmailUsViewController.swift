//
//  EmailUsViewController.swift
//  BioMech Sensor
//
//  Created by Vagabundo on 4/28/19.
//  Copyright © 2019 Vagabundo. All rights reserved.
//

import UIKit
import MessageUI

class EmailUsViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
  
    @IBOutlet weak var nameF: UITextField!
    @IBOutlet weak var butSE: UIButton!
    @IBOutlet weak var messageF: UITextView!
    @IBOutlet weak var emailF: UITextField!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        butSE.layer.cornerRadius = 5
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func name(_ sender: Any) {
        
        self.resignFirstResponder()
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        
        if (MFMailComposeViewController .canSendMail()) {
            
        let mail: MFMailComposeViewController = MFMailComposeViewController()
        mail.mailComposeDelegate = self
        
        let recipients = ["igor@biomech.us"]
            
        mail.setToRecipients(recipients)
        mail.setSubject(nameF.text! + " - BioMech app")
        mail.setMessageBody("""
                               Name:\(nameF.text!)
                               Email:\(emailF.text!)
                               Message:\(messageF.text!)
                               """, isHTML: false)
        
        self.present(mail, animated: true, completion: nil)
            
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
                
                self.resignFirstResponder()
            }
        } else {
            print("Mail services are not available, bolan.")
        }
    }
    
    
  
}
