//
//  String.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier 
//


import Foundation


extension String {
    
    var isPhoneNumber: Bool {
        
        do {
            
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.characters.count))
            
            if let res = matches.first {
                
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.characters.count
                
            } else {
                
                return false
                
            }
            
        } catch {
            
            return false
            
        }
    }
    
    //Validate Email
    
    var isEmail: Bool {
        
        do {
            
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
            
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.characters.count)) != nil
            
        } catch {
            
            return false
            
        }
        
    }
    
    static func className(_ aClass: AnyClass) -> String {
        
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
        
    }
    
    func substring(_ from: Int) -> String {
        
        return self.substring(from: self.characters.index(self.startIndex, offsetBy: from))
        
    }
    
    var length: Int {
        
        return self.characters.count
        
    }
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func replace(target: String, withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
}
