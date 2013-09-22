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

@implementation RouteViewController

@synthesize infoButton;
@synthesize toField;
@synthesize fromField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doneEditingFrom:(id)sender {
    [toField becomeFirstResponder];
}
- (IBAction)doneEditingTo:(id)sender {
    [toField resignFirstResponder];
    
}
- (IBAction)addRoute:(id)sender {
    
    
    NSString *popupContents;
    
    if(fromField.text.length == 0){
        popupContents = @"Please enter a 'From' Address.";
    } else{
        popupContents = [NSString stringWithFormat:@"%s %@ %s %@","In a future version of Class Mapper we will store routes in a local database. In the mean time...\n\nGetting directions from", fromField.text," to ",toField.text];
        
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
