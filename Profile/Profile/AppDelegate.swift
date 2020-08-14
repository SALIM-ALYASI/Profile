//
//  AppDelegate.swift
//  Profile
//
//  Created by ALYASI on 8/11/20.
//  Copyright © 2020 ALYASI. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
 var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
 


}

extension UIStoryboard {
    static let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
}
