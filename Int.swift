//
//  Int.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 17/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation

extension Int {
    // will return 32 as thirty-two
    var asWord:String {
        let numberValue = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        let string = formatter.string(from: numberValue)!
        return string.capitalized
    }
    
    // will return 1 as 1st, 2 as 2nd
    var asOrdinal:String {
        let numberValue = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(from: numberValue)!
    }
    
    var isEven:Bool {
        return (self % 2) == 0
    }
    
    var isOdd:Bool {
        return (self % 2) != 0
    }
    
    func isBetween(_ startInt:Int, _ endInt:Int) -> Bool {
        if self >= startInt && self <= endInt {
            return true
        }
        return false
    }
}
