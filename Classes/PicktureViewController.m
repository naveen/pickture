//
//  PicktureViewController.m
//  Pickture
//
//  Created by Naveen Selvadurai on 12/2/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "PicktureViewController.h"

@implementation PicktureViewController

@synthesize pickButton, picture, picker;

- (void)viewDidLoad {
	picker = [[UIImagePickerController alloc] init];
	picker.allowsImageEditing = YES;
	picker.delegate = self;
}

// by default, the source is UIImagePickerControllerSourceTypePhotoLibrary
- (IBAction)pickPhotoLibrary {
	picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	[self presentModalViewController:picker animated:YES];
}

// the camera does not work in the simulator
- (IBAction)pickCamera {
	picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	[self presentModalViewController:picker animated:YES];
}

- (void)imagePickerController:(UIImagePickerController *)imagePicker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editInfo {
	[picture setImage:image];
	[picture setFrame:CGRectMake(0, 0, 320, 400)];
	[[picker parentViewController] dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

- (void)dealloc {
	[pickButton release];
	[picture release];
	[picker release];
    [super dealloc];
}

@end
