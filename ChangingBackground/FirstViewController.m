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
    goForwardButtonOutlet.layer.cornerRadius = 8;
    goForwardButtonOutlet.backgroundColor = [UIColor whiteColor];
    
    //highlight button
    [goForwardButtonOutlet addTarget:self action:@selector(highlightButtonWhenPressed) forControlEvents:UIControlEventTouchDown];
    [goForwardButtonOutlet addTarget:self action:@selector(returnButtonToNormalColor) forControlEvents:UIControlEventTouchUpInside];
    
}

- (IBAction)goForwardButtonPressed {
    SecondViewController *secondViewController = SecondViewController.new;
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    secondViewController.fadeBackgroundColorDelegate = self;
}

- (void)highlightButtonWhenPressed{
    goForwardButtonOutlet.backgroundColor = [UIColor blueColor];
}

- (void)returnButtonToNormalColor{
    goForwardButtonOutlet.backgroundColor = [UIColor whiteColor];
}

- (void)secondVCToFirstVCFadeBackgroundColor {
    NSLog(@"Hooray, fade background color method was called when user pressed Back");
    
    [UIView transitionWithView:nil duration:0.8 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
        
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    }];
}

@end
