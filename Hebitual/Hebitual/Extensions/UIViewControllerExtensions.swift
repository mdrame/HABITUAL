//
//  UIViewControllerExtensions.swift
//  Hebitual
//
//  Created by Mohammed Drame on 2/26/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    static func instantiate() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
    
}
