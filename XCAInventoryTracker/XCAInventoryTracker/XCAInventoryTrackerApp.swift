//
//  XCAInventoryTrackerApp.swift
//  XCAInventoryTracker
//
//  Created by Alfian Losari on 30/07/23.
//

import SwiftUI

@main
struct XCAInventoryTrackerApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                InventoryListView()
            }
        }
    }
}
