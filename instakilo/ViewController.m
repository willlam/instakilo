//
//  ViewController.m
//  instakilo
//
//  Created by William Lam on 2016-03-23.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"
#import "Photo.h"
#import "PhotoCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) UIImage *photo;
@property (nonatomic, strong) NSMutableArray *photoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
	[self preparePhotoObjects];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Prepare photo objects

- (void) preparePhotoObjects
{
	self.photoArray = [[NSMutableArray alloc] init];
	
	Photo *photo1 = [[Photo alloc] initWithTitle:@"Burning Man" subject:@"Events" location:@"Black Rock City" andPhoto:@"burningman.jpg"];
	
	Photo *photo2 = [[Photo alloc] initWithTitle:@"Camp Reset" subject:@"Events" location:@"Mono" andPhoto:@"camp reset.jpg"];
	
	Photo *photo3 = [[Photo alloc] initWithTitle:@"Gabriel" subject:@"Frands" location:@"Toronto" andPhoto:@"Gabriel.jpg"];
	
	Photo *photo4 = [[Photo alloc] initWithTitle:@"Duo" subject:@"Food" location:@"Richmond Hill" andPhoto:@"Duo.jpg"];
	
	Photo *photo5 = [[Photo alloc] initWithTitle:@"Milo" subject:@"Dogs" location:@"North York" andPhoto:@"Milo1.jpg"];
	
	Photo *photo6 = [[Photo alloc] initWithTitle:@"Autumn" subject:@"Seasons" location:@"Markham" andPhoto:@"autumn.jpg"];
	
	Photo *photo7 = [[Photo alloc] initWithTitle:@"Me chillin" subject:@"Me" location:@"Toronto" andPhoto:@"me chillin.jpg"];
	
	Photo *photo8 = [[Photo alloc] initWithTitle:@"Me chillin2" subject:@"Me" location:@"Toronto" andPhoto:@"me chillin2.jpg"];
	
	Photo *photo9 = [[Photo alloc] initWithTitle:@"Y Combinator" subject:@"YC" location:@"Mountain View" andPhoto:@"y.jpeg"];
	
	
	[self.photoArray addObjectsFromArray:@[photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9]];
	
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return self.photoArray.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell" forIndexPath:indexPath];
	
	Photo *photo = self.photoArray[indexPath.row];
	
	cell.photoView.image = photo.photo;
	
	return cell;
	
	
}

@end
