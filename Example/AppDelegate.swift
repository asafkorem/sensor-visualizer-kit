//
//  AppDelegate.swift
//  SensorVisualizerKit-Example
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit
import SensorVisualizerKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = {
        return SensorVisualizerWindow(frame: UIScreen.main.bounds)
    }()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}

