//
//  ProjectViewCell.h
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectViewCell : UICollectionViewCell

- (void)configureWithProjectName:(NSString *)projectName imageName:(NSString *)imageName;

@end
