//
//  KLMScreenResizeViewController.h
//  DoScreenDemo
//
//  Created by Maurice Sharp on 11/23/12.
//  Copyright (c) 2012 KLMApps. All rights reserved.
//

#import <UIKit/UIKit.h>

#define k4InchScreenFilePrefix	@"-568h"



@interface KLMScreenResizeViewController : UIViewController

//-------------------------------------------
// Screen Resizing for static views
//-------------------------------------------
// Views to make taller by the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *viewsToGrow;

// Views to make taller by half the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *viewsToGrowByHalf;

// Views to move down by the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *viewsToShift;

// Views to move down by half the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *viewsToShiftByHalf;


//-------------------------------------------
// Screen Resizing for dynamic views
//-------------------------------------------
// Views to make taller by the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *dynamicViewsToGrow;

// Views to make taller by half the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *dynamicViewsToGrowByHalf;

// Views to move down by the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *dynamicViewsToShift;

// Views to move down by half the screen offset
@property (retain, nonatomic) IBOutletCollection(UIView) NSArray *dynamicViewsToShiftByHalf;


// returns YES if this is a 4 Inch retina screen (e.g., iPhone 5)
- (BOOL) is4InchScreen;

- (CGFloat) screenYDelta;

- (void) resizeViewsForScreen:(BOOL)dynamicOnly;

- (void) growViewForScreen:(UIView*)theView;

- (void) shiftViewForScreen:(UIView*)theView halfDistance:(BOOL)halfDistance;



@end
