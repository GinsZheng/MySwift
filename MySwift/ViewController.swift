//
//  ViewController.swift
//  MySwift
//
//  Created by GinsMac on 2019/5/30.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let mylabel = UILabel()
        view.addSubview(mylabel)
        mylabel.makeConstraintsToLeftTop(left: 20, top: 100, width: 300, height: 300)
        mylabel.backgroundColor = UIColor.hex("f0f1f3")

        mylabel.text = "目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目目"
//        mylabel.text = "目目目目目目目"
        mylabel.numberOfLines = 0
        
        mylabel.setFontStyle(color: "666", size: 20)
        mylabel.setLineHeight(text: mylabel.text!)
        print(mylabel.getHeight(width: 300))
        
        
        
    }
    

}

