//
//  Bundle.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier 
//


import Foundation


extension Bundle {
    
    var releaseVersionNumber: String? {
        
        return infoDictionary?["CFBundleShortVersionString"] as? String
    
    }
    
    var buildVersionNumber: String? {
        
        return infoDictionary?["CFBundleVersion"] as? String
    
    }
    
    var appName: String {
        
        return infoDictionary?["CFBundleName"] as! String
    
    }
    
    var bundleId: String {
        
        return bundleIdentifier!
        
    }
}
