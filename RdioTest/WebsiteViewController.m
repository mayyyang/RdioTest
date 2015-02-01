//
//  WebsiteViewController.m
//  RdioTest
//
//  Created by May Yang on 1/31/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "WebsiteViewController.h"

@interface WebsiteViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    NSURL *url = [NSURL URLWithString:@"http://noisepop.com/2015"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

- (IBAction)dismissButton:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
