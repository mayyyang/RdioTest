//
//  AppDelegate.h
//  RdioTest
//
//  Created by May Yang on 1/30/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Rdio/Rdio.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (Rdio *)rdioInstance;


@property (strong, nonatomic) UIWindow *window;
@property (readonly) Rdio *rdio;

@end

