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
        
        Debug.set(remoteURI: "http://kyqyvneins.localtunnel.me")
        
        Debug.print("test")
        Debug.print(window)

        return true
    }

    func applicationWillResignActive(application: UIApplication) {}

    func applicationDidEnterBackground(application: UIApplication) {}

    func applicationWillEnterForeground(application: UIApplication) {}

    func applicationDidBecomeActive(application: UIApplication) {}

    func applicationWillTerminate(application: UIApplication) {}


}

