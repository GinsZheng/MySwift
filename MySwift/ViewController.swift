//
//  ViewController.swift
//  MySwift
//
//  Created by GinsMac on 2019/5/30.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let numberA = UITextField()
        view.addSubview(numberA)
        numberA.makeConstraintsToLeftTop(left: 15, top: 100, width: 80, height: 44)
        numberA.backgroundColor = UIColor.hex("f0f1f3")
        numberA.placeholder = "NumberA"
        numberA.delegate = self
        numberA.clearsOnInsertion = true

        
        
        let operate = UITextField()
        view.addSubview(operate)
        operate.makeConstraintsToLeftTop(left: 105, top: numberA, width: 44, height: numberA)
        operate.backgroundColor = UIColor.hex("f0f1f3")
        operate.placeholder = "+-*/"

        let numberB = UITextField()
        view.addSubview(numberB)
        numberB.makeConstraintsToLeftTop(left: 159, top: numberA, width: numberA, height: numberA)
        numberB.backgroundColor = UIColor.hex("f0f1f3")
        numberB.placeholder = "NumberB"
        numberB.delegate = self
        
        let equalSign = UILabel()
        view.addSubview(equalSign)
        equalSign.makeConstraintsToLeftCenterY(left: 249, centerY: numberB)
        equalSign.text = "="
        
        let result = UILabel()
        view.addSubview(result)
        result.makeConstraintsToLeftCenterY(left: 269, centerY: numberB)
        result.text = "result"
        
        let calculationButton = UIButton(type: .system)
        view.addSubview(calculationButton)
        calculationButton.makeConstraintsToLeftTopRight(left: 20, top: 200, right: -20, height: 44)
        calculationButton.setTitle("Calculate", for: .normal)
        calculationButton.tintColor = UIColor.hex("fff")
        calculationButton.setBackgroundImage(getImageWithColor(color: "2c9eff"), for: .normal)

        //png: mine-process
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        return true
//    }
    

    
    
}

public class Operation {
    public static func getResult(numberA: String, numberB: String, operate: String) {
        
    }
}
