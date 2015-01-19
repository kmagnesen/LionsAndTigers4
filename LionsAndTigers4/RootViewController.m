//
//  ViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface RootViewController () <TopDelegate>
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *leftPin;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightPin;

@property TopViewController *topVC;
@property HUDViewController *hudVC;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.hudVC.delegate = self.topVC;
}

-(void) topRevealButtonTapped{
    if (self.leftPin.constant == -16) {
        [UIView animateWithDuration:1.0f animations:^{
            self.leftPin.constant = 95;
            self.rightPin.constant = -101;
            [[self.view superview] layoutIfNeeded];
        }];
            } else {
        [UIView animateWithDuration:1.0f animations:^{
            self.leftPin.constant = -16;
            self.rightPin.constant = -16;
            [[self.view superview] layoutIfNeeded];
        }];
            }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier  isEqualToString: @"TopSegue"]) {
        UINavigationController *navVC = segue.destinationViewController;
        self.topVC = [navVC.viewControllers objectAtIndex:0];
        self.topVC.delegate = self;
    }
      else if ([segue.identifier isEqualToString:@"HUDSegue"]){
          
          self.hudVC = segue.destinationViewController;
    }
}



@end
