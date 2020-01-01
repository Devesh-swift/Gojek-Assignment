//
//  GradientView.swift
//  Contacts
//
//  Created by Mahender Reddy Gaddam on 12/23/19.
//  Copyright © 2019 Mahender Reddy Gaddam. All rights reserved.
//

import UIKit

@IBDesignable final class GradientView: UIView {
    @IBInspectable var startColor: UIColor = UIColor.clear
    @IBInspectable var endColor: UIColor = UIColor.clear

    override func draw(_ rect: CGRect) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = CGRect(x: self.bounds.origin.x,
                                y: self.bounds.origin.y,
                                width: self.frame.size.width,
                                height: self.frame.size.height)
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        gradient.zPosition = -1
        layer.addSublayer(gradient)
    }
}
