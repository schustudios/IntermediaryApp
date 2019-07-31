//
//  AppLifeCycleModule.swift
//  ModularApp
//
//  Created by Ryan Schumacher on 7/11/19.
//  Copyright © 2019 Ryan Schumacher. All rights reserved.
//

import UIKit

// NOTE: Not called in iOS 13
class AppLifeCycleModule: UIResponder, UIApplicationDelegate {

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("ApplicationDidBecomeActive")
    }
    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
    }
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
    }
}
