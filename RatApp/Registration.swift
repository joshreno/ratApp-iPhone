//
//  Registration.swift
//  RatApp
//
//  Created by Josh Reno on 10/13/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import UIKit

class Registration: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var passwordConfirm: UITextField!
    @IBOutlet weak var userType: UISegmentedControl!
    @IBAction func register(_ sender: Any) {
        if (password.text != passwordConfirm.text) {
            passwordAlert()
        }
        var type = UserType.User
        if (userType.description == "Admin") {
            type = UserType.Admin
        }
        Users.addToDictionary(username: username.text!, password: password.text!, type: type)
        if (password.text == passwordConfirm.text) {
            let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "Login") as? Login
            self.navigationController?.pushViewController(loginViewController!, animated: true)
        }
    }
    
    func passwordAlert() {
        let alert = UIAlertController(title: "Alert", message: "Passwords should be the same", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
