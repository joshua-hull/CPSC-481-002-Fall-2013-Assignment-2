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
- (IBAction)gotoInfoView:(id)sender {
//    UIStoryboard *storyboard = self.storyboard;
//    UIViewController *infoController = [storyboard instantiateViewControllerWithIdentifier:@"infoController"];
//    [UIView transitionFromView:self.view
//                        toView:infoController.view
//                      duration:1
//                       options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
//    
//    [self.navigationController pushViewController:infoController animated:NO];
}

@end
