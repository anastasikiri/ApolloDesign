//
//  UIImageView+Extension.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-11.
//

import UIKit

extension UIImageView {
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let borderLayer = CALayer()
        borderLayer.backgroundColor = color.cgColor
        borderLayer.frame = CGRect(x: 0,
                                   y: self.frame.size.height - width,
                                   width: self.frame.size.width,
                                   height: width)
        self.layer.addSublayer(borderLayer)
    }
}
