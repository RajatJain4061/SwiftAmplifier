//
//  UITextInput.swift
//  SwiftAmplifier
//
//  Created by Rajat Jain on 26/07/17.
//  Copyright © 2017 rajatjain4061. All rights reserved.
//  Fork this repo on Github: https://github.com/rajatjain4061/SwiftAmplifier
//

import Foundation
import UIKit

extension UITextInput {
    /**
     Selects all text of a text field
     
     please call txtField.becomeFirstResponder() to see effect
     
     */
    func selectAllText(){
        
        self.selectedTextRange = self.textRange(from: self.beginningOfDocument, to: self.endOfDocument)
    }
    
}
