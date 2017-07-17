//
//  NSAttributedString.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 17/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier


import Foundation
import UIKit

extension NSAttributedString {
    
    convenience init(htmlString:String){
        
        do {
            
            try self.init(data: htmlString.data(using: .utf8)!, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType], documentAttributes: nil)
            
        } catch {
            
            print(error.localizedDescription)
            
        }
        
    }
    
    func toHtml(location:Int,length:Int) -> String {
        
        let documentAttributes = [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType]
        
        let range = NSRange.init(location: location, length: length)
        
        do {
            
            let htmlData = try self.data(from: range, documentAttributes: documentAttributes)
            
            let htmlString = String(data: htmlData, encoding: .utf8)
            
            return htmlString!
            
        } catch {
            
            return error.localizedDescription
            
        }
        
    }
    
}
