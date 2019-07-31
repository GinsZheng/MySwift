//
//  Calculator.swift
//  MySwift
//
//  Created by GinsMac on 2019/7/22.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
    
    let number1 = Numbers()
    let number2 = Numbers()
    let number3 = Numbers()
    let number4 = Numbers()
    let number5 = Numbers()
    let number6 = Numbers()
    let number7 = Numbers()
    let number8 = Numbers()
    let number9 = Numbers()
    let number0 = Numbers()
    let dot = Numbers()
    
    let equalSign = OperateSigns()
    let plusSign = OperateSigns()
    let minusSign = OperateSigns()
    let timesSign = OperateSigns()
    let divisionSign = OperateSigns()
    let powerSign = OperateSigns()
    
    let ac = UIButton()
    let switchSign = UIButton()
    
    
    let numberScreen = UILabel()
    
    var numberA = "0"
    var numberB = "0"
    var storedNumberB = ""
    var currentOperateSign = ""
    var result = ""

    var operaterSignInputted = false
    var numberBInputted = false
    var dotInputted = false
    
    
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
        
        dot.set(superview: view)
        dot.makeConstraints(left: 194, bottom: 16 + kSafeAreaInsets.bottom, width: 75, height: 75)
        dot.setNumberStyle(text: ".", self, selector: #selector(inputNumber(_:)))
        
        
        equalSign.setOperateSignStyle(text: "=", self, selector: #selector(pressEqualSign))
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
        
        powerSign.setBackgroundImage(getImageWithColor(color: color212C9EFF), for: .normal)
        powerSign.setBackgroundImage(getImageWithColor(color: color3B2C9EFF), for: .highlighted)
        powerSign.setBackgroundImage(getImageWithColor(color: color333), for: .selected)
        powerSign.setCornerRadius(radius: 75/2)
        powerSign.setTitle("^", for: .normal)
        powerSign.setTitleColor(UIColor.hex(color222), for: .normal)
        powerSign.setTitleColor(UIColor.hex(colorFFF), for: .selected)
        powerSign.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        powerSign.addTarget(target, action: #selector(inputOperateSign(_:)), for: .touchUpInside)
        powerSign.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
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
        
        if operaterSignInputted == false {
            
            result = ""
            
            if number.title(for: .normal) == "." && operaterSignInputted == false {
                operaterSignInputted = true
            }
            
            if number.title(for: .normal) == "." && (numberA == "0") {
                numberA = "0"
            } else if numberA == "0" {
                numberA = ""
            }
            
            if (numberA.contains(".") && numberA.count <= 9) || (!numberA.contains(".") && numberA.count <= 8) {
                numberA += number.title(for: .normal)!
                numberScreen.text! = numberA
            }
        } else {
            numberBInputted = true
            
            if number.title(for: .normal) == "." {
                number.isEnabled = false
            }
            
            if number.title(for: .normal) == "." && (numberB == "0") {
                numberB = "0"
            } else if numberB == "0" {
                numberB = ""
            }
            
            if (numberB.contains(".") && numberB.count <= 9) || (!numberB.contains(".") && numberB.count <= 8) {
                numberB += number.title(for: .normal)!
                numberScreen.text! = numberB
            }
        }
        
    }
    
    @objc func inputOperateSign(_ operateSign: UIButton) {
        if result != "" {
            numberA = result
        }

        if numberBInputted == true {
            pressEqualSign()
            numberA = result
        }
        
        result = ""
        currentOperateSign = operateSign.title(for: .normal)!
        operaterSignInputted = true
        dotInputted = false
        
        self.deselectAllOperateSign()
        operateSign.isSelected = true
    }

    @objc func pressEqualSign() {
        
        if currentOperateSign == "" {
            return
        }
    
        if result == "" && numberBInputted == false {
            numberB = numberA
        }
        
        if result != "" && numberBInputted == false {
            numberB = storedNumberB
        }
        
        if result != "" {
            numberA = result
        }
        
        result = Operation.getResult(numberA: numberA, numberB: numberB, operateSign: currentOperateSign)
        numberScreen.text! = result
        
        numberA = "0"
        storedNumberB = numberB
        numberB = "0"
        operaterSignInputted = false
        numberBInputted = false
        dotInputted = false
        
        self.deselectAllOperateSign()
        
    }
    
    @objc func inputAC() {
        numberA = "0"
        numberB = "0"
        currentOperateSign = ""
        result = ""
        numberScreen.text! = "0"
        
        operaterSignInputted = false
        numberBInputted = false
        
    }
    
    @objc func inputSwitchSign() {
        
        if result != "" {
            result = Operation.getOppositeNumber(number: result)
            numberScreen.text! = result
        } else if operaterSignInputted == false {
            numberA = Operation.getOppositeNumber(number: numberA)
            numberScreen.text! = numberA
        } else if operaterSignInputted == true {
            numberB = Operation.getOppositeNumber(number: numberB)
            numberScreen.text! = numberB
        }
        
    }
    
    
    func deselectAllOperateSign() {
        plusSign.isSelected = false
        minusSign.isSelected = false
        timesSign.isSelected = false
        divisionSign.isSelected = false
        powerSign.isSelected = false
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
        self.setBackgroundImage(getImageWithColor(color: color333), for: .selected)
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

class Numbers: UIButton {
    
}

class OperateSigns: UIButton {
    
    var newbee = "newbee"
    static func setAsDeseleted() {
        self.init().isSelected = false
        print("init?")
    }
}

