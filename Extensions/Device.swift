//
//  Device.swift
//  LekhaInk
//
//  Created by Rajat Jain on 03/06/17.
//  Copyright © 2017 arya. All rights reserved.
//

import Foundation
import UIKit

struct Device {
    
    public static var appName:String {
            return Bundle.main.appName
    }
    
    public static var bundleId:String {
            return Bundle.main.bundleId
    }
    
    public static var model:String {
            return UIDevice.current.model
    }
    
    public static var systemName:String {
            return UIDevice.current.systemName
    }
    
    public static var systemVersion:String {
            return UIDevice.current.systemVersion
    }
    
    public static var orientation:Int {
            let ori = UIDevice.current.orientation
            return ori.rawValue
    }
    
    public static var batteryLevel:Float {
            return UIDevice.current.batteryLevel
    }
    
    public static var batteryState:Int {
            let state = UIDevice.current.batteryState
            return state.rawValue
    }
    
    public static var buildVersion:String {
            if let buildVer = Bundle.main.buildVersionNumber {
                return buildVer
            } else {
                return ""
            }
    }
    
    public static var version:String {
        if let releaseVersion = Bundle.main.releaseVersionNumber {
            return releaseVersion
        } else {
            return ""
        }
    }
    
    public static var resolution:String {
        get {
            let screenSize = UIScreen.main.bounds
            let screenWidth = screenSize.width
            let screenHeight = screenSize.height
            return "\(screenWidth)x\(screenHeight)"
        }
    }
    
    public static var mac_address:String {
        get {
            if let uuid = UIDevice.current.identifierForVendor?.uuidString {
                return uuid
            } else {
                return ""
            }
        }
    }
    
    public static var language_code:String {
        get {
            if let code = Locale.current.languageCode {
                return code
            } else {
                return ""
            }
        }
    }
    
    public static var remote_device_id:String {
        get {
            if let uuid = UIDevice.current.identifierForVendor?.uuidString {
                return uuid
            } else {
                return ""
            }
        }
    }
    
}
