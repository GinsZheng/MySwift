//
//  Calculator.swift
//  MySwift
//
//  Created by GinsMac on 2019/7/22.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit

class Calculator: UIViewController, InteractiveUILabelDelegate {
    
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
    let numberScreen = InteractiveUILabel()
    let numberScreenBackground = UIView()
    
    
    var numberA = "0"
    var numberB = "0"
    var storedNumberB = ""
    var currentOperateSign = ""
    var result = ""

    var operaterSignInputted = false
    var numberBInputted = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.hideNavBar()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cancelLongPress)))
        numberScreenBackground.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cancelLongPress)))
        numberScreen.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(cancelLongPress)))
        
        
        numberScreen.setFontStyle(color: color222, size: s(90), weight: .thin)
        numberScreen.textAlignment = .right
        numberScreen.set(superview: view, text: "0")
        numberScreen.scalingConstraints(right: 25, bottom: 467 + u(kSafeAreaInsets.bottom), width: numberScreen.getLabelWidth(withMaxWidth: kScreenWidth - 50), height: 90)
        numberScreen.adjustsFontSizeToFitWidth = true
        numberScreen.minimumScaleFactor = 0.2
        numberScreen.delegate = self
        
        
        numberScreenBackground.set(superview: view)
        numberScreenBackground.setBackgroundColor(color: colorF5F6F8)
        numberScreenBackground.setCornerRadius(radius: s(14))
        numberScreenBackground.isHidden = true
        numberScreenBackground.scalingConstraints(right: 16, bottom: 459 + u(kSafeAreaInsets.bottom), width: numberScreen.getLabelWidth(withMaxWidth: kScreenWidth - 50) + 16, height: 106)
        
        
        view.bringSubviewToFront(numberScreen)
        
        
        number1.set(superview: view)
        number1.scalingConstraints(left: 16, bottom: 105 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number1.setNumberStyle(text: "1", self, selector: #selector(inputNumber(_:)))
        
        number2.set(superview: view)
        number2.scalingConstraints(left: 105, bottom: 105 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number2.setNumberStyle(text: "2", self, selector: #selector(inputNumber(_:)))
        
        number3.set(superview: view)
        number3.scalingConstraints(left: 194, bottom: 105 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number3.setNumberStyle(text: "3", self, selector: #selector(inputNumber(_:)))
        
        number4.set(superview: view)
        number4.scalingConstraints(left: 16, bottom: 194 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number4.setNumberStyle(text: "4", self, selector: #selector(inputNumber(_:)))
        
        number5.set(superview: view)
        number5.scalingConstraints(left: 105, bottom: 194 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number5.setNumberStyle(text: "5", self, selector: #selector(inputNumber(_:)))
        
        number6.set(superview: view)
        number6.scalingConstraints(left: 194, bottom: 194 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number6.setNumberStyle(text: "6", self, selector: #selector(inputNumber(_:)))
        
        number7.set(superview: view)
        number7.scalingConstraints(left: 16, bottom: 283 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number7.setNumberStyle(text: "7", self, selector: #selector(inputNumber(_:)))
        
        number8.set(superview: view)
        number8.scalingConstraints(left: 105, bottom: 283 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number8.setNumberStyle(text: "8", self, selector: #selector(inputNumber(_:)))
        
        number9.set(superview: view)
        number9.scalingConstraints(left: 194, bottom: 283 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        number9.setNumberStyle(text: "9", self, selector: #selector(inputNumber(_:)))
        
        number0.set(superview: view)
        number0.scalingConstraints(left: 16, bottom: 16 + u(kSafeAreaInsets.bottom), width: 164, height: 75)
        number0.setNumberStyle(text: "0", self, selector: #selector(inputNumber(_:)))
        number0.titleEdgeInsets = UIEdgeInsets(top: 13, left: 27, bottom: 13, right: 115)
        
        dot.set(superview: view)
        dot.scalingConstraints(left: 194, bottom: 16 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        dot.setNumberStyle(text: ".", self, selector: #selector(inputNumber(_:)))
        
        
        equalSign.setOperateSignStyle(text: "=", self, selector: #selector(pressEqualSign))
        equalSign.set(superview: view)
        equalSign.scalingConstraints(right: 16, bottom: 16 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        plusSign.setOperateSignStyle(text: "+", self, selector: #selector(inputOperateSign(_:)))
        plusSign.set(superview: view)
        plusSign.scalingConstraints(right: 16, bottom: 105 + u(kSafeAreaInsets.bottom) , width: 75, height: 75)
        
        minusSign.setOperateSignStyle(text: "-", self, selector: #selector(inputOperateSign(_:)))
        minusSign.set(superview: view)
        minusSign.scalingConstraints(right: 16, bottom: 194 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        timesSign.setOperateSignStyle(text: "×", self, selector: #selector(inputOperateSign(_:)))
        timesSign.set(superview: view)
        timesSign.scalingConstraints(right: 16, bottom: 283 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        divisionSign.setOperateSignStyle(text: "÷", self, selector: #selector(inputOperateSign(_:)))
        divisionSign.set(superview: view)
        divisionSign.scalingConstraints(right: 16, bottom: 372 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        powerSign.setBackgroundImage(getImageWithColor(color: color212C9EFF), for: .normal)
        powerSign.setBackgroundImage(getImageWithColor(color: color3B2C9EFF), for: .highlighted)
        powerSign.setBackgroundImage(getImageWithColor(color: color333), for: .selected)
        powerSign.setCornerRadius(radius: s(75/2))
        powerSign.setTitle("^", for: .normal)
        powerSign.setTitleColor(UIColor.hex(color222), for: .normal)
        powerSign.setTitleColor(UIColor.hex(colorFFF), for: .selected)
        powerSign.titleLabel?.font = UIFont.systemFont(ofSize: s(35))
        powerSign.addTarget(target, action: #selector(inputOperateSign(_:)), for: .touchUpInside)
        powerSign.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
        powerSign.set(superview: view)
        powerSign.scalingConstraints(left: 194, bottom: 372 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        
        ac.setFunctionButtonStyle(imageNamed: "calculator_AC", self, selector: #selector(inputAC))
        ac.set(superview: view)
        ac.scalingConstraints(left: 16, bottom: 372 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
        switchSign.setFunctionButtonStyle(imageNamed: "calculator_minusSign", self, selector: #selector(inputSwitchSign))
        switchSign.set(superview: view)
        switchSign.scalingConstraints(left: 105, bottom: 372 + u(kSafeAreaInsets.bottom), width: 75, height: 75)
        
    }
    
    
    @objc func inputNumber(_ number: UIButton) {
        
        if operaterSignInputted == false {
            
            result = ""
            
            if number.title(for: .normal) == "." && numberA.contains(".") {
                return
            }

            if number.title(for: .normal) == "." && (numberA == "0") {
                numberA = "0"
            } else if number.title(for: .normal) == "." && (numberA == "-0") {
                numberA = "-0"
            } else if numberA == "0" {
                numberA = ""
            } else if numberA == "-0" {
                numberA = "-"
            }
            
            let patternA = "\\.|\\-"
            let cleardNumberA = Regex.replaceMatches(pattern: patternA, testedText: numberA, replaceWith: "")
            if cleardNumberA.count <= 8 {
                numberA += number.title(for: .normal)!
                numberScreen.text! = formatInputtedNumber(value: numberA)
                
                updateNumberScreenSize()
                
            }
            
        } else {
            numberBInputted = true
            self.deselectAllOperateSign()
            
            if number.title(for: .normal) == "." && numberB.contains(".") {
                return
            }
            
            if number.title(for: .normal) == "." && (numberB == "0") {
                numberB = "0"
            } else if number.title(for: .normal) == "." && (numberB == "-0") {
                numberB = "-0"
            } else if numberB == "0" {
                numberB = ""
            } else if numberB == "-0" {
                numberB = "-"
            }
            
            let patternB = "\\.|\\-"
            let cleardNumberB = Regex.replaceMatches(pattern: patternB, testedText: numberB, replaceWith: "")
            if cleardNumberB.count <= 8 {
                numberB += number.title(for: .normal)!
                numberScreen.text! = formatInputtedNumber(value: numberB)
                
                updateNumberScreenSize()
            }
            
        }
        
        numberScreenBackground.isHidden = true
        
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
        
        self.deselectAllOperateSign()
        operateSign.isSelected = true
        
        numberScreenBackground.isHidden = true
    }

    @objc func pressEqualSign() {
        
        if currentOperateSign == "" {
            return
        }
    
        if result == "" && numberBInputted == false {
            numberB = numberA
        }
        
        if numberBInputted == true {
            storedNumberB = numberB
        }
        
        if result != "" && numberBInputted == false {
            numberB = storedNumberB
        }
        
        if result != "" {
            numberA = result
        }
        
        result = Operation.getResult(numberA: numberA, numberB: numberB, operateSign: currentOperateSign)
        
        if formatResult(value: result) == formatResult(value: numberB) {
            UIView.animate(withDuration: 0.2, delay: 0, options: [.autoreverse], animations: {
                self.numberScreen.alpha = 0
            }) { (_) in
                self.numberScreen.alpha = 1
            }
        }
        
        numberScreen.text! = formatResult(value: result)
        updateNumberScreenSize()
        
        numberA = "0"
        storedNumberB = numberB
        numberB = "0"
        operaterSignInputted = false
        numberBInputted = false
        
        self.deselectAllOperateSign()
        
        numberScreenBackground.isHidden = true
        
    }
    
    @objc func inputAC() {
        numberA = "0"
        numberB = "0"
        currentOperateSign = ""
        result = ""
        numberScreen.text! = "0"
        
        operaterSignInputted = false
        numberBInputted = false
        self.deselectAllOperateSign()
        
        updateNumberScreenSize()
        
        numberScreenBackground.isHidden = true
        
    }
    
    @objc func inputSwitchSign() {
        
        if result != "" {
            result = Operation.getOppositeNumber(number: result)
            numberScreen.text! = formatResult(value: result)
        } else if operaterSignInputted == false {
            numberA = Operation.getOppositeNumber(number: numberA)
            numberScreen.text! = formatInputtedNumber(value: numberA)
        } else if operaterSignInputted == true {
            numberB = Operation.getOppositeNumber(number: numberB)
            numberScreen.text! = formatInputtedNumber(value: numberB)
        }
        
        numberScreenBackground.isHidden = true
        updateNumberScreenSize()
    }
    
    
    func updateNumberScreenSize() {
        numberScreen.scalingConstraints(right: 25, bottom: 467 + u(kSafeAreaInsets.bottom), width: u(numberScreen.getLabelWidth(withMaxWidth: kScreenWidth - 50)), height: 90)
        numberScreenBackground.scalingConstraints(right: 16, bottom: 459 + u(kSafeAreaInsets.bottom), width: u(numberScreen.getLabelWidth(withMaxWidth: kScreenWidth - 50) + 16), height: 106)
    }
    
    
    func deselectAllOperateSign() {
        plusSign.isSelected = false
        minusSign.isSelected = false
        timesSign.isSelected = false
        divisionSign.isSelected = false
        powerSign.isSelected = false
    }
    
    func formatInputtedNumber(value: String) -> String {
        var formatedNumber = value
        
        let valueAsNum = (value as NSString).intValue

        if abs(valueAsNum) >= 1000 && abs(valueAsNum) < 1000000 {
            if value.contains(".") {
                formatedNumber.insert(contentsOf: ",", at: value.index(value.firstIndex(of: ".")!, offsetBy: -3))
            } else {
                formatedNumber.insert(contentsOf: ",", at: value.index(value.endIndex, offsetBy: -3))
            }
        } else if abs(valueAsNum) >= 1000000 {
            if value.contains(".") {
                formatedNumber.insert(contentsOf: ",", at: value.index(value.firstIndex(of: ".")!, offsetBy: -3))
                formatedNumber.insert(contentsOf: ",", at: value.index(value.firstIndex(of: ".")!, offsetBy: -6))
            } else {
                formatedNumber.insert(contentsOf: ",", at: value.index(value.endIndex, offsetBy: -3))
                formatedNumber.insert(contentsOf: ",", at: value.index(value.endIndex, offsetBy: -6))
            }
        }
        
        return formatedNumber
    }
    
    func formatResult(value: String) -> String {
        if value == "inf" || value == "-inf" {
            return "Oops, bummer"
        }
        
        if value.isEmpty {
            return "0"
        }
        
        if value == "0" || value == "0.0" {
            return "0"
        }
        
        let pattern = "^-?0\\.0{0,8}$"
        let regex = try! NSRegularExpression(pattern: pattern)
        let resultNum = regex.numberOfMatches(in: value, range: NSRange(location: 0, length: value.count))
        
        if resultNum >= 1 {
            return value
        }
        
        let numberFormatter = NumberFormatter()
        let valueAsNum = (value as NSString).doubleValue
        
        if (valueAsNum >= -pow(10, -100) && valueAsNum <= pow(10, -100)) || (valueAsNum <= -pow(10, 100) || valueAsNum >= pow(10, 100)) {
            numberFormatter.numberStyle = .scientific
            numberFormatter.maximumSignificantDigits = 5
        } else if (valueAsNum >= -pow(10, -10) && valueAsNum <= pow(10, -10)) || (valueAsNum <= -pow(10, 10) || valueAsNum > pow(10, 10)) {
            numberFormatter.numberStyle = .scientific
            numberFormatter.maximumSignificantDigits = 6
        } else if (valueAsNum > -pow(10, -8) && valueAsNum < pow(10, -8)) || (valueAsNum < -pow(10, 9) || valueAsNum > pow(10, 9)) {
            numberFormatter.numberStyle = .scientific
            numberFormatter.maximumSignificantDigits = 7
        } else {
            numberFormatter.numberStyle = .decimal
            numberFormatter.maximumFractionDigits = 8
        }

        
        let formatValue = numberFormatter.string(from: NSNumber(value: valueAsNum))!.lowercased()
        
        return formatValue
    }
    
    func showNumberScreenBg() {
        numberScreenBackground.isHidden = false
    }
    
    func changeLabelBg() {
        updateNumberScreenSize()
    }
    
    func hideNumberScreenBg() {
        numberScreenBackground.isHidden = true
    }
    
    func changeNumber() {
        if operaterSignInputted == true {
            print("inputted")
            numberB = numberScreen.text!
        } else {
            print("not inputted")
            print(numberScreen.text!)
            numberA = numberScreen.text!
        }
    }
    
    @objc func cancelLongPress() {
        numberScreenBackground.isHidden = true
        numberScreen.resignFirstResponder()
    }

}


extension UIButton {
    func setNumberStyle(text: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: colorF5F6F8), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: colorDCDCDE), for: .highlighted)
        self.setCornerRadius(radius: s(75/2))
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor.hex(color222), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: s(35))
        self.addTarget(target, action: selector, for: .touchUpInside)
    }
    
    func setOperateSignStyle(text: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: color2C9EFF), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: color278DE5), for: .highlighted)
        self.setBackgroundImage(getImageWithColor(color: color333), for: .selected)
        self.setCornerRadius(radius: s(75/2))
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor.hex(colorFFF), for: .normal)
        self.setTitleColor(UIColor.hex(colorEEE), for: .highlighted)
        self.titleLabel?.font = UIFont.systemFont(ofSize: s(38))
        self.addTarget(target, action: selector, for: .touchUpInside)
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
    }
    
    func setFunctionButtonStyle(imageNamed: String, _ target: Any?, selector: Selector) {
        self.setBackgroundImage(getImageWithColor(color: color212C9EFF), for: .normal)
        self.setBackgroundImage(getImageWithColor(color: color3B2C9EFF), for: .highlighted)
        self.setCornerRadius(radius: s(75/2))
        self.setImage(UIImage(named: imageNamed), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: s(35))
        self.addTarget(target, action: selector, for: .touchUpInside)
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 16, right: 10)
    }
    
}


class Numbers: UIButton {
}


class OperateSigns: UIButton {
}


class InteractiveUILabel: UILabel {
    
    weak var delegate: InteractiveUILabelDelegate?
    
    override var canBecomeFirstResponder: Bool { return true }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setTarget()

    }
    // storyboard或xib创建控件的时候有效
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setTarget()
    }

    func setTarget() {
        isUserInteractionEnabled = true
        self.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(longPressLabel(_:))))

    }
    
    @objc func longPressLabel(_ sender: UILongPressGestureRecognizer) {

        if sender.state != UIGestureRecognizer.State.began {
            return
        }
        
        becomeFirstResponder()
        
        let menu = UIMenuController.shared //创建菜单控件器单例
        let copy = UIMenuItem(title: "复制", action: #selector(copyText))
        let paste = UIMenuItem(title: "粘贴", action: #selector(pasteText))
        
        let pasteboardContent = UIPasteboard.general.string
        
        if pasteboardContent != nil {
            let pattern = "^-?[1-9]\\d*\\.?\\d*|-?0\\.?\\d*[1-9]\\d*|0$"
            if Regex.test(pattern: pattern, testedText: pasteboardContent!) {
                menu.menuItems = [copy, paste]
            } else {
                menu.menuItems = [copy]
            }
        } else {
            menu.menuItems = [copy]
        }
        
        menu.setTargetRect(bounds, in: self)
        menu.setMenuVisible(true, animated: true)
        
        if delegate != nil {
            delegate!.showNumberScreenBg()
        }
        
    }
    
    @objc func copyText() {
        UIPasteboard.general.string = self.text!
        
        if delegate != nil {
            delegate!.hideNumberScreenBg()
            delegate!.changeLabelBg()
        }
    }
    
    @objc func pasteText() {
        self.text = UIPasteboard.general.string
        
        if delegate != nil {
            delegate!.hideNumberScreenBg()
            delegate!.changeLabelBg()
            delegate!.changeNumber()
        }
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(copyText) || action == #selector(pasteText) {
            return true
        } else {
            return false
        }
    }

}



protocol InteractiveUILabelDelegate: NSObjectProtocol {
    
    func changeLabelBg()
    
    func showNumberScreenBg()
    
    func hideNumberScreenBg()
    
    func changeNumber()
}
