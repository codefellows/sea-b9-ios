//
//  CFButton.m
//  Github To Go
//
//  Created by John Clem on 2/12/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFButton.h"

@interface CFButton ()
{
    UIColor* pylonColor;
}

@end

@implementation CFButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        pylonColor = [UIColor colorWithRed: 0.745 green: 0 blue: 0.016 alpha: 1];
    }
    return self;
}

- (void)changeAccentColorTo:(UIColor *)newColor
{
    pylonColor = newColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* noneColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0];
    UIColor* color14 = [UIColor colorWithRed: 0.641 green: 0.347 blue: 0.026 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 0.983 green: 0.645 blue: 0.206 alpha: 1];
    UIColor* color13 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.658];
    UIColor* color17 = [UIColor colorWithRed: 0.246 green: 0 blue: 0.002 alpha: 1];
    UIColor* color7 = [UIColor colorWithRed: 0.983 green: 0.663 blue: 0.246 alpha: 1];
    UIColor* color5 = [UIColor colorWithRed: 0.952 green: 0.506 blue: 0.039 alpha: 1];
    UIColor* color16 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 0.5];
    UIColor* color3 = [UIColor colorWithRed: 0.581 green: 0.586 blue: 0.572 alpha: 1];
    UIColor* color21 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color8 = [UIColor colorWithRed: 0.483 green: 0.267 blue: 0.015 alpha: 1];
    UIColor* color0 = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIColor* color15 = [UIColor colorWithRed: 0.978 green: 0.626 blue: 0.19 alpha: 1];
    UIColor* color19 = [UIColor colorWithRed: 0.793 green: 0.793 blue: 0.793 alpha: 1];
    UIColor* color2 = [UIColor colorWithRed: 0.674 green: 0.679 blue: 0.665 alpha: 1];
    UIColor* color1 = [UIColor colorWithRed: 0.419 green: 0.428 blue: 0.403 alpha: 1];
    UIColor* color4 = [UIColor colorWithRed: 0.151 green: 0.154 blue: 0.147 alpha: 1];
    UIColor* color20 = [UIColor colorWithRed: 0.859 green: 0.859 blue: 0.859 alpha: 1];
    UIColor* color12 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];
    UIColor* color10 = [UIColor colorWithRed: 0.991 green: 0.796 blue: 0.519 alpha: 1];
    UIColor* color11 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.494];
    
    //// Gradient Declarations
    NSArray* linearGradient3980Colors = [NSArray arrayWithObjects:
                                         (id)color19.CGColor,
                                         (id)color20.CGColor,
                                         (id)color21.CGColor, nil];
    CGFloat linearGradient3980Locations[] = {0, 0.4, 1};
    CGGradientRef linearGradient3980 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient3980Colors, linearGradient3980Locations);
    NSArray* radialGradient4132Colors = [NSArray arrayWithObjects:
                                         (id)color0.CGColor,
                                         (id)noneColor.CGColor, nil];
    CGFloat radialGradient4132Locations[] = {0, 1};
    CGGradientRef radialGradient4132 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)radialGradient4132Colors, radialGradient4132Locations);
    NSArray* radialGradient4044Colors = [NSArray arrayWithObjects:
                                         (id)color13.CGColor,
                                         (id)noneColor.CGColor, nil];
    CGFloat radialGradient4044Locations[] = {0, 1};
    CGGradientRef radialGradient4044 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)radialGradient4044Colors, radialGradient4044Locations);
    NSArray* radialGradient3105Colors = [NSArray arrayWithObjects:
                                         (id)color16.CGColor,
                                         (id)noneColor.CGColor, nil];
    CGFloat radialGradient3105Locations[] = {0, 1};
    CGGradientRef radialGradient3105 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)radialGradient3105Colors, radialGradient3105Locations);
    NSArray* linearGradient4036Colors = [NSArray arrayWithObjects:
                                         (id)color5.CGColor,
                                         (id)color6.CGColor,
                                         (id)color7.CGColor,
                                         (id)color8.CGColor, nil];
    CGFloat linearGradient4036Locations[] = {0, 0.19, 0.43, 1};
    CGGradientRef linearGradient4036 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient4036Colors, linearGradient4036Locations);
    NSArray* linearGradient4042Colors = [NSArray arrayWithObjects:
                                         (id)color11.CGColor,
                                         (id)color12.CGColor, nil];
    CGFloat linearGradient4042Locations[] = {0, 1};
    CGGradientRef linearGradient4042 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient4042Colors, linearGradient4042Locations);
    NSArray* linearGradient4032Colors = [NSArray arrayWithObjects:
                                         (id)color1.CGColor,
                                         (id)color2.CGColor,
                                         (id)color3.CGColor,
                                         (id)color4.CGColor, nil];
    CGFloat linearGradient4032Locations[] = {0, 0.25, 0.5, 1};
    CGGradientRef linearGradient4032 = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)linearGradient4032Colors, linearGradient4032Locations);
    
    //// Frames
    CGRect frame = self.frame;
    
    //// Subframes
    CGRect battery = CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.11957 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.02597 + 0.5), floor(CGRectGetWidth(frame) * 0.82609 + 0.5) - floor(CGRectGetWidth(frame) * 0.11957 + 0.5), floor(CGRectGetHeight(frame) * 0.94805 + 0.5) - floor(CGRectGetHeight(frame) * 0.02597 + 0.5));
    CGRect pylon = CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.60870 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.54545 + 0.5), floor(CGRectGetWidth(frame) * 0.94565 + 0.5) - floor(CGRectGetWidth(frame) * 0.60870 + 0.5), floor(CGRectGetHeight(frame) * 0.94805 + 0.5) - floor(CGRectGetHeight(frame) * 0.54545 + 0.5));
    
    
    //// battery
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.99427 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.74498 * CGRectGetHeight(battery))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.99427 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.74498 * CGRectGetHeight(battery))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.50337 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.99863 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.99427 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.88507 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.77449 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.99863 * CGRectGetHeight(battery))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.01247 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.74498 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.23226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.99863 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.01247 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.88507 * CGRectGetHeight(battery))];
        [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.01247 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.74498 * CGRectGetHeight(battery))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.50337 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49133 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.01247 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.60490 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.23226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49133 * CGRectGetHeight(battery))];
        [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.99427 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.74498 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.77449 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49133 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.99427 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.60490 * CGRectGetHeight(battery))];
        [bezierPath closePath];
        CGContextSaveGState(context);
        [bezierPath addClip];
        CGRect bezierBounds = CGPathGetPathBoundingBox(bezierPath.CGPath);
        CGFloat bezierResizeRatio = MIN(CGRectGetWidth(bezierBounds) / 63.82, CGRectGetHeight(bezierBounds) / 36.02);
        CGContextDrawRadialGradient(context, radialGradient4132,
                                    CGPointMake(CGRectGetMidX(bezierBounds) + -0 * bezierResizeRatio, CGRectGetMidY(bezierBounds) + 0 * bezierResizeRatio), 0 * bezierResizeRatio,
                                    CGPointMake(CGRectGetMidX(bezierBounds) + -0 * bezierResizeRatio, CGRectGetMidY(bezierBounds) + 0 * bezierResizeRatio), 25.41 * bezierResizeRatio,
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
        
        
        //// g4015
        {
            //// Bezier 2 Drawing
            UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
            [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48111 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.02677 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18541 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.25755 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.02677 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.09791 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.77234 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19168 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.76580 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48111 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.93097 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.07576 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.85984 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.25755 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.93097 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.77234 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.70468 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.93097 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.85984 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18541 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.76716 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19059 * CGRectGetHeight(battery))];
            [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48111 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.02677 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.89370 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.09791 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.70468 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.02677 * CGRectGetHeight(battery))];
            [bezier2Path closePath];
            CGContextSaveGState(context);
            [bezier2Path addClip];
            CGRect bezier2Bounds = CGPathGetPathBoundingBox(bezier2Path.CGPath);
            CGContextDrawLinearGradient(context, linearGradient4032,
                                        CGPointMake(CGRectGetMidX(bezier2Bounds) + -27.29 * CGRectGetWidth(bezier2Bounds) / 53.17, CGRectGetMidY(bezier2Bounds) + 0 * CGRectGetHeight(bezier2Bounds) / 64.2),
                                        CGPointMake(CGRectGetMidX(bezier2Bounds) + 27.29 * CGRectGetWidth(bezier2Bounds) / 53.17, CGRectGetMidY(bezier2Bounds) + 0 * CGRectGetHeight(bezier2Bounds) / 64.2),
                                        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
            CGContextRestoreGState(context);
            
            
            //// Bezier 3 Drawing
            UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
            [bezier3Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48122 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03329 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18719 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.26432 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03329 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.10230 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.35363 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19328 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.34729 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48122 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49698 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.08795 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.43852 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.26432 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49698 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.35363 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.69812 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.49698 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.43852 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18719 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.34861 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19221 * CGRectGetHeight(battery))];
            [bezier3Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48122 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03329 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.88151 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.10230 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.69812 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03329 * CGRectGetHeight(battery))];
            [bezier3Path closePath];
            CGContextSaveGState(context);
            [bezier3Path addClip];
            CGRect bezier3Bounds = CGPathGetPathBoundingBox(bezier3Path.CGPath);
            CGContextDrawLinearGradient(context, linearGradient4036,
                                        CGPointMake(CGRectGetMidX(bezier3Bounds) + -25.79 * CGRectGetWidth(bezier3Bounds) / 51.58, CGRectGetMidY(bezier3Bounds) + -1.42 * CGRectGetHeight(bezier3Bounds) / 32.92),
                                        CGPointMake(CGRectGetMidX(bezier3Bounds) + 25.79 * CGRectGetWidth(bezier3Bounds) / 51.58, CGRectGetMidY(bezier3Bounds) + -1.42 * CGRectGetHeight(bezier3Bounds) / 32.92),
                                        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
            CGContextRestoreGState(context);
            
            
            //// Bezier 4 Drawing
            
            
            //// Bezier 5 Drawing
            UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
            [bezier5Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.86226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18325 * CGRectGetHeight(battery))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.86226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18325 * CGRectGetHeight(battery))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48289 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.31651 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.86226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.25685 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.69241 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.31651 * CGRectGetHeight(battery))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.10352 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18325 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.27337 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.31651 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.10352 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.25685 * CGRectGetHeight(battery))];
            [bezier5Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.10352 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18325 * CGRectGetHeight(battery))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48289 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.04999 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.10352 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.10966 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.27337 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.04999 * CGRectGetHeight(battery))];
            [bezier5Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.86226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.18325 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.69241 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.04999 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.86226 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.10966 * CGRectGetHeight(battery))];
            [bezier5Path closePath];
            [color10 setFill];
            [bezier5Path fill];
            
            
            //// Bezier 6 Drawing
            UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
            [bezier6Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.18827 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.30109 * CGRectGetHeight(battery))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.19843 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.72713 * CGRectGetHeight(battery))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.32847 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.75976 * CGRectGetHeight(battery))];
            [bezier6Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.32441 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.33554 * CGRectGetHeight(battery))];
            [bezier6Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.47883 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.33010 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.32441 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.33554 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.38333 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.33554 * CGRectGetHeight(battery))];
            [bezier6Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.10294 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.23039 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.33046 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.32418 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.16071 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.26729 * CGRectGetHeight(battery))];
            [bezier6Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.18827 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.30109 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.14324 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.28349 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.18827 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.30109 * CGRectGetHeight(battery))];
            [bezier6Path closePath];
            bezier6Path.miterLimit = 4;
            
            CGContextSaveGState(context);
            [bezier6Path addClip];
            CGRect bezier6Bounds = CGPathGetPathBoundingBox(bezier6Path.CGPath);
            CGContextDrawLinearGradient(context, linearGradient4042,
                                        CGPointMake(CGRectGetMidX(bezier6Bounds) + -2.44 * CGRectGetWidth(bezier6Bounds) / 24.43, CGRectGetMidY(bezier6Bounds) + -9.4 * CGRectGetHeight(bezier6Bounds) / 37.59),
                                        CGPointMake(CGRectGetMidX(bezier6Bounds) + -2.97 * CGRectGetWidth(bezier6Bounds) / 24.43, CGRectGetMidY(bezier6Bounds) + 9.53 * CGRectGetHeight(bezier6Bounds) / 37.59),
                                        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 7 Drawing
        UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
        [bezier7Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.66220 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.11896 * CGRectGetHeight(battery))];
        [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.66220 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.11896 * CGRectGetHeight(battery))];
        [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48864 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19903 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.66220 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.16318 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.58449 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19903 * CGRectGetHeight(battery))];
        [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.31507 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.11896 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.39278 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.19903 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.31507 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.16318 * CGRectGetHeight(battery))];
        [bezier7Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.31507 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.11896 * CGRectGetHeight(battery))];
        [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.48864 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03889 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.31507 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.07474 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.39278 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03889 * CGRectGetHeight(battery))];
        [bezier7Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.66220 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.11896 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.58449 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03889 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.66220 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.07474 * CGRectGetHeight(battery))];
        [bezier7Path closePath];
        CGContextSaveGState(context);
        [bezier7Path addClip];
        CGRect bezier7Bounds = CGPathGetPathBoundingBox(bezier7Path.CGPath);
        CGFloat bezier7ResizeRatio = MIN(CGRectGetWidth(bezier7Bounds) / 22.56, CGRectGetHeight(bezier7Bounds) / 11.37);
        CGContextDrawRadialGradient(context, radialGradient4044,
                                    CGPointMake(CGRectGetMidX(bezier7Bounds) + -0 * bezier7ResizeRatio, CGRectGetMidY(bezier7Bounds) + 0 * bezier7ResizeRatio), 0 * bezier7ResizeRatio,
                                    CGPointMake(CGRectGetMidX(bezier7Bounds) + -0 * bezier7ResizeRatio, CGRectGetMidY(bezier7Bounds) + 0 * bezier7ResizeRatio), 8.47 * bezier7ResizeRatio,
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
        
        
        //// g4005
        {
            //// Bezier 8 Drawing
            UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
            [bezier8Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.49574 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.01207 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.05506 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.44053 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.01207 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03135 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.12603 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.05676 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.12426 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.49574 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.16901 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.36808 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.14974 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.44053 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.16901 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.12603 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.55094 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.16901 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.14974 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.05506 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.12463 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.05646 * CGRectGetHeight(battery))];
            [bezier8Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.49574 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.01207 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.61731 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03135 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.55094 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.01207 * CGRectGetHeight(battery))];
            [bezier8Path closePath];
            [color15 setFill];
            [bezier8Path fill];
            [color14 setStroke];
            bezier8Path.lineWidth = 1;
            [bezier8Path stroke];
            
            
            //// Bezier 9 Drawing
            UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
            [bezier9Path moveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.58961 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.06585 * CGRectGetHeight(battery))];
            [bezier9Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.58961 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.06585 * CGRectGetHeight(battery))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.49322 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.09800 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.58961 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.08361 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.54645 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.09800 * CGRectGetHeight(battery))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.39683 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.06585 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.43998 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.09800 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.39683 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.08361 * CGRectGetHeight(battery))];
            [bezier9Path addLineToPoint: CGPointMake(CGRectGetMinX(battery) + 0.39683 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.06585 * CGRectGetHeight(battery))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.49322 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03369 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.39683 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.04809 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.43998 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03369 * CGRectGetHeight(battery))];
            [bezier9Path addCurveToPoint: CGPointMake(CGRectGetMinX(battery) + 0.58961 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.06585 * CGRectGetHeight(battery)) controlPoint1: CGPointMake(CGRectGetMinX(battery) + 0.54645 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.03369 * CGRectGetHeight(battery)) controlPoint2: CGPointMake(CGRectGetMinX(battery) + 0.58961 * CGRectGetWidth(battery), CGRectGetMinY(battery) + 0.04809 * CGRectGetHeight(battery))];
            [bezier9Path closePath];
            [color8 setFill];
            [bezier9Path fill];
        }
    }
    
    
    //// pylon
    {
        //// Bezier 10 Drawing
        UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
        [bezier10Path moveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.89020 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86377 * CGRectGetHeight(pylon))];
        [bezier10Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.89020 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86377 * CGRectGetHeight(pylon))];
        [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51232 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.95335 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.89020 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.91325 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.72102 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.95335 * CGRectGetHeight(pylon))];
        [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.13444 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86377 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.30362 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.95335 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.13444 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.91325 * CGRectGetHeight(pylon))];
        [bezier10Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.13444 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86377 * CGRectGetHeight(pylon))];
        [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51232 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.77419 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.13444 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.81430 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.30362 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.77419 * CGRectGetHeight(pylon))];
        [bezier10Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.89020 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86377 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.72102 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.77419 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.89020 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.81430 * CGRectGetHeight(pylon))];
        [bezier10Path closePath];
        CGContextSaveGState(context);
        [bezier10Path addClip];
        CGRect bezier10Bounds = CGPathGetPathBoundingBox(bezier10Path.CGPath);
        CGFloat bezier10ResizeRatio = MIN(CGRectGetWidth(bezier10Bounds) / 23.43, CGRectGetHeight(bezier10Bounds) / 5.55);
        CGContextDrawRadialGradient(context, radialGradient3105,
                                    CGPointMake(CGRectGetMidX(bezier10Bounds) + -0 * bezier10ResizeRatio, CGRectGetMidY(bezier10Bounds) + 0 * bezier10ResizeRatio), 0 * bezier10ResizeRatio,
                                    CGPointMake(CGRectGetMidX(bezier10Bounds) + -0 * bezier10ResizeRatio, CGRectGetMidY(bezier10Bounds) + 0 * bezier10ResizeRatio), 6.48 * bezier10ResizeRatio,
                                    kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
        CGContextRestoreGState(context);
        
        
        //// Layer_x0020_2
        {
            //// Bezier 11 Drawing
        }
        
        
        //// g3982
        {
            //// Bezier 12 Drawing
            UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
            [bezier12Path moveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.91350 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80858 * CGRectGetHeight(pylon))];
            [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.56073 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.17264 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51207 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.14516 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.55060 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.15497 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.53235 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.14516 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.46342 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.17460 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.49180 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.14516 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.47355 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.15694 * CGRectGetHeight(pylon))];
            [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.11875 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.81055 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.12078 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86354 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.11064 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.82625 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.11064 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.84784 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.16741 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.88710 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.13092 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.87925 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.14714 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.88710 * CGRectGetHeight(pylon))];
            [bezier12Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.86485 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.88710 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.91148 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.86158 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.88512 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.88710 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.90337 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.87728 * CGRectGetHeight(pylon))];
            [bezier12Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.91350 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80858 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.92161 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.84588 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.92161 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.82625 * CGRectGetHeight(pylon))];
            [bezier12Path closePath];
            bezier12Path.miterLimit = 4;
            
            [pylonColor setFill];
            [bezier12Path fill];
            [color17 setStroke];
            bezier12Path.lineWidth = 1;
            [bezier12Path stroke];
            
            
            //// g6487
            {
                //// Bezier 13 Drawing
                UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
                [bezier13Path moveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.21797 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.79127 * CGRectGetHeight(pylon))];
                [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.22811 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80894 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.21189 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80109 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.21797 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80894 * CGRectGetHeight(pylon))];
                [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.79985 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80894 * CGRectGetHeight(pylon))];
                [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.80998 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.79127 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.80998 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80894 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.81606 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.80109 * CGRectGetHeight(pylon))];
                [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.52006 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.26917 * CGRectGetHeight(pylon))];
                [bezier13Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.50181 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.26917 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.51398 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.25935 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.50587 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.25935 * CGRectGetHeight(pylon))];
                [bezier13Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.21797 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.79127 * CGRectGetHeight(pylon))];
                [bezier13Path closePath];
                bezier13Path.miterLimit = 4;
                
                CGContextSaveGState(context);
                [bezier13Path addClip];
                CGRect bezier13Bounds = CGPathGetPathBoundingBox(bezier13Path.CGPath);
                CGContextDrawLinearGradient(context, linearGradient3980,
                                            CGPointMake(CGRectGetMidX(bezier13Bounds) + -12.51 * CGRectGetWidth(bezier13Bounds) / 18.5, CGRectGetMidY(bezier13Bounds) + -8.18 * CGRectGetHeight(bezier13Bounds) / 16.96),
                                            CGPointMake(CGRectGetMidX(bezier13Bounds) + 14.59 * CGRectGetWidth(bezier13Bounds) / 18.5, CGRectGetMidY(bezier13Bounds) + 19.16 * CGRectGetHeight(bezier13Bounds) / 16.96),
                                            kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
                CGContextRestoreGState(context);
            }
        }
        
        
        //// g6498
        {
            //// Bezier 14 Drawing
            UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
            [bezier14Path moveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51613 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.74181 * CGRectGetHeight(pylon))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.47580 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.70101 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.49334 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.74181 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.47580 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.72407 * CGRectGetHeight(pylon))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51613 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.66021 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.47580 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.67618 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.49158 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.66021 * CGRectGetHeight(pylon))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.55646 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.70101 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.54068 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.66021 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.55470 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.67618 * CGRectGetHeight(pylon))];
            [bezier14Path addCurveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51613 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.74181 * CGRectGetHeight(pylon)) controlPoint1: CGPointMake(CGRectGetMinX(pylon) + 0.55646 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.72407 * CGRectGetHeight(pylon)) controlPoint2: CGPointMake(CGRectGetMinX(pylon) + 0.54068 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.74181 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.51613 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.74181 * CGRectGetHeight(pylon))];
            [bezier14Path closePath];
            [bezier14Path moveToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.49158 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.63715 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.48106 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.43316 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.55120 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.43316 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.54068 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.63715 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.48983 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.63715 * CGRectGetHeight(pylon))];
            [bezier14Path addLineToPoint: CGPointMake(CGRectGetMinX(pylon) + 0.49158 * CGRectGetWidth(pylon), CGRectGetMinY(pylon) + 0.63715 * CGRectGetHeight(pylon))];
            [bezier14Path closePath];
            bezier14Path.miterLimit = 4;
            
            [[UIColor blackColor] setFill];
            [bezier14Path fill];
        }
    }
    
    
    //// Cleanup
    CGGradientRelease(linearGradient3980);
    CGGradientRelease(radialGradient4132);
    CGGradientRelease(radialGradient4044);
    CGGradientRelease(radialGradient3105);
    CGGradientRelease(linearGradient4036);
    CGGradientRelease(linearGradient4042);
    CGGradientRelease(linearGradient4032);
    CGColorSpaceRelease(colorSpace);
    
}

@end
