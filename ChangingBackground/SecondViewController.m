//
//  SecondViewController.m
//  ChangingBackground
//
//  Created by Jeffrey Camealy on 4/15/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController
@synthesize secondVCDisplayLabel, goBackButtonOutlet;

- (void)viewDidLoad {
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
    
    //style the button
    goBackButtonOutlet.layer.cornerRadius = 8;
    goBackButtonOutlet.layer.borderWidth = 1;
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];
    
    //highlight button
    [goBackButtonOutlet addTarget:self action:@selector(highlightButtonWhenPressed) forControlEvents:UIControlEventTouchDown];
    [goBackButtonOutlet addTarget:self action:@selector(returnButtonToNormalColor) forControlEvents:UIControlEventTouchUpInside];

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
    [UIView transitionWithView:nil duration:5.0f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];

    } completion:^(BOOL finished) {
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    }];
}

@end
