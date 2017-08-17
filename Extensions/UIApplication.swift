//
//  UIApplication.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 15/06/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation
import UIKit

extension UIApplication {
    
    func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
        
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            
            delegate.orientationLock = orientation
        
        }
    }
    
    /**
        Get documents directory path of application
        example: UIApplication.documentDirectoryPath()
    */
    public static var documentDirectoryPath: URL {
        get {
            let paths = FileManager.default.urls(for: .documentDirectory, in: .allDomainsMask)
            let documentDirectory = paths.first
            return documentDirectory!
        }
    }
}
