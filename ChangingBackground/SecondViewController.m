//
//  SecondViewController.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController
@synthesize secondVCDisplayLabel, goBackButtonOutlet, fadeBackgroundColorDelegate;

- (void)viewDidLoad {    
    //style the button
    goBackButtonOutlet.layer.cornerRadius = 8;
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];
    
    //highlight button
    [goBackButtonOutlet addTarget:self action:@selector(highlightButtonWhenPressed) forControlEvents:UIControlEventTouchDown];
    [goBackButtonOutlet addTarget:self action:@selector(returnButtonToNormalColor) forControlEvents:UIControlEventTouchUpInside];

    [self firstVCToSecondVCFadeBackgroundColor];
}

- (IBAction)goBackButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.fadeBackgroundColorDelegate secondVCToFirstVCFadeBackgroundColor];
}

- (void)highlightButtonWhenPressed{
    goBackButtonOutlet.backgroundColor = [UIColor blueColor];
}

- (void)returnButtonToNormalColor{
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];
}

- (void)firstVCToSecondVCFadeBackgroundColor {
    NSLog(@"the fade backgound method is getting fired");
    
    [UIView transitionWithView:nil duration:0.8 options:UIViewAnimationOptionCurveLinear animations:^{
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
    }]; 
    
}

@end
