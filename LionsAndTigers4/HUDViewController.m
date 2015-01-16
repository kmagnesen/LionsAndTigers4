//
//  HUDViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@property NSMutableArray *tigers;
@property NSMutableArray *lions;
@property NSMutableArray *currentImagesArray;

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tigers = [NSMutableArray new];
    [self.tigers addObject:[UIImage imageNamed:@"tiger_1"]];
    [self.tigers addObject:[UIImage imageNamed:@"tiger_2"]];
    [self.tigers addObject:[UIImage imageNamed:@"tiger_3"]];

    self.lions = [NSMutableArray new];
    [self.lions addObject:[UIImage imageNamed:@"lion_1"]];
    [self.lions addObject:[UIImage imageNamed:@"lion_2"]];
    [self.lions addObject:[UIImage imageNamed:@"lion_3"]];


    self.currentImagesArray = self.tigers;
}

- (void) tigersButtonTapped{
    self.currentImagesArray = self.tigers;
}

- (void) lionsButtonTapped{
    self.currentImagesArray = self.lions;
}

- (IBAction)onTigersButtonTapped:(UIButton *)sender {

    self.currentImagesArray = self.tigers;
}

- (IBAction)onLionsButtonTapped:(UIButton *)sender {
    self.currentImagesArray = self.tigers;

}

@end
