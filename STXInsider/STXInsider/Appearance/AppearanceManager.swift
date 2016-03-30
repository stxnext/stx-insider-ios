//
//  AppearanceManager.swift
//  STXInsider
//
//  Created by MK_STX on 30/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

class AppearanceManager: NSObject {

    override static func initialize() {
        super.initialize()
    }
    
    class var sharedInstance: AppearanceManager {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: AppearanceManager? = nil
        }
        
        dispatch_once(&Static.onceToken) {
            Static.instance = AppearanceManager()
        }
        return Static.instance!
    }
    
    static func configureNavBar(navigationBar: UINavigationBar?) {
        let navBarColor = UIColor.topBarColor()
        let navBarContentColor = UIColor.topBarContentColor()
        if navigationBar == nil {
            let appearance = UINavigationBar.appearance()
            appearance.barTintColor = navBarColor
            appearance.tintColor = navBarContentColor;
            appearance.titleTextAttributes = [NSForegroundColorAttributeName: navBarContentColor]
        }
        else {  // tint all nav bars
            let navBar = navigationBar!
            navBar.backgroundColor = navBarColor
            navBar.tintColor = navBarContentColor
        }
    }
    
}
