//
//  AppDelegate.m
//  Navigation
//
//  Created by UH300- App Sales on 10/13/15.
//  Copyright © 2015 UH300- App Sales. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "MonkeyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Create the home view controller
    HomeViewController *homeVC = [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    
    MonkeyViewController *monkeyVC = [[MonkeyViewController alloc] initWithNibName:@"MonkeyViewController" bundle:nil];
    
    //Set up the window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    //Build navigation controller
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:homeVC];
    navController.navigationBar.opaque = YES;
    //Color the nav bar!
    navController.navigationBar.barTintColor = [UIColor colorWithWhite:0.75 alpha:1];
    
    //Create a tab bar controller
    UITabBarController *tabController = [[UITabBarController alloc] init];
    //Set view controllers!
    tabController.viewControllers = @[navController, monkeyVC];
    
    //Set bar tint color
    tabController.tabBar.barTintColor = [UIColor colorWithWhite:0.75 alpha:1];
    
    //Tie together the window and the view controller
    self.window.rootViewController = tabController;
    
    return YES;
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
