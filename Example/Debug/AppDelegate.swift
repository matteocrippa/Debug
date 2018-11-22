//
//  AppDelegate.swift
//  Debug
//
//  Created by Matteo on 07/24/2016.
//  Copyright (c) 2016 Matteo. All rights reserved.
//

import Debug
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        Debug.print("test")
        Debug.print(window ?? "window")

        return true
    }
}

