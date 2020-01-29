//
//  AppDelegate.swift
//  FriendlyScoreConnectDemo
//
//  Created by Lukasz Czechowicz on 21/01/2020.
//  Copyright © 2020 Lukasz Czechowicz. All rights reserved.
//

import UIKit
import FriendlyScoreCore
import FriendlyScoreConnect
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FriendlyScore.configureConnect()
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        FriendlyScore.handleQueryParameters(for: url)
        return true
    }
}

