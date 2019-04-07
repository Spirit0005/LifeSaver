//
//  ViewController.swift
//  LifeSaver
//
//  Created by Hamza  on 01/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
import Firebase

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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let user = Auth.auth().currentUser {
            
            self.performSegue(withIdentifier:"signupSegue", sender: nil)

        }
        
    }
    
    
    @IBOutlet weak var Email: CustomTextField!
    
    @IBOutlet weak var Password: CustomTextField!
    
    
    @IBAction func LoginBtn(_ sender: Any) {
        guard let id = Email.text else {return}
        guard let pass = Password.text else {return}
        
        Auth.auth().signIn(withEmail: id, password: pass) {result , error in
            
            if error == nil && result != nil{
                print("user logged in")
                self.performSegue(withIdentifier:"main1", sender: nil)

                
            }else{
                print("login error")
                print("error : \(error?.localizedDescription)")
                
            }
        }
        
    }
    
    @IBAction func SignUpBtn(_ sender: Any) {
        
        performSegue(withIdentifier:"signupSegue", sender: nil)
    }
}

