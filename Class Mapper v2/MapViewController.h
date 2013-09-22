//
//  SecondViewController.h
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

/**
 The view controller that holds our map.
 */
@interface MapViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView; /*!< The view that displays our map. */
@property (weak, nonatomic) IBOutlet UIButton *infoButton; /*!< Button to give the user more info about the map. Displays popup. */

/**
 Set up the map to our static locations.
 */
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
/**
 Show an alert describing what the user is seeing on the map.
 @param sender The id of the item that called us.
 */
- (IBAction)mapInfo:(id)sender;

@end
