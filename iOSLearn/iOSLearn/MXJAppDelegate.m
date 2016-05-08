//
//  AppDelegate.m
//  iOSLearn
//
//  Created by wangxinghe on 7/5/2016.
//  Copyright © 2016 mouxuejie.com. All rights reserved.
//

#import "MXJAppDelegate.h"
#import "MXJMainViewController.h"
#import "MXJFeature1ViewController.h"
#import "MXJFeature2ViewController.h"
#import "MXJCommonUtil.h"

@interface MXJAppDelegate ()

@end

@implementation MXJAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIImage *tabImage = nil;
    UIImage *tabImageHighlight = nil;
    
    MXJMainViewController *mainViewController = [[MXJMainViewController alloc] init];
    mainViewController.title = @"Main";
    tabImage = [[MXJCommonUtil imageWithColor:[UIColor redColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabImageHighlight = [[MXJCommonUtil imageWithColor:[UIColor grayColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    mainViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:mainViewController.title image:tabImage selectedImage:tabImageHighlight];
    UINavigationController *mainNavigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    
    MXJFeature1ViewController *feature1ViewController = [[MXJFeature1ViewController alloc] init];
    feature1ViewController.title = @"Feature1";
    tabImage = [[MXJCommonUtil imageWithColor:[UIColor greenColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabImageHighlight = [[MXJCommonUtil imageWithColor:[UIColor grayColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    feature1ViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:mainViewController.title image:tabImage selectedImage:tabImageHighlight];
    UINavigationController *feature1NavigationController = [[UINavigationController alloc] initWithRootViewController:feature1ViewController];
    
    MXJFeature2ViewController *feature2ViewController = [[MXJFeature2ViewController alloc] init];
    feature2ViewController.title = @"Feature2";
    tabImage = [[MXJCommonUtil imageWithColor:[UIColor blueColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    tabImageHighlight = [[MXJCommonUtil imageWithColor:[UIColor grayColor] size:CGSizeMake(30, 30)] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    feature2ViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:mainViewController.title image:tabImage selectedImage:tabImageHighlight];
    UINavigationController *feature2NavigationController = [[UINavigationController alloc] initWithRootViewController:feature2ViewController];
    
    UITabBarController *mainTabBarController = [[UITabBarController alloc] init];
    mainTabBarController.viewControllers = @[mainNavigationController, feature1NavigationController,feature2NavigationController];
    
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = mainTabBarController;
    [self.window makeKeyAndVisible];
    
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
