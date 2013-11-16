//
//  SocialWebViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "SocialWebViewController.h"

@interface SocialWebViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation SocialWebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.activityIndicator startAnimating];
    
    self.title = self.socialService;
    
    NSURL *url = [NSURL URLWithString:self.socialURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.webView.delegate = self;
    [self.webView loadRequest:request];
}

#pragma mark - WebView Delegate

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}

@end
