//
//  ForthTab.swift
//  SwiftNotes
//
//  Created by GinsMac on 2019/6/10.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit


class TestTab: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let myView = UIView(frame: CGRect(x: 20, y: 100, width: 100, height: 100))
        myView.set(parentView: view)
        myView.backgroundColor = UIColor.hex("2c9eff")
    }

}

