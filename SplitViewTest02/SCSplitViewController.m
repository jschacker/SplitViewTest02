//
//  SCSplitViewController.m
//  SplitViewTest02
//
//  Created by Shane Craig on 5/13/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SCSplitViewController.h"


@implementation SCSplitViewController

- (void)dealloc {
	[super dealloc];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
	
}

/**
 * Sent to the view controller just before
 * the user interface begins rotating.
 */
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
	
	//get master and detail view controller
	UIViewController* master = [self.viewControllers objectAtIndex:0];
	UIViewController* detail = [self.viewControllers objectAtIndex:1];
	
	//only handle the interface orientation
	//of portrait mode
	if(interfaceOrientation == UIInterfaceOrientationPortrait ||
	   interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
		//adjust master view
		CGRect f = master.view.frame;
		f.size.width = 320;
		f.size.height = 1024;
		f.origin.x = 0;
		f.origin.y = 0;
		
		[master.view setFrame:f];
		
		//adjust detail view
		f = detail.view.frame;
		f.size.width = 830;
		f.size.height = 1024;
		f.origin.x = 320;
		f.origin.y = 0;
		
		[detail.view setFrame:f];
	}
	else {
		//call super method
		[super willAnimateRotationToInterfaceOrientation:interfaceOrientation duration:duration];
	}
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
	
}

@end
