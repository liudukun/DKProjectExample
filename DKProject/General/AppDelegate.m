//
//  AppDelegate.m
//  ZJHT_CarOwner
//
//  Created by liudukun on 16/6/14.
//  Copyright © 2016年 liudukun. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(UITabBarController *)tabBarController{
    if (_tabBarController) {
        return _tabBarController;
    }
    HomeViewController * vcHome = [HomeViewController new];
    vcHome.title = @"首页";
    vcHome.tabBarItem = [[UITabBarItem alloc]initWithTitle:vcHome.title image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];
    
    UIViewController * vcActivity = [UIViewController new];
    vcActivity.title = @"活动";
    vcActivity.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"活动" image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    UIViewController * vcCommunity = [UIViewController new];
    vcCommunity.title = @"社区";
    vcCommunity.tabBarItem = [[UITabBarItem alloc]initWithTitle:vcCommunity.title image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    UIViewController * vcHelper = [UIViewController new];
    vcHelper.title = @"客服";
    vcHelper.tabBarItem = [[UITabBarItem alloc]initWithTitle:vcHelper.title image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];

    UIViewController * vcMine = [UIViewController new];
    vcMine.title = @"我的";
    vcMine.tabBarItem = [[UITabBarItem alloc]initWithTitle:vcMine.title image:[UIImage imageNamed:@""] selectedImage:[UIImage imageNamed:@""]];


    UINavigationController * ncHome = [[UINavigationController alloc]initWithRootViewController:vcHome];
    UINavigationController * ncActivity = [[UINavigationController alloc]initWithRootViewController:vcActivity];
    UINavigationController * ncCommunity = [[UINavigationController alloc]initWithRootViewController:vcCommunity];
    UINavigationController * ncHelper = [[UINavigationController alloc]initWithRootViewController:vcHelper];
    UINavigationController * ncMine = [[UINavigationController alloc]initWithRootViewController:vcMine];
    
    UITabBarController * tc = [UITabBarController new];
    tc.viewControllers = @[ncHome,ncActivity,ncCommunity,ncHelper,ncMine];
    tc.tabBar.tintColor = [UIColor redColor];
    return tc;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
