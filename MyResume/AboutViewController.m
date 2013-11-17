//
//  AboutViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/17/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "AboutViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface AboutViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIView *imageContainerView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageContainerView.layer.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    self.imageContainerView.layer.borderWidth = 1.0f;
    
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + self.textView.frame.size.height / 4);
}

@end
