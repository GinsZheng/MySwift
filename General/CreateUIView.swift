//
//  CreateUIView.swift
//  MySwift
//
//  Created by GinsMac on 2019/6/4.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import Foundation
import UIKit

//func createUIView(superview: UIView) -> UIView {
//    let myView = UIView()
//    parentView.addSubview(myView)
//    return myView
//}

//func createUILabel(superview: UIView, text: String) -> UILabel {
//    let myLabel = UILabel()
//    myLabel.text = text
//    parentView.addSubview(myLabel)
//    return myLabel
//}

func createUIImageView(superview: UIView, imageName: String) -> UIImageView {
    let myImageView = UIImageView()
    myImageView.image = UIImage(named: imageName)
    superview.addSubview(myImageView)
    return myImageView
}

func createUIButton(superview: UIView, type: UIButton.ButtonType) -> UIButton {
    let myButton = UIButton(type: type)
    superview.addSubview(myButton)
    return myButton
}

func createUITextField(superview: UIView, placeholder: String) -> UITextField {
    let myTextField = UITextField()
    myTextField.placeholder = placeholder
    superview.addSubview(myTextField)
    return myTextField
}

