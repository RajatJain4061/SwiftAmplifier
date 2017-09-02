//
//  Data.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 21/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//


import UIKit

extension Data {
    /** 
     Filters raw device token by replacing spaces and special characters
     
    */
    func parseDeviceToken() -> String {
        let token = self.map { String(format: "%02.2hhx", $0) }.joined()
        return token;
    }
}
