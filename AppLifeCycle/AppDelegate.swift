//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by Mark Meretzky on 1/1/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let name: [String] = [
        "active",    //UIApplication.State.active
        "inactive",  //UIApplication.State.inactive
        "background" //UIApplication.State.background
    ];

    var window: UIWindow?;

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let state: String = name[application.applicationState.rawValue];
        print("application(_:willFinishLaunchingWithOptions:) \(state)");
        launchOptions?.forEach {print($0, $1);}
        
        if let window: UIWindow = window {
            if let rootViewController: UIViewController = window.rootViewController {
                if let viewController: ViewController = rootViewController as? ViewController {
                    if let stateLabel: UILabel = viewController.stateLabel {
                        stateLabel.text = state;
                    }
                }
            }
        }
       
        return true;
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let state: String = name[application.applicationState.rawValue];
        print("application(_:didFinishLaunchingWithOptions) \(state)");
        launchOptions?.forEach {print($0, $1);}
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
        
        return true;
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.

        let state: String = name[application.applicationState.rawValue];
        print("applicationWillResignActive(_:) \(state)");
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

        let state: String = name[application.applicationState.rawValue];
        print("applicationDidEnterBackground(_:) \(state)");
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.

        let state: String = name[application.applicationState.rawValue];
        print("applicationWillEnterForeground(_:) \(state)");
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

        let state: String = name[application.applicationState.rawValue];
        print("applicationDidBecomeActive(_:) \(state)");
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.

        let state: String = name[application.applicationState.rawValue];
        print("applicationWillTerminate(_:) \(state)");
        
        if let stateLabel: UILabel = (window?.rootViewController as? ViewController)?.stateLabel {
            stateLabel.text = state;
        }
    }

}
