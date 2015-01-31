//
//  ViewController.h
//  RdioTest
//
//  Created by May Yang on 1/30/15.
//  Copyright (c) 2015 May Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Rdio/Rdio.h>

@interface ViewController : UIViewController <RdioDelegate, RDPlayerDelegate>
@property (readonly) Rdio *rdio;

@end

