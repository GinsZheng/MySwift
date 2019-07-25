import Foundation
import UIKit
import SnapKit

// snapKit autolayout encapsulation

extension UILabel {
    func makeConstraints(left: CGFloat, top: CGFloat) {
        self.frame = CGRect(x: left, y: top, width: getLabelWidth(), height: getDefaultLineheight())
    }
    
    func makeConstraints(left: CGFloat, centerY: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = left
        self.centerY = centerY
    }
    
    func makeConstraints(left: CGFloat, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = left
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraints(centerX: CGFloat, top: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.centerX = centerX
        self.frame.origin.y = top
    }
    
    func makeConstraints(center: UIView) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = (center.width - self.width) / 2
        self.frame.origin.y = (center.height - self.height) / 2
    }
    
    func makeConstraints(centerX: CGFloat, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.centerX = centerX
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraints(right: CGFloat, top: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = top
    }
    
    func makeConstraints(right: CGFloat, centerY: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.centerY = centerY
    }
    
    func makeConstraints(right: CGFloat, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }

}



extension UIView {
    func makeConstraints(left: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = left
        self.frame.origin.y = top
    }
    
    func makeConstraints(left: CGFloat, centerY: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = left
        self.centerY = centerY
    }
    
    func makeConstraints(left: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = left
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraints(centerX: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.centerX = centerX
        self.frame.origin.y = top
    }
    
    func makeConstraints(center: UIView, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = (center.width - self.width) / 2
        self.frame.origin.y = (center.height - self.height) / 2
    }
    
    func makeConstraints(centerX: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.centerX = centerX
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraints(right: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = top
    }
    
    func makeConstraints(right: CGFloat, centerY: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.centerY = centerY
    }
    
    func makeConstraints(right: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    
    
    // 常用其他约束
    func makeConstraints(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat) {
        self.frame.origin.x = left
        self.frame.origin.y = top
        self.frame.size.width = self.superview!.width - left - right
        self.frame.size.height = self.superview!.height - top - bottom
    }
    
    func makeConstraints(allEdges: CGFloat) {
        self.frame.origin.x = allEdges
        self.frame.origin.y = allEdges
        self.frame.size.width = self.superview!.width - allEdges*2
        self.frame.size.height = self.superview!.height - allEdges*2
    }
    
    func makeConstraints(left: CGFloat, top: CGFloat, right: CGFloat, height: CGFloat) {
        self.frame.origin.x = left
        self.frame.origin.y = top
        self.frame.size.width = self.superview!.width - left - right
        self.frame.size.height = height
    }
    

}

