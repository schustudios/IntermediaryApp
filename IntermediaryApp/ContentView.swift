//
//  ContentView.swift
//  ModularApp
//
//  Created by Ryan Schumacher on 7/7/19.
//  Copyright © 2019 Ryan Schumacher. All rights reserved.
//

import SwiftUI
import HealthKit

struct ContentView : View {
    let hkStore = HKHealthStore()

    var body: some View {
        VStack {
            Button(action: { self.registerForNotifications() }) {
                Text("Register for Notifications!")
                    .padding(.all)
            }

            Button(action: { self.registerForHealthKit() }) {
                Text("Register for Health Kit!")
                    .padding(.all)
            }
        }
    }

    func registerForNotifications() {

        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert]) { (granted, error) in
            print("Requested Notification Authorization")
        }
    }

    func registerForHealthKit() {
        hkStore.requestAuthorization(toShare: nil, read: [HKQuantityType.quantityType(forIdentifier: .stepCount)!]) { (_, _) in
            print("Register for HealthKit")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
