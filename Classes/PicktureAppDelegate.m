//
//  PicktureAppDelegate.m
//  Pickture
//
//  Created by Naveen Selvadurai on 12/2/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "PicktureAppDelegate.h"
#import "PicktureViewController.h"

@implementation PicktureAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
