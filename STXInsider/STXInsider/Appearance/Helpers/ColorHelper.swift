//
//  ColorHelper.swift
//  STXInsider
//
//  Created by MK_STX on 30/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    @nonobjc static let TopBarHexColor = "#299c94"  // @nonobjc to avoid "A declaration cannot be both 'final' and 'dynamic'"
    @nonobjc static let TopBarContentHexColor = "#FFFFFF"
    
    convenience init(hex: String, alpha: CGFloat = 1) {
        assert(hex[hex.startIndex] == "#", "Expected hex string of format #RRGGBB")
        
        let scanner = NSScanner(string: hex)
        scanner.scanLocation = 1  // skip #
        
        var rgb: UInt32 = 0
        scanner.scanHexInt(&rgb)
        
        self.init(
            red:   CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb &   0xFF00) >>  8) / 255.0,
            blue:  CGFloat((rgb &     0xFF)      ) / 255.0,
            alpha: alpha)
    }
    
    static func topBarColor() -> UIColor {
        return UIColor(hex: TopBarHexColor, alpha: 1.0)
    }
    
    static func topBarContentColor() -> UIColor {
        return UIColor(hex: TopBarContentHexColor, alpha: 1.0)
    }
}