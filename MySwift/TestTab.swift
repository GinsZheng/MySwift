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
        
        
        let lable = UILabel()
        lable.set(superview: view, text: "hahahahahaah")
        lable.setFontStyle(color: color2C9EFF, size: 17)
        lable.makeConstraints(left: 20, top: 100)
        
        let pattern = "h"
        let replacedMatches = Regex.replaceMatches(pattern: pattern, testedText: lable.text!, replaceWith: "")
        print(replacedMatches)
        
        var str = "12345666"
        str.insert(contentsOf: "****", at: str.startIndex)
        print(str)
    }

}

