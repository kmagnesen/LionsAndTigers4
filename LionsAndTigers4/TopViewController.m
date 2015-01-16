//
//  TopViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onBarButtonItemTapped:(UIBarButtonItem *)sender {
    [self topRevealButtonTapped];
    [self.delegate topRevealButtonTapped];
}

- (void) topRevealButtonTapped {
//    NSLog(@"delegate");
}
@end
