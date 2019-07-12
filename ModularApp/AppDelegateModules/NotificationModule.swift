//
//  NotificationModule.swift
//  ModularApp
//
//  Created by Ryan Schumacher on 7/11/19.
//  Copyright © 2019 Ryan Schumacher. All rights reserved.
//

import UIKit

class NotificationModule: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        application.registerForRemoteNotifications()
        return true
    }


    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        print("App Did Register for Notification")
    }
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("App Did fail to Register for Notification")
    }
}
