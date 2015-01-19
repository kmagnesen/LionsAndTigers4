//
//  TopViewController.m
//  LionsAndTigers4
//
//  Created by Kyle Magnesen on 1/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource, HUDDelegate>

@property (nonatomic,weak) HUDViewController *myHUDViewDelegate;
@property NSMutableArray *tigers;
@property NSMutableArray *lions;


@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tigers = [[NSMutableArray alloc]initWithObjects:
                   [UIImage imageNamed:@"tiger_1"],
                   [UIImage imageNamed:@"tiger_2"],
                   [UIImage imageNamed:@"tiger_3"],
                   [UIImage imageNamed:@"tiger_4"],
                   [UIImage imageNamed:@"tiger_5"],
                   [UIImage imageNamed:@"tiger_6"],
                   nil];



    self.lions = [[NSMutableArray alloc]initWithObjects:
                  [UIImage imageNamed:@"lion_1"],
                  [UIImage imageNamed:@"lion_2"],
                  [UIImage imageNamed:@"lion_3"],
                  [UIImage imageNamed:@"lion_4"],
                  [UIImage imageNamed:@"lion_5"],
                  [UIImage imageNamed:@"lion_6"],
                  nil];


    self.currentImagesArray = [[NSMutableArray alloc]initWithArray:self.lions];

    NSLog(@"%lu", (unsigned long)self.lions.count);
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

- (IBAction)onBarButtonItemTapped:(UIBarButtonItem *)sender {
    [self.delegate topRevealButtonTapped];
    NSLog(@"%@", self.delegate);
}

- (void)lionsButtonTapped
{
    [self.currentImagesArray removeAllObjects];
    [self.currentImagesArray addObjectsFromArray:self.lions];
    [self.imageCollectionView reloadData];
    [self.delegate topRevealButtonTapped];
}


- (void)tigersButtonTapped
{
    [self.currentImagesArray removeAllObjects];
    [self.currentImagesArray addObjectsFromArray:self.tigers];
    [self.imageCollectionView reloadData];
    [self.delegate topRevealButtonTapped];
}

@end
