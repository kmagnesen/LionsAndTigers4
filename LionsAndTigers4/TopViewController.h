//
//  TopViewController.h
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate

-(void) topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property id <TopDelegate> delegate;
@property (strong, nonatomic) IBOutlet UICollectionView *imageCollectionView;
@property NSMutableArray *currentImagesArray;

@end
