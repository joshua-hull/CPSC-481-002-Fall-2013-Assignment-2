//
//  SecondViewController.m
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CLLocationCoordinate2D zoom;
    zoom.latitude = 34.6783;
    zoom.longitude = -82.8392;
    
    CLLocationCoordinate2D cooperLongLat;
    cooperLongLat.latitude = 34.6767716;
    cooperLongLat.longitude = -82.836532;
    
    CLLocationCoordinate2D tillmanLongLat;
    tillmanLongLat.latitude = 34.6801049;
    tillmanLongLat.longitude = -82.8373654;
    
    MKCoordinateRegion view = MKCoordinateRegionMakeWithDistance(zoom, 1000,1000);
    
    MKPointAnnotation *cooperLibrary = [[MKPointAnnotation alloc] init];
    cooperLibrary.coordinate = cooperLongLat;
    cooperLibrary.title = @"Cooper Library";
    
    MKPointAnnotation *tillmanHall = [[MKPointAnnotation alloc] init];
    tillmanHall.coordinate = tillmanLongLat;
    tillmanHall.title = @"Tillman Hall";
    
    [mapView addAnnotation:cooperLibrary];
    [mapView addAnnotation:tillmanHall];
    
    
    [mapView setRegion:view animated:YES];
    
    [mapVi]
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
