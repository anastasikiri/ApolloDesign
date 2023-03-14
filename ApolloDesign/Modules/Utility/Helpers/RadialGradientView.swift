//
//  RadialGradientView.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-12.
//

import UIKit

class RadialGradientView: UIView {
    var insideColor: UIColor = Theme.Colors.insideRadialColor
    var outsideColor: UIColor = Theme.Colors.outsideRadialColor
    
    override func draw(_ rect: CGRect) {
        let colors = [insideColor.cgColor, outsideColor.cgColor] as CFArray
        let endRadius = min(frame.width, frame.height)
        let gradient = CGGradient(colorsSpace: nil, colors: colors, locations: nil)
        let center = CGPoint(x: bounds.size.width/2, y: bounds.size.height/2)
        
        UIGraphicsGetCurrentContext()!.drawRadialGradient(
            gradient!,
            startCenter: center,
            startRadius: 0.0,
            endCenter: center,
            endRadius: endRadius,
            options: CGGradientDrawingOptions.drawsAfterEndLocation
        )
    }
}
