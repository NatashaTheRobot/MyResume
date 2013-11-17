//
//  ProjectsCollectionViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "ProjectsCollectionViewController.h"
#import "ProjectViewCell.h"
#import "ProjectViewController.h"

@interface ProjectsCollectionViewController ()

@property (strong, nonatomic) NSArray *projectNames;
@property (strong, nonatomic) NSArray *projectImageNames;
@property (strong, nonatomic) NSArray *projectURLs;

@end

@implementation ProjectsCollectionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.projectNames = @[@"ShopLater", @"Alphavit", @"Stay in Shape"];
    self.projectImageNames = @[@"shopLater", @"Alphavit", @"StayInShape"];
    self.projectURLs = @[@"https://itunes.apple.com/us/app/shoplater/id664768597?mt=8",
                         @"https://itunes.apple.com/us/app/alphavit/id668011464?mt=8",
                         @"https://itunes.apple.com/us/app/stay-in-shape/id720512626?mt=8"];
    self.collectionView.delegate = self;
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPathForSelectedCell = [self.collectionView indexPathsForSelectedItems][0];
    ProjectViewController *projectViewController = segue.destinationViewController;
    projectViewController.projectName = self.projectNames[indexPathForSelectedCell.row];
    projectViewController.projectURL = self.projectURLs[indexPathForSelectedCell.row];
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
