//
//  ViewController.m
//  RdioTest
//
//  Created by May Yang on 1/30/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <CoreMedia/CoreMedia.h>

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)listenButton:(UIButton *)sender
{
    _rdio = [AppDelegate rdioInstance];
    [self.rdio preparePlayerWithDelegate:nil];
    [self.rdio.player playSource:@"p12691138"];

}
- (IBAction)pauseButton:(UIButton *)sender
{
    [self.rdio.player togglePause];
}

- (IBAction)nextButton:(UIButton *)sender
{
    [self.rdio.player next];
}

- (IBAction)previousButton:(UIButton *)sender
{
    [self.rdio.player previous];
}

- (IBAction)playButton:(UIButton *)sender
{
    [self.rdio.player play];
}



@end
