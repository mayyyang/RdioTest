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
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
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
- (IBAction)websiteButton:(UIButton *)sender forEvent:(UIEvent *)event
{
  

}

- (void)updateCurrentTrackRequest:(RDAPIRequest *)request didLoadData:(NSDictionary *)data
{
    NSString *trackKey = [request.parameters objectForKey:@"keys"];
    NSDictionary *metadata = [data objectForKey:trackKey];
    [self.artistLabel setText:[metadata objectForKey:@"artist"]];
}



@end
