//
//  ViewController.swift
//  Test
//
//  Created by Chaitanya Soni on 18/04/20.
//  Copyright © 2020 Chaitanya Soni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginButton:UIButton!
    
    @IBOutlet var usernameTextField:UITextField!
    @IBOutlet var passwordTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonAction() {
        
        if let username = usernameTextField.text, let password = passwordTextField.text {
            if credentialsAreValid(forUsername: username, andPassword: password) {
                
            }
        }
        
        
        
    }
    
    func credentialsAreValid(forUsername username:String, andPassword password:String) -> Bool {
        
        guard username == "Admin", password == "1234" else {
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

