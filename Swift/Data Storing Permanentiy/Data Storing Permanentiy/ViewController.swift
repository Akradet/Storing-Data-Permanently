//
//  ViewController.swift
//  Data Storing Permanentiy
//
//  Created by Student07 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Imlicit
    var strPhone = " "
    

    @IBOutlet weak var ShowPhoneLabel: UILabel!
    
    @IBOutlet weak var PhoneTextField: UITextField!
    
    @IBAction func SaveButton(_ sender: Any) {
        
        //Get Value From TextField
        strPhone = PhoneTextField.text!
        print("srtPhone ==> \(strPhone)")
        
        //Save to Permanently
        UserDefaults.standard.set(strPhone, forKey:"Phone")
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        
        
        
        if let myPermanent = strPermanentPhone as?
        String {
        print("Result from Permanent ==> \(myPermanent)")
         ShowPhoneLabel.text = myPermanent
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

