//
//  NSMutableAttributedString.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 02/09/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation
import UIKit

extension NSMutableAttributedString {

    /**
     Fixes text size and line height of an html string. NSAttributedString was increasing text size and line height each time.
     
     This method requires SwiftAmplifier's NSAttributedString Extension
    */
    public convenience init(htmlString:String) {
        self.init(attributedString: NSAttributedString(htmlString: htmlString))
    
        beginEditing()
        
        if let paraStyle = NSMutableParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle {
            
            paraStyle.lineSpacing = 0.50
            
            addAttribute(NSParagraphStyleAttributeName, value: paraStyle, range: NSRange(location: 0, length:length))
            
        }
        
        enumerateAttribute(NSFontAttributeName, in: NSMakeRange(0,length), options: .init(rawValue: 0)) {
            (value, range, stop) in
            
            if let font = value as? UIFont {
                
                print(font.fontDescriptor)
                
                let resizedFont = font.withSize(font.pointSize * 0.75)
                
                addAttribute(NSFontAttributeName, value: resizedFont, range: range)
            }
            
        }
        
        endEditing()
        
    }

}
