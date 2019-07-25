//
//  Calculator.swift
//  MySwift
//
//  Created by GinsMac on 2019/7/22.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
    
    let numberScreen = UILabel()
    let operateSign = UIButton()
    
    var currentOperateSign = ""
    var currentNumber = ""
    var numberA = ""
    var numberB = ""
    var OperateSignPressed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        numberScreen.setFontStyle(color: color222, size: 90, weight: .thin)
        numberScreen.set(superview: view, text: "0")
        numberScreen.makeConstraints(right: 25, bottom: 449, width: kScreenWidth - 50, height: 126)
        numberScreen.textAlignment = .right
        
        let number = UIButton()
        number.setBackgroundImage(getImageWithColor(color: colorF5F6F8), for: .normal)
        number.setBackgroundImage(getImageWithColor(color: colorDCDCDE), for: .highlighted)
        number.setCornerRadius(radius: 75/2)
        number.setTitle("1", for: .normal)
        number.setTitleColor(UIColor.hex(color222), for: .normal)
        number.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        number.addTarget(self, action: #selector(inputNumber(_:)), for: .touchUpInside)
        
        number.set(superview: view)
        number.makeConstraints(left: 16, bottom: 16, width: 75, height: 75)
        
        
        operateSign.setBackgroundImage(getImageWithColor(color: color2C9EFF), for: .normal)
        operateSign.setBackgroundImage(getImageWithColor(color: color278DE5), for: .highlighted)
        operateSign.setCornerRadius(radius: 75/2)
        operateSign.setTitle("+", for: .normal)
        operateSign.setTitleColor(UIColor.hex(colorFFF), for: .normal)
        operateSign.setTitleColor(UIColor.hex(colorEEE), for: .highlighted)
        operateSign.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        operateSign.addTarget(self, action: #selector(inputOperateSign), for: .touchUpInside)
        operateSign.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
        
        operateSign.set(superview: view)
        operateSign.makeConstraints(right: 16, bottom: 16, width: 75, height: 75)

    }
    
    @objc func inputNumber(_ number: UIButton) {
        if numberScreen.text! == "0" {
            numberScreen.text! = ""
        }
        if OperateSignPressed == false {
            currentNumber += number.title(for: .normal)!
            numberScreen.text! = currentNumber
            print(numberScreen.text!)
        } else {
            currentNumber += number.title(for: .normal)!
            numberScreen.text! = currentNumber
            print(numberScreen.text!)
        }
        
    }
    
    @objc func inputOperateSign(_ operateSign: UIButton) {
        currentOperateSign = operateSign.title(for: .normal)!
        if OperateSignPressed == false {
            numberA = numberScreen.text!
            OperateSignPressed = true
            currentNumber = ""
            print(currentOperateSign)
            print(numberA)
        } else {
            numberB = numberScreen.text!
            OperateSignPressed = false
            let result = Operation.getResult(numberA: numberA, numberB: numberB, operate: currentOperateSign)
            numberScreen.text! = result
            numberA = numberB
            currentNumber = ""
            // 需要把OperateSignPressed的状态调对
        }
        
    }
    
}

