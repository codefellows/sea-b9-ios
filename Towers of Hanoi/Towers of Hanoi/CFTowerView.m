//
//  CFTowerView.m
//  Towers of Hanoi
//
//  Created by John Clem on 1/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFTowerView.h"

@implementation CFTowerView

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
    UIColor* color = [UIColor colorWithRed: 0.337 green: 0.384 blue: 0.439 alpha: 1];
    
    //// Frames
    CGRect frame = CGRectMake(0, 0, 240, 448);
    
    //// Subframes
    CGRect centerTower = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame), floor((CGRectGetWidth(frame)) * 1.00000 + 0.5), floor((CGRectGetHeight(frame)) * 1.00000 + 0.5));
    
    
    //// Center Tower
    {
        //// Rectangle 3 Drawing
        UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(centerTower) + floor(CGRectGetWidth(centerTower) * 0.00208) + 0.5, CGRectGetMinY(centerTower) + floor(CGRectGetHeight(centerTower) * 0.90737) + 0.5, floor(CGRectGetWidth(centerTower) * 0.99792) - floor(CGRectGetWidth(centerTower) * 0.00208), floor(CGRectGetHeight(centerTower) * 0.99888) - floor(CGRectGetHeight(centerTower) * 0.90737))];
        [color setFill];
        [rectangle3Path fill];
        
        
        //// Rectangle 4 Drawing
        UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(centerTower) + floor(CGRectGetWidth(centerTower) * 0.41458) + 0.5, CGRectGetMinY(centerTower) + floor(CGRectGetHeight(centerTower) * 0.00112) + 0.5, floor(CGRectGetWidth(centerTower) * 0.58542) - floor(CGRectGetWidth(centerTower) * 0.41458), floor(CGRectGetHeight(centerTower) * 0.91183) - floor(CGRectGetHeight(centerTower) * 0.00112))];
        [color setFill];
        [rectangle4Path fill];
    }
    
    
}

@end
