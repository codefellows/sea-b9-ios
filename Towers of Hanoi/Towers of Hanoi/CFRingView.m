//
//  CFRingView.m
//  Towers of Hanoi
//
//  Created by John Clem on 1/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFRingView.h"

@implementation CFRingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //// Color Declarations
    UIColor* ringColor = [UIColor colorWithRed: 0.996 green: 0.427 blue: 0.435 alpha: 1];
    
    //// Frames
    CGRect frame = CGRectMake(0, 0, self.frame.size.width, 55);
    
    
    //// Rounded Rectangle Drawing
    UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(CGRectGetMinX(frame) + 7.5, CGRectGetMinY(frame) + 6.5, CGRectGetWidth(frame) - 14, 42) cornerRadius: 4];
    [ringColor setFill];
    [roundedRectanglePath fill];
}

@end
