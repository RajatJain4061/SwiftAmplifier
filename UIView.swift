//
//  UiView.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier 
//


import Foundation
import UIKit


extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        let mask = CAShapeLayer()
        
        mask.path = path.cgPath
        
        self.layer.mask = mask
        
    }
    
    func cornerRadius(_ radius:CGFloat) {
        
        self.layer.cornerRadius = radius
        
        //self.layer.masksToBounds = true
        
    }
    
    func border(width:CGFloat = 1,color:UIColor = UIColor.black) {
        
        self.layer.borderWidth = width
        
        self.layer.borderColor = color.cgColor
        
    }
    
    func rectShadow(offsetWidth:CGFloat = -1,offsetHeight:CGFloat = 1,opacity:Float = 0.5,radius:CGFloat = 1) {
        
        self.layer.masksToBounds = false
        
        self.layer.shadowColor = UIColor.black.cgColor
        
        self.layer.shadowOpacity = opacity
        
        self.layer.shadowOffset = CGSize(width: offsetWidth, height: offsetHeight)
        
        self.layer.shadowRadius = radius
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        
        self.layer.shouldRasterize = true
        
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    func circleShadow(radius: CGFloat = 2, opacity: Float = 0.3, color: CGColor = UIColor.black.cgColor,offsetWidth:CGFloat = -1,offsetHeight:CGFloat = 1) {
        
        layer.cornerRadius = self.frame.size.height / 2
        
        layer.masksToBounds = false
        
        layer.shadowColor = color
        
        layer.shadowOffset = CGSize(width: offsetWidth, height: offsetHeight)
        
        layer.shadowRadius = radius
        
        layer.shadowOpacity = opacity
        
    }
    
    //created by Rajat Jain on 2017-07-12 to resize a view to a fix width keeping its aspect height
    func scaleToWidth(_ newWidth:CGFloat){
        
        let width = self.frame.size.width
        
        let height = self.frame.size.height
        
        let newHeight = (height * 300) / width
        
        self.frame.size.width = newWidth
        
        self.frame.size.height = newHeight
    }
    
    
    
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    
}
