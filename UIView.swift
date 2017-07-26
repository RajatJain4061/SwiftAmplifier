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
    /**
     Make round corners of a view by a given radius using UIBezierPath
     - parameter corners: UIRectCorner Corners whose you want to change.
     - parameter radius: CGFloat Radius for the rounding corners
     
     ### Usage ####
     //apply radius to specific corners
     yourView.roundCorners([.topRight,.bottomRight], radius: 40)
     
     //apply radius to all corners
     yourView.roundCorners([.topRight,.bottomRight,.topLeft,.bottomLeft], radius: 40)
     */
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        let mask = CAShapeLayer()
        
        mask.path = path.cgPath
        
        self.layer.mask = mask
        
    }
    
    /**
     Make round corners of a view by a given radius using UIBezierPath
     - parameter radius: CGFloat Radius for the rounding corners
     
     ### Usage ####
     // Fixed radius of all corners
     topicButton.cornerRadius(5)
     
     // Rounded button
     topicButton.cornerRadius(topicButton.frame.height/2)
     */
    func cornerRadius(_ radius:CGFloat) {
        
        self.layer.cornerRadius = radius
        
        //self.layer.masksToBounds = true
        
    }
    
    /**
     Apply borders to a view with color
     - parameter width: CGFloat Border width
     - parameter color: UIColor (optional) Color for view border
     
     ### Usage ####
     // apply 2 pixel border width to a view
     view.border(width: 2)
     
     // apply 2 pixel  width blue border
     view.border(width: 2, color: .blue)
     */
    func border(width:CGFloat = 1,color:UIColor = UIColor.black) {
        
        self.layer.borderWidth = width
        
        self.layer.borderColor = color.cgColor
        
    }
    
    /**
     Apply shadow on a rectangular view
     - parameter offsetWidth: (optional) CGFloat
     - parameter offsetHeight: (optional) CGFloat
     - parameter opacity: (optional) Float
     - parameter radius: (optional) CGFloat
     - parameter color: (optional) CGColor
    */
    func rectShadow(offsetWidth:CGFloat = -1,offsetHeight:CGFloat = 1,opacity:Float = 0.5,radius:CGFloat = 1,color: CGColor = UIColor.black.cgColor) {
        
        self.layer.masksToBounds = false
        
        self.layer.shadowColor = UIColor.black.cgColor
        
        self.layer.shadowOpacity = opacity
        
        self.layer.shadowOffset = CGSize(width: offsetWidth, height: offsetHeight)
        
        self.layer.shadowRadius = radius
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        
        self.layer.shouldRasterize = true
        
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }
    /**
     Apply shadow on a circular view
     - parameter radius: (optional) CGFloat
     - parameter opacity: (optional) Float
     - parameter color: (optional) CGColor
     - parameter offsetWidth: (optional) CGFloat
     - parameter offsetHeight: (optional) CGFloat
     */
    func circleShadow(radius: CGFloat = 2, opacity: Float = 0.3, color: CGColor = UIColor.black.cgColor,offsetWidth:CGFloat = -1,offsetHeight:CGFloat = 1) {
        
        layer.cornerRadius = self.frame.size.height / 2
        
        layer.masksToBounds = false
        
        layer.shadowColor = color
        
        layer.shadowOffset = CGSize(width: offsetWidth, height: offsetHeight)
        
        layer.shadowRadius = radius
        
        layer.shadowOpacity = opacity
        
    }
    
    /**
     Apply shadow on a circular view
     
     get parent UiViewController of a view
     
     - returns: UIViewController Parent view controller in which the view is presented
     */
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
    
    /**
    Removes all subviews of a view
     
    */
    
    func removeSubviews(){
        self.subviews.forEach({ $0.removeFromSuperview() })
    }
    
}
