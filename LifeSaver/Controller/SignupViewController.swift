//
//  MainViewController.swift
//  LifeSaver
//
//  Created by Hamza  on 04/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
import Firebase


class SignupViewController: UIViewController {
    
    @IBOutlet weak var FirstName: CustomTextField!
    @IBOutlet weak var LastName: CustomTextField!
    @IBOutlet weak var Email: CustomTextField!
    @IBOutlet weak var Password: CustomTextField!
    @IBOutlet weak var RePassword: CustomTextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        super.hideKeyboard()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func SignUpBtn(_ sender: Any) {
        guard let id = Email.text else {return}
        guard let pass = Password.text else {return}
        guard let firstN = FirstName.text else {return}
        guard let lastN = LastName.text else {return}
        guard let rePass = RePassword.text else {return}

        
         Auth.auth().createUser(withEmail: id, password: pass){ result, error in
            
            if error == nil && result != nil{
                print("user created")
                self.performSegue(withIdentifier:"main2", sender: nil)

            }else{
                print("user not created")
                print("error : \(error?.localizedDescription)")
                
            }
            
            
        }
        
        
    }
    
   
    
  
}
