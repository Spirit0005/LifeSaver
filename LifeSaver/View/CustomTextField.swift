//
//  CustomTextField.swift
//  LifeSaver
//
//  Created by Hamza  on 03/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
@IBDesignable

class CustomTextField: UITextField {

  
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    func customizeView(){
    
    layer.cornerRadius = 5
    layer.borderWidth = 2
    layer.borderColor = #colorLiteral(red: 0.3179988265, green: 0.3179988265, blue: 0.3179988265, alpha: 0.25)
    backgroundColor = #colorLiteral(red: 0.3179988265, green: 0.3179988265, blue: 0.3179988265, alpha: 0.05)
    }
}
