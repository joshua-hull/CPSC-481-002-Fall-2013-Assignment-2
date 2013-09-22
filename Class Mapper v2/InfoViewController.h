//
//  InfoViewController.h
//  Class Mapper v2
//
//  Created by Joshua Hull on 9/21/13.
//  Copyright (c) 2013 Joshua Hull. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 The view controller for our info view. Displays information about the app.
 */
@interface InfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *infoText; /*!< View to hold our about text. */

/**
 Fill the info text in to the infoText UITextView.
 */
- (void)viewDidLoad;
@end
