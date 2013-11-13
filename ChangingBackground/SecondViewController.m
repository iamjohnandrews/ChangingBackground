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

- (void)viewDidLoad
{
    //set background
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"green.png"]];
    
    //style the button
    goBackButtonOutlet.layer.cornerRadius = 8;
    goBackButtonOutlet.layer.borderWidth = 1;
    goBackButtonOutlet.backgroundColor = [UIColor whiteColor];

}

- (IBAction)goBackButtonPressed {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
