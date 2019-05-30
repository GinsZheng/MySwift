//
//  CreateUIView.swift
//  MySwift
//
//  Created by GinsMac on 2019/6/4.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import Foundation
import UIKit

func createUIView(parentView: UIView) -> UIView {
    let myView = UIView()
    parentView.addSubview(myView)
    return myView
}

func createUILabel(parentView: UIView, text: String) -> UILabel {
    let myLabel = UILabel()
    myLabel.text = text
    parentView.addSubview(myLabel)
    return myLabel
}

func createUIImageView(parentView: UIView, imageName: String) -> UIImageView {
    let myImageView = UIImageView()
    myImageView.image = UIImage(named: imageName)
    parentView.addSubview(myImageView)
    return myImageView
}

func createUIButton(parentView: UIView, type: UIButton.ButtonType) -> UIButton {
    let myButton = UIButton(type: type)
    parentView.addSubview(myButton)
    return myButton
}

func createUITextField(parentView: UIView, placeholder: String) -> UITextField {
    let myTextField = UITextField()
    myTextField.placeholder = placeholder
    parentView.addSubview(myTextField)
    return myTextField
}

