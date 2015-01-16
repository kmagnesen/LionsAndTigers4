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

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void) topRevealButtonTapped{
    if (self.leftPin.constant == -16) {
        [UIView animateWithDuration:1.0f animations:^{
            self.leftPin.constant = 95;
            [[self.view superview] layoutIfNeeded];
            NSLog(@"Hi");
        }];
            } else {
        [UIView animateWithDuration:1.0f animations:^{
            self.leftPin.constant = -16;
            [[self.view superview] layoutIfNeeded];
        }];
            }

//    if (self.rightPin.constant == 16) {
//        self.rightPin.constant ==
//    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"TopSegue"]) {
        UINavigationController *navVC = segue.destinationViewController;
//        NSLog(@"%@", navVC);
        TopViewController *tvc = navVC.childViewControllers[0];
        tvc.delegate = self;
    }
//      else if ([segue.identifier isEqualToString:@"HUDSegue"]){
//        HUDViewController *hudVC = [segue destinationViewController];
//        hudVC.delegate2 = self;
//    }
}

@end
