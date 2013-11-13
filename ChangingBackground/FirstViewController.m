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
    goForwardButtonOutlet.layer.borderWidth = 1;
    goForwardButtonOutlet.backgroundColor = [UIColor whiteColor];
    
}

- (IBAction)goForwardButtonPressed {
    SecondViewController *secondViewController = SecondViewController.new;
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
