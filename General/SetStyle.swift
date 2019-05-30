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
    
}



extension UILabel {
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
    
    func getWidth() -> CGFloat {
        let labelText = self.text! as NSString
        let size = CGSize(width: CGFloat(MAXFLOAT), height: self.frame.size.height)
        let textSize = labelText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.font], context: nil).size
        return CGFloat(Int(textSize.width))
    }
    
    func getHeight(width: CGFloat) -> CGFloat {
        _ = self.text! as NSString
        let size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let height = self.sizeThatFits(size).height
        return CGFloat(Int(height))
    }
}



extension UITextView {
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
