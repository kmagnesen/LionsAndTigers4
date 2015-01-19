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

- (void) lionsButtonTapped;
- (void) tigersButtonTapped;

@end

@interface HUDViewController : UIViewController

@property (nonatomic,weak) id <HUDDelegate> delegate;

@end
