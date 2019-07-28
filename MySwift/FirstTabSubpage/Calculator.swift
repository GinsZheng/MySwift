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
    
    let number1 = UIButton()
    let number2 = UIButton()
    let number3 = UIButton()
    let number4 = UIButton()
    let number5 = UIButton()
    let number6 = UIButton()
    let number7 = UIButton()
    let number8 = UIButton()
    let number9 = UIButton()
    let number0 = UIButton()
    let numberDot = UIButton()
    
    let equalSign = UIButton()
    let plusSign = UIButton()
    let minusSign = UIButton()
    let timesSign = UIButton()
    let divisionSign = UIButton()
    let powerSign = UIButton()
    
    
    let ac = UIButton()
    let switchSign = UIButton()
    
    var currentOperateSign = ""
    var currentNumber = ""
    var numberA = ""
    var numberB = ""
    var storeNumber = ""
    
    var operaterSignPressed = false
    var switchSignPressed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        numberScreen.setFontStyle(color: color222, size: 90, weight: .thin)
        numberScreen.textAlignment = .right
        numberScreen.set(superview: view, text: "0")
        numberScreen.makeConstraints(right: 25, bottom: 449 + kSafeAreaInsets.bottom, width: kScreenWidth - 50, height: 126)
        
        
        number1.set(superview: view)
        number1.makeConstraints(left: 16, bottom: 105 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number1.setNumberStyle(text: "1", self, selector: #selector(inputNumber(_:)))
        
        number2.set(superview: view)
        number2.makeConstraints(left: 105, bottom: 105 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number2.setNumberStyle(text: "2", self, selector: #selector(inputNumber(_:)))
        
        number3.set(superview: view)
        number3.makeConstraints(left: 194, bottom: 105 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number3.setNumberStyle(text: "3", self, selector: #selector(inputNumber(_:)))
        
        number4.set(superview: view)
        number4.makeConstraints(left: 16, bottom: 194 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number4.setNumberStyle(text: "4", self, selector: #selector(inputNumber(_:)))
        
        number5.set(superview: view)
        number5.makeConstraints(left: 105, bottom: 194 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number5.setNumberStyle(text: "5", self, selector: #selector(inputNumber(_:)))
        
        number6.set(superview: view)
        number6.makeConstraints(left: 194, bottom: 194 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number6.setNumberStyle(text: "6", self, selector: #selector(inputNumber(_:)))
        
        number7.set(superview: view)
        number7.makeConstraints(left: 16, bottom: 283 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number7.setNumberStyle(text: "7", self, selector: #selector(inputNumber(_:)))
        
        number8.set(superview: view)
        number8.makeConstraints(left: 105, bottom: 283 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number8.setNumberStyle(text: "8", self, selector: #selector(inputNumber(_:)))
        
        number9.set(superview: view)
        number9.makeConstraints(left: 194, bottom: 283 + kSafeAreaInsets.bottom, width: 75, height: 75)
        number9.setNumberStyle(text: "9", self, selector: #selector(inputNumber(_:)))
        
        number0.set(superview: view)
        number0.makeConstraints(left: 16, bottom: 16 + kSafeAreaInsets.bottom, width: 164, height: 75)
        number0.setNumberStyle(text: "0", self, selector: #selector(inputNumber(_:)))
        number0.titleEdgeInsets = UIEdgeInsets(top: 13, left: 27, bottom: 13, right: 115)
        
        numberDot.set(superview: view)
        numberDot.makeConstraints(left: 194, bottom: 16 + kSafeAreaInsets.bottom, width: 75, height: 75)
        numberDot.setNumberStyle(text: ".", self, selector: #selector(inputNumber(_:)))
        
        
        equalSign.setOperateSignStyle(text: "=", self, selector: #selector(inputEqualSign))
        equalSign.set(superview: view)
        equalSign.makeConstraints(right: 16, bottom: 16 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        plusSign.setOperateSignStyle(text: "+", self, selector: #selector(inputOperateSign(_:)))
        plusSign.set(superview: view)
        plusSign.makeConstraints(right: 16, bottom: 105 + kSafeAreaInsets.bottom , width: 75, height: 75)
        
        minusSign.setOperateSignStyle(text: "-", self, selector: #selector(inputOperateSign(_:)))
        minusSign.set(superview: view)
        minusSign.makeConstraints(right: 16, bottom: 194 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        timesSign.setOperateSignStyle(text: "×", self, selector: #selector(inputOperateSign(_:)))
        timesSign.set(superview: view)
        timesSign.makeConstraints(right: 16, bottom: 283 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        divisionSign.setOperateSignStyle(text: "÷", self, selector: #selector(inputOperateSign(_:)))
        divisionSign.set(superview: view)
        divisionSign.makeConstraints(right: 16, bottom: 372 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        powerSign.setOperateSignStyle(text: "^", self, selector: #selector(inputOperateSign(_:)))
        powerSign.set(superview: view)
        powerSign.makeConstraints(left: 194, bottom: 372 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        
        ac.setFunctionButtonStyle(imageNamed: "calculator_AC", self, selector: #selector(inputAC))
        ac.set(superview: view)
        ac.makeConstraints(left: 16, bottom: 372 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        switchSign.setFunctionButtonStyle(imageNamed: "calculator_minusSign", self, selector: #selector(inputSwitchSign))
        switchSign.set(superview: view)
        switchSign.makeConstraints(left: 105, bottom: 372 + kSafeAreaInsets.bottom, width: 75, height: 75)
        
        
        
    }
    
    
    @objc func inputNumber(_ number: UIButton) {
        if currentNumber == "0" && number.title(for: .normal) != "." {
            numberScreen.text! = ""
            print("ya")
        }
        if operaterSignPressed == false {
            currentNumber += number.title(for: .normal)!
            numberScreen.text! = currentNumber
            numberA = currentNumber
            print(currentNumber)
        } else {
            currentNumber += number.title(for: .normal)!
            numberScreen.text! = currentNumber
            numberB = currentNumber
            storeNumber = numberB
            print(currentNumber)
        }
        
    }
    
    @objc func inputOperateSign(_ operateSign: UIButton) {
        currentOperateSign = operateSign.title(for: .normal)!
        operaterSignPressed = true
        
        if numberB == "" {
            currentNumber = ""
            print("operaterSignPressed == true")
        } else {
//            let result = Operation.getResult(numberA: numberA, numberB: numberB, operate: currentOperateSign)
            inputEqualSign()
            operaterSignPressed = true

            print("get result with operation sign")
            
        }
        
    }
    
    @objc func inputEqualSign() {
        if numberB == "" {
            numberB = storeNumber
        }
        
        let result = Operation.getResult(numberA: numberA, numberB: numberB, operate: currentOperateSign)
        operaterSignPressed = false
        numberScreen.text! = result
        numberA = result
        numberB = ""
        currentNumber = ""
        
    }
    
    @objc func inputAC() {
        numberScreen.text! = "0"
        currentOperateSign = ""
        currentNumber = ""
        numberA = ""
        numberB = ""
        storeNumber = ""
        
        operaterSignPressed = false
        switchSignPressed = false
    }
    
    @objc func inputSwitchSign() {
        if switchSignPressed == false {
            currentNumber = "-" + currentNumber
            numberScreen.text! = currentNumber
            switchSignPressed = true
            print("heheda")
        } else {
            currentNumber = String(currentNumber[currentNumber.index(after: currentNumber.startIndex)...])
            numberScreen.text! = currentNumber
            print(currentNumber)
            switchSignPressed = false
        }
    }

}


extension UIButton {
    func setNumberStyle(text: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: colorF5F6F8), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: colorDCDCDE), for: .highlighted)
        self.setCornerRadius(radius: 75/2)
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor.hex(color222), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        self.addTarget(target, action: selector, for: .touchUpInside)
    }
    
    func setOperateSignStyle(text: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: color2C9EFF), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: color278DE5), for: .highlighted)
        self.setCornerRadius(radius: 75/2)
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor.hex(colorFFF), for: .normal)
        self.setTitleColor(UIColor.hex(colorEEE), for: .highlighted)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        self.addTarget(target, action: selector, for: .touchUpInside)
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
    }
    
    func setFunctionButtonStyle(imageNamed: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: color212C9EFF), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: color3B2C9EFF), for: .highlighted)
        self.setCornerRadius(radius: 75/2)
        self.setImage(UIImage(named: imageNamed), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        self.addTarget(target, action: selector, for: .touchUpInside)
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
    }
}


