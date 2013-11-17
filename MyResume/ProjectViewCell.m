//
//  ProjectViewCell.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "ProjectViewCell.h"

@interface ProjectViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ProjectViewCell

- (void)configureWithProjectName:(NSString *)projectName imageName:(NSString *)imageName
{
    self.label.text = projectName;
    self.imageView.image = [UIImage imageNamed:imageName];
}

@end
