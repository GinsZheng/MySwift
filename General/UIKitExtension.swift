//
//  AddStyleAttribute.swift
//  MySwift
//
//  Created by GinsMac on 2019/6/2.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func set(parentView: UIView) {
        parentView.addSubview(self)
    }
    
    func addShadow(color: String, x: CGFloat, y: CGFloat, radius: CGFloat) {
        self.layer.shadowColor = UIColor.hex(color).cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: x, height: y)
        self.layer.shadowRadius = radius
    }
    
    func addBorder(color: String, borderWidth: CGFloat) {
        self.layer.borderColor = UIColor.hex(color).cgColor
        self.layer.borderWidth = borderWidth
    }
    
    func setCornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    func getWidth() -> CGFloat {
        return self.frame.size.width
    }
    
    func getHeight() -> CGFloat {
        return self.frame.size.height
    }
    
}




extension UILabel {
    
    func set(parentView: UIView, text: String) {
        self.text = text
        parentView.addSubview(self)
    }
    
    func setFontStyle(color: String, size: CGFloat, weight: UIFont.Weight = UIFont.Weight.regular) {
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
        self.textColor = UIColor.hex(color)
    }
    
    func setLineHeight(lineHeight: CGFloat = 1.4/1.2, text: String) {
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineHeightMultiple = lineHeight
        let attributes = [NSAttributedString.Key.paragraphStyle: paragraph]
        self.attributedText = NSAttributedString(string: text, attributes: attributes)
    }
    
    func getLabelWidth() -> CGFloat {
        let labelText = self.text! as NSString
        let size = CGSize(width: CGFloat(MAXFLOAT), height: self.frame.size.height)
        let textSize = labelText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.font!], context: nil).size
        return CGFloat(Int(textSize.width))
    }
    
    func getLabelHeight(width: CGFloat) -> CGFloat {
        _ = self.text! as NSString
        let size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let height = self.sizeThatFits(size).height
        return CGFloat(Int(height))
    }
    
    func getDefaultLineheight() -> CGFloat {
        return self.font.pointSize * 1.4
    }
}



extension UITextView {
    
    func set(parentView: UIView, text: String) {
        self.text = text
        parentView.addSubview(self)
    }
    
    func setFontStyle(color: String, size: CGFloat, weight: UIFont.Weight = UIFont.Weight.regular) {
        self.font = UIFont.systemFont(ofSize: size, weight: weight)
        self.textColor = UIColor.hex(color)
    }
    
    func setLineHeight(lineHeight: CGFloat = 1.4/1.2, text: String) {
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineHeightMultiple = lineHeight
        let attributes = [NSAttributedString.Key.paragraphStyle: paragraph]
        self.attributedText = NSAttributedString(string: text, attributes: attributes)
    }

}



extension UITextField {
    
    func set(parentView: UIView, placeholder: String) {
        self.placeholder = placeholder
        parentView.addSubview(self)
    }
}



extension UIImageView {
    
    func set(parentView: UIView, imageName: String) {
        self.image = UIImage(named: imageName)
        parentView.addSubview(self)
    }
}


extension UIButton {
    
}



extension UIViewController {
    // push指从右向左滑入页面
    func pushFromRootPage(toTarget: UIViewController) {
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(toTarget, animated: true)
        self.hidesBottomBarWhenPushed = false
    }
    
    // push from secondary or deeper page
    func pushFromSecondaryPage(toTarget: UIViewController) {
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(toTarget, animated: true)
    }
    
    func backToSuperPage() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // present()为从下向上滑入页面，dismiss()为从向上向下滑出页面
    
    func hideNavBar() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
}


