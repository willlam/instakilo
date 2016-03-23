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

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIImage *photo;
@property (nonatomic, strong) NSMutableArray *photoArray;
@property (nonatomic, strong) NSMutableArray *allImagesArray;
@property (nonatomic, strong) NSMutableArray *categoryArray;
@property (nonatomic, strong) NSMutableArray *locationArray;
@property (nonatomic, strong) NSMutableArray *sectionNameArray;


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
	self.allImagesArray = [[NSMutableArray alloc] init];
	self.categoryArray = [[NSMutableArray alloc] init];
	self.locationArray = [[NSMutableArray alloc] init];
	
	Photo *photo1 = [[Photo alloc] initWithTitle:@"Burning Man" subject:@"Events" location:@"Black Rock City" andPhoto:@"burningman.jpg"];
	
	Photo *photo2 = [[Photo alloc] initWithTitle:@"Camp Reset" subject:@"Events" location:@"Mono" andPhoto:@"camp reset.jpg"];
	
	Photo *photo3 = [[Photo alloc] initWithTitle:@"Gabriel" subject:@"Frands" location:@"Toronto" andPhoto:@"Gabriel.jpg"];
	
	Photo *photo4 = [[Photo alloc] initWithTitle:@"Duo" subject:@"Food" location:@"Richmond Hill" andPhoto:@"Duo.jpg"];
	
	Photo *photo5 = [[Photo alloc] initWithTitle:@"Milo" subject:@"Dogs" location:@"North York" andPhoto:@"Milo1.jpg"];
	
	Photo *photo6 = [[Photo alloc] initWithTitle:@"Autumn" subject:@"Seasons" location:@"Markham" andPhoto:@"autumn.jpg"];
	
	Photo *photo7 = [[Photo alloc] initWithTitle:@"Me chillin" subject:@"Me" location:@"Toronto" andPhoto:@"me chillin.jpg"];
	
	Photo *photo8 = [[Photo alloc] initWithTitle:@"Me chillin2" subject:@"Me" location:@"Toronto" andPhoto:@"me chillin2.jpg"];
	
	Photo *photo9 = [[Photo alloc] initWithTitle:@"Y Combinator" subject:@"YC" location:@"Mountain View" andPhoto:@"y.jpeg"];
	
	
	[self.photoArray addObjectsFromArray:@[photo1, photo2, photo3, photo4,photo5, photo6, photo7, photo8, photo9]];
	
	[self.categoryArray addObjectsFromArray:@[photo7, photo8, photo1, photo2]];
	[self.locationArray addObjectsFromArray:@[photo2, photo3, photo4]];
	[self.allImagesArray addObjectsFromArray:@[self.photoArray, self.categoryArray, self.locationArray]];
	
	NSMutableArray *sectionNameArray = [[NSMutableArray alloc] initWithObjects:@"Section 1", @"Section 2", @"Section 3", nil];

	self.sectionNameArray = sectionNameArray;
	
}

//- (NSString)collectionView:(UICollectionView *)collectionView titleForHeaderInSection:(NSInteger)section
//
//{
//	
//}



#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	
	return  [self.allImagesArray[section]count];
	
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return self.allImagesArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell" forIndexPath:indexPath];
	
//	Photo *photo = self.photoArray[indexPath.row];
	
	Photo *photo = [self.allImagesArray[indexPath.section] objectAtIndex:indexPath.item];
	
	cell.photoView.image = photo.photo;
	
	return cell;
	
}



// section name array .. index paths match up with arrays we created before

//
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
//{
//	
//}

//#pragma mark - Layout
//
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}


//- (void) prepareLayout
//{
//	self.gridLayout = [[UICollectionViewLayout alloc] init];
//	
//	self.gridLayout.
//	
//}


@end
