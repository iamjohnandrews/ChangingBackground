//
//  FirstViewController.h
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackgroundColorDelegate.h"
#import "SecondViewController.h"
#import "HighlghtingButton.h"

@interface FirstViewController : UIViewController <BackgroundColorDelegate>

@property (weak, nonatomic) IBOutlet UILabel *firstVCDisplayLabel;
@property (weak, nonatomic) IBOutlet HighlghtingButton *goForwardButtonOutlet;

- (IBAction)goForwardButtonPressed;

@end
