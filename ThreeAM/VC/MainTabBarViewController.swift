//
//  MainTabBarViewController.swift
//  ThreeAM
//
//  Created by Nsonsa Elombe Kisala Jr. on 1/21/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class MainTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkLoggedInStatus()
    }
    
    fileprivate func checkLoggedInStatus(){
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let authController = AuthenticationViewController()
                let authNavigationController = UINavigationController(rootViewController: authController)
                self.present(authNavigationController, animated: false, completion: nil)
            }
        }
    }
}
