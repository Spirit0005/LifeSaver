//
//  ProfileViewController.swift
//  LifeSaver
//
//  Created by Hamza  on 07/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogoutButton(_ sender: Any) {
        
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
