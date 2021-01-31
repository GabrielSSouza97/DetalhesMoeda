//
//  AppDelegate.swift
//  DetalhesMoedas
//
//  Created by letyciamarques on 01/22/2021.
//  Copyright (c) 2021 letyciamarques. All rights reserved.
//
import UIKit
import DetalhesMoedas
import CommonsService

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewControllerFav = FavoritosViewController()
        let viewControllerDet = DetalhesViewController()
        
        let navigationController = UINavigationController(rootViewController: viewControllerFav)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) { }
    
    func applicationDidEnterBackground(_ application: UIApplication) { }
    
    func applicationWillEnterForeground(_ application: UIApplication) { }
    
    func applicationDidBecomeActive(_ application: UIApplication) { }
    
    func applicationWillTerminate(_ application: UIApplication) { }
}
