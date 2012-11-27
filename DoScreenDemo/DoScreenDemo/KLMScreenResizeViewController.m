//
//  KLMScreenResizeViewController.m
//  DoScreenDemo
//
//  Created by Maurice Sharp on 11/23/12.
//  Copyright (c) 2012 KLMApps. All rights reserved.
//

#import "KLMScreenResizeViewController.h"

#import "UIView+KLM.h"


@interface KLMScreenResizeViewController ()

@end

@implementation KLMScreenResizeViewController

@synthesize viewsToGrow, viewsToGrowByHalf;
@synthesize dynamicViewsToGrow, dynamicViewsToGrowByHalf;
@synthesize viewsToShift, viewsToShiftByHalf;
@synthesize dynamicViewsToShift, dynamicViewsToShiftByHalf;



#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	[self resizeViewsForScreen:NO];
}



#pragma mark - State Checking

- (BOOL)is4InchScreen
{
	BOOL is4Inch = [UIDevice currentDevice].userInterfaceIdiom ==
    UIUserInterfaceIdiomPhone;
	
	is4Inch &= [UIScreen mainScreen].bounds.size.height > 480.0;
	
	return is4Inch;
}


- (CGFloat) screenYDelta
{
	return [UIScreen mainScreen].bounds.size.height - 480.0;
}


#pragma mark - View resizing and movement methods

- (void) resizeViewsForScreen:(BOOL)dynamicOnly
{
	CGFloat yOffset = [UIScreen mainScreen].bounds.size.height - 480.0;
	
	for (UIView *atView in dynamicViewsToGrow) {
		[atView KLMadjustViewHeight:yOffset];
	}
	
	for (UIView *atView in dynamicViewsToShift) {
		[atView KLMadjustViewYOrigin:yOffset];
	}
	
	if (!dynamicOnly) {
		for (UIView *atView in viewsToGrow) {
			[atView KLMadjustViewHeight:yOffset];
		}
		
		for (UIView *atView in viewsToShift) {
			[atView KLMadjustViewYOrigin:yOffset];
		}
	}
	
	// get half the offset
	yOffset /= 2.0 ;
    
	for (UIView *atView in dynamicViewsToGrowByHalf) {
		[atView KLMadjustViewHeight:yOffset];
	}
    
	for (UIView *atView in dynamicViewsToShiftByHalf) {
		[atView KLMadjustViewYOrigin:yOffset];
	}
	
	if (!dynamicOnly) {
		for (UIView *atView in viewsToShiftByHalf) {
			[atView KLMadjustViewYOrigin:yOffset];
		}
		
		for (UIView *atView in viewsToGrowByHalf) {
			[atView KLMadjustViewHeight:yOffset];
		}
	}
}


- (void) growViewForScreen:(UIView*)theView
{
	CGFloat yOffset = [UIScreen mainScreen].bounds.size.height - 480.0;
	
	[theView KLMadjustViewHeight:yOffset];
}



- (void) shiftViewForScreen:(UIView*)theView halfDistance:(BOOL)halfDistance
{
	CGFloat yOffset = [UIScreen mainScreen].bounds.size.height - 480.0;
    
	if (halfDistance) {
		yOffset /= 2.0;
	}
	
	[theView KLMadjustViewYOrigin:yOffset];
}

@end
