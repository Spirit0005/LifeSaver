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

    private var userCollectionRef: CollectionReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        userCollectionRef = Firestore.firestore().collection("users")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userCollectionRef.getDocuments { (snap, error) in
            if let err = error{
                debugPrint("error fetching data \(err)")
            }else{
                guard let snapshot = snap else {return}
                for doc in snapshot.documents{
                    print(doc.data())
                }
            }
        }
    }
    
    @IBAction func LogoutButton(_ sender: Any) {
        
       try! Auth.auth().signOut()
        self.dismiss(animated: true, completion: nil)
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
