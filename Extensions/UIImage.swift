//
//  UIImage.swift
//  LekhaInk
//
//  Created by user on 12/07/17.
//  Copyright © 2017 arya. All rights reserved.
//

import Foundation
import UIKit


extension UIImageView {
    
    //created by Rajat Jain on 2017-07-12 to resize imageview to a fit width keeping its aspect height
    func resizeToWidth(_ newWidth:CGFloat){
        let width = self.frame.size.width
        let height = self.frame.size.height
        let newHeight = (height * 300) / width
        
        self.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    
}
