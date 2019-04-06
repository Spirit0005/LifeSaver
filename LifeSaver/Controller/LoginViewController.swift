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
    
    @IBOutlet weak var email: CustomTextField!
    
    @IBOutlet weak var password: CustomTextField!
    
    
    @IBAction func LoginBtn(_ sender: Any) {
        
        performSegue(withIdentifier:"main1", sender: nil)

    }
    
    @IBAction func SignUpBtn(_ sender: Any) {
        
        performSegue(withIdentifier:"signupSegue", sender: nil)
    }
}

