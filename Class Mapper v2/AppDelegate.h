//
//  AppDelegate.h
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Handles the state changes for the app.
 */
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
/**
 Used to handle local notifications that we fire when adding a route.
 @param notification The notification that triggered the app.
 @param application A refrence to our applicaiton object.
 */
-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;

@end
