//
//  TopViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *imageCollectionView;

@property NSMutableArray *tigers;
@property NSMutableArray *lions;
@property NSMutableArray *currentImagesArray;

@end

@implementation TopViewController

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

- (IBAction)onBarButtonItemTapped:(UIBarButtonItem *)sender {
    [self topRevealButtonTapped];
    [self.delegate topRevealButtonTapped];
}

- (void) topRevealButtonTapped {

}

#pragma mark UICollectionViewDataSource

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.currentImagesArray.count;
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.currentImagesArray objectAtIndex:indexPath.row];

    return cell;
}

@end
