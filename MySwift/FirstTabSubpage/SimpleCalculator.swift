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
        numberA.makeConstraints(left: 20, top: 100, width: 80, height: 44)
        numberA.backgroundColor = UIColor.hex("f0f1f3")
        numberA.placeholder = "NumberA"
        numberA.delegate = self
        numberA.clearsOnInsertion = true

        view.addSubview(operate)
        operate.makeConstraints(left: 110, top: numberA.y, width: 50, height: numberA.height)
        operate.backgroundColor = UIColor.hex("f0f1f3")
        operate.placeholder = "+-*/"
        
        view.addSubview(numberB)
        numberB.makeConstraints(left: 170, top: numberA.y, width: numberA.width, height: numberA.height)
        numberB.backgroundColor = UIColor.hex("f0f1f3")
        numberB.placeholder = "NumberB"
        numberB.delegate = self
        
        let equalSign = UILabel()
        view.addSubview(equalSign)
        equalSign.makeConstraints(left: 255, top: numberB.y, width: 44, height: 44)
        equalSign.text = "="
        
        view.addSubview(result)
        result.text = "result"
        result.setFontStyle(color: "000", size: 17)
        result.makeConstraints(left: 270, centerY: numberB.centerY, width: 100, height: 44)
        
        let calculationButton = UIButton(type: .system)
        view.addSubview(calculationButton)
        calculationButton.makeConstraints(left: 20, top: 200, right: 20, height: 44)
        calculationButton.setTitle("Calculate", for: .normal)
        calculationButton.tintColor = UIColor.hex("fff")
        calculationButton.setBackgroundImage(getImageWithColor(color: "2c9eff"), for: .normal)
        calculationButton.addTarget(self, action: #selector(calculating), for: .touchUpInside)
        
    }
    

    @objc func calculating() {
        result.text = Operation.getResult(numberA: numberA.text ?? "", numberB: numberB.text ?? "", operateSign: operate.text ?? "")
    }
    
    
}




// 计算逻辑
public class Operation {
    public static func getResult(numberA: String, numberB: String, operateSign: String) -> String {
        var result = 0.0
        let numberA = Double(numberA) ?? 0
        let numberB = Double(numberB) ?? 0
        
        switch operateSign {
        case "+":
            result = numberA + numberB
        case "-":
            result = numberA - numberB
        case "×":
            result = numberA * numberB
        case "÷":
            result = numberA / numberB
        case "^":
            result = pow(numberA, numberB)
        default:
            result = 0
        }
        
        return String(result)
    }
    
    public static func getOppositeNumber(number: String) -> String {
        var oppositeNumber = ""
        if number.contains("-") {
            oppositeNumber = number.removeFirstCharacter()
        } else {
            oppositeNumber = "-" + number
        }
        
        return oppositeNumber
    }
}
