//
//  AppDelegate.swift
//  ModularApp
//
//  Created by Ryan Schumacher on 7/7/19.
//  Copyright © 2019 Ryan Schumacher. All rights reserved.
//

import UIKit
import ModularAppDelegate

@UIApplicationMain
class AppDelegate: ModularRemoteNotificationAppDelegate, ConfigureSceneAppDelegate {

    override init() {
        super.init([CoreModule(),
                    SceneSessionModule(),
                    AppLifeCycleModule(),
                    NotificationModule()])
    }

}

