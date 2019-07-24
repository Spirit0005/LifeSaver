//
//  User.swift
//  LifeSaver
//
//  Created by Hamza  on 07/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import Foundation
import FirebaseAuth

class user{
    
    var firstName:String
    var lastName:String
    var age:Int
    var gender:String
    var height:Int
    var bloodGroup:String
    var lastBD:Date
    
    
    init(firstName:String,lastName:String,age:Int,gender:String,height:Int,bloodGroup:String,lastBD:Date) {

        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
        self.height = height
        self.bloodGroup = bloodGroup
        self.lastBD = lastBD
    }
    
}

