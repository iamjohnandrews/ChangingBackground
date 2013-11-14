//
//  FirstViewController.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize firstVCDisplayLabel, goForwardButtonOutlet;

- (void)viewDidLoad
{
    //set background image
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    
    //style the button
    goForwardButtonOutlet.layer.cornerRadius = 8.0f;
    goForwardButtonOutlet.layer.borderColor = [[UIColor darkGrayColor] CGColor];
    goForwardButtonOutlet.layer.borderWidth = 1.0f;
        
}

- (IBAction)goForwardButtonPressed {
    SecondViewController *secondViewController = SecondViewController.new;
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    secondViewController.fadeBackgroundColorDelegate = self;
    }

- (void)secondVCToFirstVCFadeBackgroundColor {
    //NSLog(@"Hooray, fade background color method was called when user pressed Back");
    
    [UIView transitionWithView:nil duration:0.8 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
        
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    }];
}

@end
