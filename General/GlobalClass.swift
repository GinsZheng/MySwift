//
//  GlobalClass.swift
//  MySwift
//
//  Created by GinsMac on 2019/8/14.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class Regex {
    static func test(pattern: String, testedText: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: pattern)
        let resultNum = regex.numberOfMatches(in: testedText, range: NSRange(location: 0, length: testedText.count))
        
        if resultNum >= 1 {
            return true
        } else {
            return false
        }
    }
}
