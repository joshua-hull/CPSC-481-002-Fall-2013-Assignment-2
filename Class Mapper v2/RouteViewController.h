//
//  FirstViewController.h
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RouteViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *infoButton; /*!< Button that launches the infoView. */
@property (weak, nonatomic) IBOutlet UITextField *toField; /*!< Field user enters starting location. */
@property (weak, nonatomic) IBOutlet UITextField *fromField; /*!< Field user enters destination. */
@property (weak, nonatomic) IBOutlet UIButton *routeButton; /*!< Button user clicks to add route. */

@end