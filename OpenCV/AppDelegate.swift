//
//  AppDelegate.swift
//  OpenCV
//
//  Created by Dmytro Nasyrov on 5/1/17.
//  Copyright © 2017 Pharos Production Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
public final class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Variables
    
    public var window: UIWindow?

    // MARK: - Life
    
    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.rootViewController = ImageController()
        window!.makeKeyAndVisible()
        
        return true
    }
}

