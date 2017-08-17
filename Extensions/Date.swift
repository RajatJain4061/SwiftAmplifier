//
//  Date.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 21/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation


extension Date {
    /**
     Formats a Date
     
     - parameters format: (String) for eg dd-MM-yyyy hh-mm-ss
     */
    func format(format:String = "dd-MM-yyyy hh-mm-ss") -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: self)
        if let newDate = dateFormatter.date(from: dateString) {
            return newDate
        } else {
            return self
        }
    }
    
    /**
     Returns timeIntervalSince1970
     
    */
    static var timestamp:Int64 {
        let date = Date()
        return Int64(date.timeIntervalSince1970)
    }
    
}

