//
//  PicktureAppDelegate.h
//  Pickture
//
//  Created by Naveen Selvadurai on 12/2/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PicktureViewController;

@interface PicktureAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    PicktureViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PicktureViewController *viewController;

@end

