//
//  UIView+Extension.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-11.
//

import UIKit

extension UIView {
    func roundBorder(_ myView: UIView) {
        myView.layer.borderWidth = 1
        myView.layer.borderColor = Theme.Colors.borderColor.cgColor
        myView.layer.cornerRadius = 16
    }
}
