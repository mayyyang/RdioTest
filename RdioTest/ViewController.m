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
@property BOOL playing;
@property BOOL paused;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.testButton setImage:[UIImage imageNamed:@"play-50.png"] forState:UIControlStateSelected | UIControlStateHighlighted];
}


- (IBAction)listenButton:(UIButton *)sender
{    
    _rdio = [[Rdio alloc] initWithConsumerKey:@"gvrzny2hjqstkmgts9m929bk" andSecret:@"HvU4tfpcYp" delegate:nil];
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



- (void)rdioPlayerChangedFromState:(RDPlayerState)oldState toState:(RDPlayerState)newState
{
    self.playing = (newState != RDPlayerStateInitializing && newState != RDPlayerStateStopped);
    self.paused = (newState);
}

@end
