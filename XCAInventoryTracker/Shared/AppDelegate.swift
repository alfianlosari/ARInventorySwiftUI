//
//  AppDelegate.swift
//  XCAInventoryTracker
//
//  Created by Alfian Losari on 30/07/23.
//

import FirebaseCore
import FirebaseFirestore
import FirebaseStorage
import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        // Uncomment this line if you want to use Local Emulator suite
        setupFirebaseLocalEmulator()
        return true
    }
    
    func setupFirebaseLocalEmulator() {
        var host = "127.0.0.1"
        #if !targetEnvironment(simulator)
        host = "192.168.50.73"
        #endif
        
        let settings = Firestore.firestore().settings
        settings.host = "\(host):8080"
        settings.cacheSettings = MemoryCacheSettings()
        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
        
        Storage.storage().useEmulator(withHost: host, port: 9199)
    }
    
}
