//
//  ViewController.swift
//  LifeSaver
//
//  Created by Hamza  on 01/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit

extension UIViewController{
    
    func hideKeyboard(){
        
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(dismissKeyboard))
        
        view.addGestureRecognizer(Tap)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
}

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
    }
    

    @IBAction func loginBtn(_ sender: Any) {
        
    }
    
    @IBAction func signupBtn(_ sender: Any) {
        
        performSegue(withIdentifier:"signupSegue", sender: nil)
    }
}

