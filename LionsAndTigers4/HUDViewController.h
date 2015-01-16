//
//  HUDViewController.h
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HUDViewController;

@protocol HUDDelegate

@end

@interface HUDViewController : UIViewController

- (void) tigersButtonTapped;

- (void) lionsButtonTapped;

@property id <HUDDelegate> delegate;

@end
