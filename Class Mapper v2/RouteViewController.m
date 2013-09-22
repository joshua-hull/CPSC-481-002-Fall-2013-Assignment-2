//
//  FirstViewController.m
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import "RouteViewController.h"

@interface RouteViewController ()

@end

/**
 First view the user is presented with. Allows them to enter starting point and destination. Also fires off a notification and popup when they add a route.
 */
@implementation RouteViewController

@synthesize infoButton;
@synthesize toField;
@synthesize fromField;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/**
 Called when the user hits next when done entering the from location.
 @param sender The id of the button that triggered us.
 */
- (IBAction)doneEditingFrom:(id)sender
{
    [toField becomeFirstResponder];
}

/**
 Called when the user hits done when done entering the to location.
 @param sender The id of the button that triggered us.
 */
- (IBAction)doneEditingTo:(id)sender
{
    [toField resignFirstResponder];
}

/**
 Triggered when the user hits the 'Add Route' button. Verifies that the user entered a from location. Pops up a notification explaining what happened and also fires of a local notification.
 */
- (IBAction)addRoute:(id)sender
{
    NSString *popupContents;
    
    if(fromField.text.length == 0){
        popupContents = @"Please enter a 'From' Address.";
    } else{
        popupContents = [NSString stringWithFormat:@"%s %@ %s %@","In a future version of Class Mapper we will store routes in a local database. In the mean time...\nGetting directions from", fromField.text," to ",toField.text];
        
        UILocalNotification *directionsNotificaiton = [[UILocalNotification alloc] init];
        
        // Send notification 30 seconds after hitting 'GO!'.
        directionsNotificaiton.fireDate = [NSDate dateWithTimeIntervalSinceNow:30];
        
        // Tell the user where they are going.
        directionsNotificaiton.alertBody = [NSString stringWithFormat:@"Directions to %@",toField.text];
        
        // Send the notification on its way.
        directionsNotificaiton.timeZone = [NSTimeZone defaultTimeZone];
        [[UIApplication sharedApplication] scheduleLocalNotification:directionsNotificaiton];
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"TODO: Store Routes"
                                                    message:popupContents
                                                   delegate:nil
                                          cancelButtonTitle:@"Dismiss"
                                          otherButtonTitles:nil];
    [alert show];
}
@end
