//
//  ContactMeViewController.m
//  MyResume
//
//  Created by Natasha Murashev on 11/16/13.
//  Copyright (c) 2013 NatashaTheRobot. All rights reserved.
//

#import "ContactMeViewController.h"
#import "sendgrid.h"

@interface ContactMeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextView *messageTextView;

@end

@implementation ContactMeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Actions

- (IBAction)onSendButtonTap:(id)sender
{
    sendgrid *sendgridMessage = [sendgrid user:@"natashaGA" andPass:@"GeneralAssemblySF1"];
    sendgridMessage.to = self.emailTextField.text;
    sendgridMessage.from = @"natasha@natashatherobot.com";
    sendgridMessage.subject = @"Contact From My Resume App";
    sendgridMessage.text = self.messageTextView.text;
    sendgridMessage.html = self.messageTextView.text;
    [sendgridMessage sendWithWeb];
    [self onClearButtonTap:self];
}

- (IBAction)onClearButtonTap:(id)sender
{
    self.nameTextField.text = nil;
    self.emailTextField.text = nil;
    self.messageTextView.text = @"Hi Natasha, ";
}

@end
