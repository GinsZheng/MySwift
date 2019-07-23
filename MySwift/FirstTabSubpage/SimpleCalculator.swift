//
//  Calculator.swift
//  MySwift
//
//  Created by GinsMac on 2019/7/20.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class SimpleCalculator: UIViewController, UITextFieldDelegate {
    
    let numberA = UITextField()
    let operate = UITextField()
    let numberB = UITextField()
    let result = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(numberA)
        numberA.makeConstraintsToLeftTop(left: 20, top: 100, width: 80, height: 44)
        numberA.backgroundColor = UIColor.hex("f0f1f3")
        numberA.placeholder = "NumberA"
        numberA.delegate = self
        numberA.clearsOnInsertion = true

        view.addSubview(operate)
        operate.makeConstraintsToLeftTop(left: 110, top: numberA, width: 50, height: numberA)
        operate.backgroundColor = UIColor.hex("f0f1f3")
        operate.placeholder = "+-*/"
        
        view.addSubview(numberB)
        numberB.makeConstraintsToLeftTop(left: 170, top: numberA, width: numberA, height: numberA)
        numberB.backgroundColor = UIColor.hex("f0f1f3")
        numberB.placeholder = "NumberB"
        numberB.delegate = self
        
        let equalSign = UILabel()
        view.addSubview(equalSign)
        equalSign.makeConstraintsToLeftCenterY(left: 255, centerY: numberB)
        equalSign.text = "="
        
        view.addSubview(result)
        result.makeConstraintsToLeftCenterY(left: 270, centerY: numberB)
        result.text = "result"
        
        let calculationButton = UIButton(type: .system)
        view.addSubview(calculationButton)
        calculationButton.makeConstraintsToLeftTopRight(left: 20, top: 200, right: -20, height: 44)
        calculationButton.setTitle("Calculate", for: .normal)
        calculationButton.tintColor = UIColor.hex("fff")
        calculationButton.setBackgroundImage(getImageWithColor(color: "2c9eff"), for: .normal)
        calculationButton.addTarget(self, action: #selector(calculating), for: .touchUpInside)
        
    }
    

    @objc func calculating() {
        result.text = Operation.getResult(numberA: numberA.text ?? "", numberB: numberB.text ?? "", operate: operate.text ?? "")
    }
    
    
}





public class Operation {
    public static func getResult(numberA: String, numberB: String, operate: String) -> String {
        var result = 0.0
        let numberA = Double(numberA) ?? 0
        let numberB = Double(numberB) ?? 0
        
        switch operate {
        case "+":
            result = numberA + numberB
        case "-":
            result = numberA - numberB
        case "*":
            result = numberA * numberB
        case "/":
            result = numberA / numberB
        default:
            result = 0
        }
        
        return String(result)
    }
}
