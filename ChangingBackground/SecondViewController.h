//
//  SecondViewController.h
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BackgroundColorDelegate.h"

@interface SecondViewController : UIViewController

@property (weak, nonatomic) id<BackgroundColorDelegate> fadeBackgroundColorDelegate;

@property (weak, nonatomic) IBOutlet UILabel *secondVCDisplayLabel;

@property (weak, nonatomic) IBOutlet UIButton *goBackButtonOutlet;

- (IBAction)goBackButtonPressed;

@end
