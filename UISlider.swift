//
//  UISlider.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier 
//


import Foundation
import UIKit

extension UISlider {
    
    var thumbRect: CGRect {
        let trackRect = self.trackRect(forBounds: bounds)
        let thumbRect = self.thumbRect(forBounds: bounds, trackRect: trackRect, value: value)
        
        return thumbRect
    }
    
    var thumbRectCenterX: CGFloat {
        
        let thumbRect = self.thumbRect
        
        return thumbRect.origin.x + (thumbRect.width / 2)

    }
}
