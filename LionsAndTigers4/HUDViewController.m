//
//  HUDViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"
#import "CustomCollectionViewCell.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onLionButtonTapped:(UIButton *)sender {
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigerButtonTapped:(UIButton *)sender {
    [self.delegate tigersButtonTapped];
}

@end
