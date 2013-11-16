//
//  SocialLinksViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "SocialLinksViewController.h"
#import "SocialWebViewController.h"

@interface SocialLinksViewController ()

@property (strong, nonatomic) NSArray *socialServices;
@property (strong, nonatomic) NSArray *socialURLs;

@end

@implementation SocialLinksViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.socialServices = @[@"LinkedIn", @"Facebook", @"Twitter", @"Github"];
    self.socialURLs = @[@"http://www.linkedin.com/in/natashatherobot",
                        @"https://www.facebook.com/natasha.murashev",
                        @"https://twitter.com/NatashaTheRobot",
                        @"https://github.com/natashatherobot"];

}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPathForSelectedRow = [self.tableView indexPathForSelectedRow];
    SocialWebViewController *socialWebViewController = segue.destinationViewController;
    socialWebViewController.socialService = self.socialServices[indexPathForSelectedRow.row];
    socialWebViewController.socialURL = self.socialURLs[indexPathForSelectedRow.row];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.socialServices.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"socialCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = self.socialServices[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.socialServices[indexPath.row]];
    
    return cell;
}

@end
