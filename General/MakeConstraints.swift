import Foundation
import UIKit
import SnapKit

// snapKit autolayout encapsulation

extension UILabel {
    func makeConstraintsToLeftTop(left: ConstraintRelatableTarget, top: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToLeftCenterY(left: ConstraintRelatableTarget, centerY: UIView) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.centerY.equalTo(centerY)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToLeftBottom(left: ConstraintRelatableTarget, bottom: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.bottom.equalTo(bottom)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToCenterXTop(centerX: UIView, top: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.top.equalTo(top)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView) {
        self.snp.makeConstraints { (make) in
            make.center.equalTo(center)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.bottom.equalTo(bottom)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToRightTop(right: ConstraintRelatableTarget, top: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.top.equalTo(top)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToRightCenterY(right: ConstraintRelatableTarget, centerY: UIView) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.centerY.equalTo(centerY)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToRightBottom(right: ConstraintRelatableTarget, bottom: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    
    // 常用其他布局
    func makeConstraintsToLeftTopRelative(left: ConstraintRelatableTarget, top: ConstraintOffsetTarget, topRelativeView: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(topRelativeView).offset(top)
            make.height.equalTo(getDefaultLineheight())
        }
    }
    
    func makeConstraintsToRightTopRelative(right: ConstraintRelatableTarget, top: ConstraintOffsetTarget, topRelativeView: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.top.equalTo(topRelativeView).offset(top)
            make.height.equalTo(getDefaultLineheight())
        }
    }

}



extension UIView {
    func makeConstraintsToLeftTop(left: ConstraintRelatableTarget, top: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToLeftCenterY(left: ConstraintRelatableTarget, centerY: UIView, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.centerY.equalTo(centerY)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToLeftBottom(left: ConstraintRelatableTarget, bottom: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }

    func makeConstraintsToCenterXTop(centerX: UIView, top: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToCenterXCenterY(center: UIView, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.center.equalTo(center)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToCenterXBottom(centerX: UIView, bottom: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToRightTop(right: ConstraintRelatableTarget, top: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.top.equalTo(top)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToRightCenterY(right: ConstraintRelatableTarget, centerY: UIView, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.centerY.equalTo(centerY)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToRightBottom(right: ConstraintRelatableTarget, bottom: ConstraintRelatableTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    
    // 常用其他约束
    func makeConstraintsToEdges(left: ConstraintRelatableTarget, top: ConstraintRelatableTarget, right: ConstraintRelatableTarget, bottom: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.right.equalTo(right)
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToEdges(allEdges: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(allEdges)
            make.top.equalTo(allEdges)
            make.right.equalTo(allEdges)
            make.bottom.equalTo(allEdges)
        }
    }
    
    func makeConstraintsToLeftTopRight(left: ConstraintRelatableTarget, top: ConstraintRelatableTarget, right: ConstraintRelatableTarget, height: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.right.equalTo(right)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToLeftTopRightRelative(left: ConstraintRelatableTarget, topRelativeView: ConstraintRelatableTarget, topOffset: ConstraintOffsetTarget, right: CGFloat, height: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(topRelativeView).offset(topOffset)
            make.width.equalTo(screenWidth + right*2)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToLeftTopRelative(left: ConstraintRelatableTarget, topRelativeView: ConstraintRelatableTarget, topOffset: ConstraintOffsetTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(left)
            make.top.equalTo(topRelativeView).offset(topOffset)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToRightTopRelative(Right: ConstraintRelatableTarget, topRelativeView: ConstraintRelatableTarget, topOffset: ConstraintOffsetTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.left.equalTo(Right)
            make.top.equalTo(topRelativeView).offset(topOffset)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    func makeConstraintsToCenterXTopRelative(centerX: UIView, topRelativeView: ConstraintRelatableTarget, topOffset: ConstraintOffsetTarget, width: ConstraintRelatableTarget, height:ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.centerX.equalTo(centerX)
            make.top.equalTo(topRelativeView).offset(topOffset)
            make.width.equalTo(width)
            make.height.equalTo(height)
        }
    }
    
    
    
    // ScrollViewy设置bottom以确定contenesize.height
    func makeConstraintsToBottom(bottom: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.bottom.equalTo(bottom)
        }
    }
    
    func makeConstraintsToBottomRelative(bottom: ConstraintOffsetTarget, bottomRelativeView: ConstraintRelatableTarget) {
        self.snp.makeConstraints { (make) in
            make.bottom.equalTo(bottomRelativeView).offset(bottom)
        }
    }

}

