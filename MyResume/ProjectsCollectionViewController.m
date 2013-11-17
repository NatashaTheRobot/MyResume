//
//  ProjectsCollectionViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "ProjectsCollectionViewController.h"
#import "ProjectViewCell.h"

@interface ProjectsCollectionViewController ()

@property (strong, nonatomic) NSArray *projectNames;
@property (strong, nonatomic) NSArray *projectImageNames;

@end

@implementation ProjectsCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.projectNames = @[@"ShopLater"];
    self.projectImageNames = @[@"shopLater"];
    self.collectionView.delegate = self;
}

#pragma mark - CollectionView Delegate Methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.projectNames.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ProjectViewCell *projectViewCell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"projectCell" forIndexPath:indexPath];
    [projectViewCell configureWithProjectName:self.projectNames[indexPath.row] imageName:self.projectImageNames[indexPath.row]];
    
    return projectViewCell;
}

@end
