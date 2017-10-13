//
//  ProgressView.swift
//  ProgressView
//
//  Created by 季 雲 on 2017/10/13.
//  Copyright © 2017 Ericji. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    var percentage: CGFloat = 0.0 {
        willSet {
            self.play(value: newValue)
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        self.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: 0))
    }
    
    func play(value: CGFloat) {
        self.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        self.layer.position = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2 + self.bounds.height/2)
        self.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: percentage))
        UIView.animate(withDuration: 0.5, animations: {
            self.layer.setAffineTransform(CGAffineTransform(scaleX: 1, y: value))
        }) { (_) in
        }
    }
    

}
