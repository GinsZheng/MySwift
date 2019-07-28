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

        let myView = UIView()
        myView.set(superview: view)
        myView.makeConstraints(left: 0, bottom: kSafeAreaInsets.bottom, width: kScreenWidth, height: 300)
        myView.backgroundColor = UIColor.hex("2c9eff")
        print(kSafeAreaInsets.bottom)
        
    }

}

