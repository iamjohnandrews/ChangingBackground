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
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"blue.png"]];
    
    //style the button
    goBackButtonOutlet.layer.cornerRadius = 8;
    goBackButtonOutlet.layer.borderWidth = 1;
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];
    [goBackButtonOutlet addTarget:self action:@selector(highlightButtonWhenPressed) forControlEvents:UIControlEventTouchDown];
    [goBackButtonOutlet addTarget:self action:@selector(returnButtonToNormalColor) forControlEvents:UIControlEventTouchUpInside];

}

- (IBAction)goBackButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)highlightButtonWhenPressed{
    goBackButtonOutlet.backgroundColor = [UIColor blueColor];
}

- (void)returnButtonToNormalColor{
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];
}

- (void)fadeViewBackgroundColor {
    [UIView animateWithDuration:0.5 animations:^{
        self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
    }];
}

@end
