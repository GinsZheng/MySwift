import Foundation
import UIKit
import SnapKit

// snapKit autolayout encapsulation

extension UILabel {
    func makeConstraintsToLeftTop(left: CGFloat, top: CGFloat) {
        self.frame = CGRect(x: left, y: top, width: getLabelWidth(), height: getDefaultLineheight())
    }
    
    func makeConstraintsToLeftCenterY(left: CGFloat, centerY: UIView) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = left
        self.center.y = centerY.y + centerY.height/2
    }
    
    func makeConstraintsToLeftBottom(left: CGFloat, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = left
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraintsToCenterXTop(centerX: UIView, top: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.center.x = centerX.x + centerX.width/2
        self.frame.origin.y = top
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.center.x = center.x + center.width/2
        self.center.y = center.y + center.height/2
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.center.x = centerX.x + centerX.width/2
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraintsToRightTop(right: CGFloat, top: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = top
    }
    
    func makeConstraintsToRightCenterY(right: CGFloat, centerY: UIView) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.center.y = centerY.y + centerY.height/2
    }
    
    func makeConstraintsToRightBottom(right: CGFloat, bottom: CGFloat) {
        self.frame.size = CGSize(width: getLabelWidth(), height: getDefaultLineheight())
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }

}



extension UIView {
    func makeConstraintsToLeftTop(left: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
    }
    
    func makeConstraintsToLeftCenterY(left: CGFloat, centerY: UIView, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = left
        self.center.y = centerY.y + centerY.height/2
    }
    
    func makeConstraintsToLeftBottom(left: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = left
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraintsToCenterXTop(centerX: UIView, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.center.x = centerX.x + centerX.width/2
        self.frame.origin.y = top
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.center.x = center.x + center.width/2
        self.center.y = center.y + center.height/2
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.center.x = centerX.x + centerX.width/2
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    func makeConstraintsToRightTop(right: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = top
    }
    
    func makeConstraintsToRightCenterY(right: CGFloat, centerY: UIView, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.center.y = centerY.y + centerY.height/2
    }
    
    func makeConstraintsToRightBottom(right: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.frame.size = CGSize(width: width, height: height)
        self.frame.origin.x = self.superview!.width - self.width - right
        self.frame.origin.y = self.superview!.height - self.height - bottom
    }
    
    
    
    // 常用其他约束
    func makeConstraintsToEdges(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat) {
        self.frame.origin.x = left
        self.frame.origin.y = top
        self.frame.size.width = self.superview!.width - left - right
        self.frame.size.height = self.superview!.height - top - bottom
    }
    
    func makeConstraintsToEdges(allEdges: CGFloat) {
        self.frame.origin.x = allEdges
        self.frame.origin.y = allEdges
        self.frame.size.width = self.superview!.width - allEdges*2
        self.frame.size.height = self.superview!.height - allEdges*2
    }
    
    func makeConstraintsToLeftTopRight(left: CGFloat, top: CGFloat, right: CGFloat, height: CGFloat) {
        self.frame.origin.x = left
        self.frame.origin.y = top
        self.frame.size.width = self.superview!.width - left - right
        self.frame.size.height = height
    }
    

}

