//
//  BorderButton.swift
//  LifeSaver
//
//  Created by Hamza  on 02/04/2019.
//  Copyright © 2019 Hamza . All rights reserved.
//

import UIKit
@IBDesignable

class BorderButton: UIButton {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        customizeView()
    }
    override func prepareForInterfaceBuilder() {
        
        customizeView()
        
    }
    
    func customizeView(){
        
        layer.cornerRadius = 15
        layer.borderWidth = 3
        layer.borderColor = #colorLiteral(red: 0.9536512306, green: 0.03694272069, blue: 0.01856952471, alpha: 1)
        
        self.setTitleColor(#colorLiteral(red: 0.9536512306, green: 0.03694272069, blue: 0.01856952471, alpha: 1), for: .normal)
        
    }
}
