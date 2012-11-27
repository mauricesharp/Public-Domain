//
//  UIView+KLM_UIView.h
//  DoScreenDemo
//
//  Created by Maurice Sharp on 11/23/12.
//  Copyright (c) 2012 KLMApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (KLM)

// adjusts the height of the view by detlaHeight
- (void) KLMadjustViewHeight:(CGFloat)deltaHeight;

// adjusts the y origin of the view by detlaYOrigin
- (void) KLMadjustViewYOrigin:(CGFloat)deltaYOrigin;



@end
