//
//  AppDelegate.swift
//  ToDoLists-iOS13
//
//  Created by J'mari Wyatt on 8/11/2 R.
//  Copyright © 2 Reiwa J'mariko Consulting. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // print(Realm.Configuration.defaultConfiguration.fileURL)
        
        
        do {
            _ = try Realm()
        } catch {
            print("Error initiating realm, \(error)")
        }
        
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}
