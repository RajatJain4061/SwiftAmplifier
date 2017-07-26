//
//  NSObject.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 17/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation


extension NSObject {
    
    var classNameAsString:String {
        //prints more readable results for dictionaries, arrays, Int, etc
        return String(describing: type(of: self))
    }
    
}
