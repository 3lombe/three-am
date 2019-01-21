//
//  AuthenticationViewController.swift
//  ThreeAM
//
//  Created by Nsonsa Elombe Kisala Jr. on 1/21/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AuthenticationViewController: UIViewController {

    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var guestBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signupBtn(_ sender: UIButton) {
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
    }
    
    @IBAction func guestBtn(_ sender: UIButton) {
        Auth.auth().signInAnonymously { (user, error) in
            if let error = error {
                print("Sign in failed: ", error.localizedDescription)
            } else {
                print ("Signed in: ", user!.user.uid)
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
