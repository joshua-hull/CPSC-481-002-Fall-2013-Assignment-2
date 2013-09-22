//
//  InfoViewController.m
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

@synthesize infoText;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    infoText.text = @"Class Mapper v2\n\nClass Mapper v2 is an app written by Joshua Hull (jhull@clemson.edu) as part of Clemson's Mobile App Development course. The app uses a tabbarController to allow switching between the main route view and the map view. The route view allows the user to enter any two non-empty strings as their starting point and desitnation. Future versions of Class Mapper will use a database of known locations to facilitate entering a route. 30 seconds after hitting 'Add Route' a system notification appears. If the user is outside the app and clicks the notification the app is loaded with the map view. Otherwise a badge is added to the map view tab item. The route view also has an info button that leads to this text.\n\nThe map view currently has two pins hard coded into the map at the location of Cooper Library and Tillman Hall, both located on Clemson University's campus. However the current location is accuratly displayed if the user happend to be on campus. The XCode project contains a file to simulate the current locaiton to facilitate testing.\n\nThe author would like to thank the following groups fo rcontributing to this app:\n\n*Stack Exchange and it's community for information of handiling recieving local notifications.\n\n*lat-long.com for the latitude and logitude information about Clemson Univeristy and the buildings used in the app.\n\n*appcode.com for it's tutorial on using MapKit and annotating locations on it.";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
