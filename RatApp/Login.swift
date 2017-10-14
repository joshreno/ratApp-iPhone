//
//  ViewController.swift
//  RatApp
//
//  Created by Josh Reno on 10/13/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import UIKit

class Login: UIViewController {

    @IBAction func login(_ sender: UIButton) {
        let data = Users.getFromDictionary(username: username.text!)
        if data.1 == password.text! {
            
        }
    }

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

