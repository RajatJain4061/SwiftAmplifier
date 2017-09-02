//
//  UIColor.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation
import UIKit

extension UIColor {
    
    convenience init(hex: String) {
        
        self.init(hex: hex, alpha:1)
        
    }
    
    convenience init(hex: String, alpha: CGFloat) {
        
        var hexWithoutSymbol = hex
        
        if hexWithoutSymbol.hasPrefix("#") {
            
            hexWithoutSymbol = hex.substring(1)
            
        }
        
        let scanner = Scanner(string: hexWithoutSymbol)
        
        var hexInt:UInt32 = 0x0
        
        scanner.scanHexInt32(&hexInt)
        
        var r:UInt32!, g:UInt32!, b:UInt32!
        
        switch (hexWithoutSymbol.length) {
            
        case 3: // #RGB
            
            r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
            
            g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
            
            b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
            
            break;
            
        case 6: // #RRGGBB
            
            r = (hexInt >> 16) & 0xff
            
            g = (hexInt >> 8) & 0xff
            
            b = hexInt & 0xff
            
            break;
            
        default:
            
            // TODO:ERROR
            
            break;
            
        }
        
        self.init(red: (CGFloat(r)/255),green: (CGFloat(g)/255),blue: (CGFloat(b)/255),alpha:alpha)
        
    }
    
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        
        return NSString(format:"#%06x", rgb) as String
    }
    
}
