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

@interface ViewController () {
    RDPlayer *_player;
}

@end

@implementation ViewController

- (RDPlayer *)player {
    if (_player == nil) {
        Rdio *sharedRdio = [AppDelegate rdioInstance];
        if (sharedRdio.player == nil) {
            [sharedRdio preparePlayerWithDelegate:nil];
        }
        _player = sharedRdio.player;
    }
    return _player;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)playButton:(UIButton *)sender
{
    [self.rdio preparePlayerWithDelegate:nil];
    NSArray *sources = [NSArray arrayWithObjects:@"t1", @"p1", @"a1", nil];
    [self.rdio.player playSources:sources];

}


@end
