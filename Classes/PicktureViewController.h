//
//  PicktureViewController.h
//  Pickture
//
//  Created by Naveen Selvadurai on 12/2/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PicktureViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
	IBOutlet UIButton *pickButton;
	IBOutlet UIImageView *picture;
	
	UIImagePickerController *picker;
}

@property (nonatomic, retain) UIButton *pickButton;
@property (nonatomic, retain) UIImageView *picture;
@property (nonatomic, retain) UIImagePickerController *picker;

- (IBAction)pickPhotoLibrary;
- (IBAction)pickCamera;

@end