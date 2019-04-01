//
//  UIRoundButton.swift
//  LifeSaver
//
//  Created by Hamza  on 01/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
@IBDesignable

class UIRoundButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    func customizeView(){
        
        layer.cornerRadius = 15
        backgroundColor = #colorLiteral(red: 0.9536512306, green: 0.03694272069, blue: 0.01856952471, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    }

}
