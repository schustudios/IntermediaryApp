//
//  AppDelegate.swift
//  ModularApp
//
//  Created by Ryan Schumacher on 7/7/19.
//  Copyright © 2019 Ryan Schumacher. All rights reserved.
//

import UIKit
import IntermediaryAppDelegate

@UIApplicationMain
class AppDelegate: RemoteNotificationIntermediaryAppDelegate, ConfigureSceneIntermediaryAppDelegate {

    override init() {
        super.init([CoreModule(),
                    SceneSessionModule(),
                    AppLifeCycleModule(),
                    NotificationModule()])
    }
}

