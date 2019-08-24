//
//  ForthTab.swift
//  SwiftNotes
//
//  Created by GinsMac on 2019/6/10.
//  Copyright © 2019 GinsMac. All rights reserved.
//

import UIKit


class TestTab: UIViewController {
    
    // 常驻控件
    let btn = UIButton()
    let eggView = UIView()
    
    @objc func myAction() {
        Egg.addAEgg(superview: eggView, result: 100)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        eggView.set(superview: view)
        eggView.makeConstraints(left: 0, top: 0, right: 0, bottom: 0)
        
        btn.set(superview: view)
        btn.makeConstraints(left: 20, top: 500, width: kScreenWidth - 40, height: 44)
        btn.setTitle("Click", for: .normal)
        btn.addTarget(self, action: #selector(myAction), for: .touchUpInside)
        btn.setCornerRadius(radius: 4)
        btn.setBackgroundImage(getImageWithColor(color: color2C9EFF), for: .normal)
        
        let x = arc4random() % UInt32(kScreenHeight)
        
        print(abs(Double(-pow(10, 150)+0.1)))
    }
    

}
//
//class Egg {
//    static func addAEgg(superview: UIView) {
//        print("add a egg")
//
//        let x = CGFloat(arc4random() % UInt32(kScreenWidth))
//        let y = CGFloat(arc4random() % UInt32(kScreenHeight))
//        let colors = ["FA6159", "FFC300", "29CF42", "1DB0FF", "FF7BAE", "FFAF00", "FF3B30", "2C9EFF", "666666", "999999", "007AFF"]
//        let randomColor = colors[Int(arc4random() % UInt32(colors.count))]
//        let size = self.getSize(result: -10000)
//
//        let egg = UIImageView()
//        egg.set(superview: superview)
//        egg.image = getImage(result: -100).changeColor(color: .hex(randomColor))
//        egg.makeConstraints(left: x, top: y, width: size, height: size)
//        egg.tintColor = .hex("2c9eff")
//
//    }
//
//    private static func getSize(result: Double) -> CGFloat {
//        if abs(result) <= pow(10, -1.75) {
//            return 1
//        } else if abs(result) >= pow(10, 78) {
//            return 320
//        } else {
//            let n = (log10(abs(result)))
//            return CGFloat(8*(n+2)/2)
//        }
//    }
//
//    private static func getImage(result: Double) -> UIImage {
//        if result >= 0 {
//            return UIImage(named: "egg")!
//        } else {
//            return UIImage(named: "negEgg")!
//        }
//    }
//
//    static func removeEgg(superview: UIView) {
//        for i in superview.subviews {
//            i.removeFromSuperview()
//        }
//    }
//}
//
//
