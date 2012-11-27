//
//  UIView+KLM_UIView.m
//  DoScreenDemo
//
//  Created by Maurice Sharp on 11/23/12.
//  Copyright (c) 2012 KLMApps. All rights reserved.
//

#import "UIView+KLM.h"

@implementation UIView (KLM)

#pragma mark - Adjust View Dimensions and Position

- (void) KLMadjustViewHeight:(CGFloat)deltaHeight
{
	self.frame = CGRectMake(self.frame.origin.x,
							self.frame.origin.y,
							self.frame.size.width,
							self.frame.size.height + deltaHeight);
}


// adjusts the y origin of the view by detlaYOrigin
- (void) KLMadjustViewYOrigin:(CGFloat)deltaYOrigin
{
	self.frame = CGRectMake(self.frame.origin.x,
							self.frame.origin.y + deltaYOrigin,
							self.frame.size.width,
							self.frame.size.height);
}


@end
