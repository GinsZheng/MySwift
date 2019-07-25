//
//  Calculator.swift
//  MySwift
//
//  Created by GinsMac on 2019/7/22.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let number = UIButton()
        number.set(superview: view)
        number.setBackgroundImage(getImageWithColor(color: color2C9EFF), for: .normal)
        
        number.makeConstraints(left: 16, bottom: -16, width: 75, height: 75)
        
        
        let image = UIImageView(frame: CGRect(x: 20, y: 100, width: 100, height: 100))
        image.set(superview: view)
//        image.makeConstraintsToLeftTop(left: 20, top: 100, width: 100, height: 100)
        image.backgroundColor = UIColor.hex(color2C9EFF)
//        image.setCornerRadius(CGFloat(image.snp.width)/2)
        
        
        image.x = 50
    }
    
    
}

