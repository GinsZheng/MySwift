import Foundation
import UIKit
import SnapKit

// snapKit autolayout encapsulation

extension UILabel {
    func makeConstraintsToLeftTop(left: CGFloat, top: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToLeftCenterY(left: CGFloat, centerY: UIView) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.centerY.equalTo(centerY)
        }
    }
    
    func makeConstraintsToLeftBottom(left: CGFloat, bottom: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToCenterXTop(centerX: UIView, top: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.top.equalTo(top)
        }
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView) {
        self.snp.makeConstraints { (make) in
            make.center.equalTo(center)
        }
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToRightTop(right: CGFloat, top: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.top.equalTo(top)
        }
    }
    
    func makeConstraintsToRightCenterY(right: CGFloat, centerY: UIView) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.centerY.equalTo(centerY)
        }
    }
    
    func makeConstraintsToRightBottom(right: CGFloat, bottom: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
        }
    }
    
    
    
    func makeConstraintsToLeftTop(left: CGFloat, top: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToLeftCenterY(left: CGFloat, centerY: UIView, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.centerY.equalTo(centerY)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToLeftBottom(left: CGFloat, bottom: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToCenterXTop(centerX: UIView, top: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.center.equalTo(center)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToRightTop(right: CGFloat, top: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToRightCenterY(right: CGFloat, centerY: UIView, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.centerY.equalTo(centerY)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
    
    func makeConstraintsToRightBottom(right: CGFloat, bottom: CGFloat, width: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(self.font.pointSize * 1.4)
        }
    }
}

extension UIView {
    func makeConstraintsToLeftTop(left: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.left.equalTo(left)
            make.top.equalTo(top)
        }
    }
    
    func makeConstraintsToLeftCenterY(left: CGFloat, centerY: UIView, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.left.equalTo(left)
            make.centerY.equalTo(centerY)
        }
    }
    
    func makeConstraintsToLeftBottom(left: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.left.equalTo(left)
            make.bottom.equalTo(bottom)
        }
    }

    func makeConstraintsToCenterXTop(centerX: UIView, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.centerX.equalTo(centerX)
            make.top.equalTo(top)
        }
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.center.equalTo(center)
        }
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.centerX.equalTo(centerX)
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToRightTop(right: CGFloat, top: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.right.equalTo(right)
            make.top.equalTo(top)
        }
    }
    
    func makeConstraintsToRightCenterY(right: CGFloat, centerY: UIView, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.right.equalTo(right)
            make.centerY.equalTo(centerY)
        }
    }
    
    func makeConstraintsToRightBottom(right: CGFloat, bottom: CGFloat, width: CGFloat, height:CGFloat) {
        self.snp.makeConstraints { (make) in
            make.width.equalTo(width)
            make.height.equalTo(height)
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
        }
    }
    
    
    
    func makeConstraintsToEdges(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToLeftTopRight(left: CGFloat, top: CGFloat, right: CGFloat, height: CGFloat) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.right.equalTo(right)
            make.height.equalTo(height)
        }
    }
}
