//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by J'mari Wyatt on 21/10/2019.
//  Copyright © 2019 J'mariko Consulting. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var errorText: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                self.errorText.text = "Oops... User Error"
            } else {
                self.performSegue(withIdentifier: "LoginToChat", sender: self)
            }
        }
    }
    }
    
   
}
