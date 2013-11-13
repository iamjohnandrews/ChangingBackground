//
//  BackgroundColorDelegate.h
//  ChangingBackground
//
//  Created by John Andrews on 11/13/13.
//  Copyright (c) 2013 Ora Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BackgroundColorDelegate <NSObject>

- (void)firstVCToSecondVCFadeBackgroundColor;

- (void)secondVCToFirstVCFadeBackgroundColor;

@end
