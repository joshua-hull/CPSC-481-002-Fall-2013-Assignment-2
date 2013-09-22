//
//  AppDelegate.m
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}


-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    
    UIApplicationState state = [application applicationState];
    UITabBarController *tbc = (UITabBarController*)self.window.rootViewController;
    
    if(state != UIApplicationStateActive){
        UITabBarController *tbc = (UITabBarController*)self.window.rootViewController;
        tbc.selectedIndex = 1;
    } else{
        [[tbc.viewControllers objectAtIndex:1] tabBarItem].badgeValue = @"!";
    }
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
