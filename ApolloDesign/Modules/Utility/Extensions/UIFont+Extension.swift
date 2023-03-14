//
//  UIFont+Extension.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-12.
//

import UIKit

extension UIFont {
    class func nimbusSansBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Helvetica Neue Bold", size: size)!
    }
    
    class func gibsonMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir Medium", size: size)!
    }
    
    class func gibsonRegular(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir Light", size: size)!
    }
    
    class func gibsonBook(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Gill Sans", size: size)!
    }
    
    class func sfProTextMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Arial Bold", size: size)!
    }
    
    class func sfProDisplayBold(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Helvetica Neue Medium", size: size)!
    }
}
