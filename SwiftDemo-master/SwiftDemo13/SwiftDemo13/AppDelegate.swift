//
//  AppDelegate.swift
//  SwiftDemo13
//
//  Created by 柳玉峰 on 2018/5/24.
//  Copyright © 2018年 柳玉峰. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let wechat  = WeChatViewController()
        let address = AddressBookViewController()
        let find    = FindViewController()
        let mine    = MineViewController()
        creatTabbarView(viewController: wechat, image: "tab1", selectImage: "selectTab1", title: "微信")
        creatTabbarView(viewController: address, image: "tab2", selectImage: "selectTab2", title: "通讯录")
        creatTabbarView(viewController: find, image: "tab3", selectImage: "selectTab3", title: "发现")
        creatTabbarView(viewController: mine, image: "tab4", selectImage: "selectTab4", title: "我")

        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // tabBarController的子视图控制器集合
        tabBarController.viewControllers = [UINavigationController(rootViewController: wechat),
                                            UINavigationController(rootViewController: address),
                                            UINavigationController(rootViewController: find),
                                            UINavigationController(rootViewController: mine)]
        // 添加到rootViewController
        window?.rootViewController = tabBarController
        // 修改tabbar的位置
        //tabBarController.tabBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44)
        // 修改UITabBarController的索引
        tabBarController.selectedIndex = 2
        // Tab图标上方显示角标
        wechat.tabBarItem.badgeValue = "10"
        
        return true
    }

    func creatTabbarView(viewController:UIViewController, image:NSString, selectImage:NSString, title:NSString) {
        // alwaysOriginal 始终绘制图片原始状态，不使用Tint Color。
        viewController.tabBarItem.image = UIImage(named: image as String)?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.selectedImage = UIImage(named: selectImage as String)?.withRenderingMode(.alwaysOriginal)
        viewController.title = title as String
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

