//
//  ProjectViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "ProjectViewController.h"

@interface ProjectViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation ProjectViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.projectName;
    [self.activityIndicator startAnimating];
    
    NSURL *projectURL = [NSURL URLWithString:self.projectURL];
    NSURLRequest *projectRequest = [NSURLRequest requestWithURL:projectURL];
    self.webView.scalesPageToFit = YES;
    self.webView.delegate = self;
    [self.webView loadRequest:projectRequest];
}

#pragma mark - WebViewDelegate Methods

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}

@end
