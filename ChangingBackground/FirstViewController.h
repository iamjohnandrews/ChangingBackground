//
//  FirstViewController.h
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *firstVCDisplayLabel;

@property (weak, nonatomic) IBOutlet UIButton *goForwardButtonOutlet;

- (IBAction)goForwardButtonPressed;

@end
