//
//  UIColor+CodeFellows.m
//  Categories Demo
//
//  Created by John Clem on 1/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "UIColor+CodeFellows.h"

@implementation UIColor (CodeFellows)

+ (UIColor *)tanColor
{
    return [UIColor colorWithRed:.88 green:.88 blue:.65 alpha:1.0];
}

+ (UIColor *)randomColor
{
    NSMutableArray *comps = [NSMutableArray new];
    
    for (int i=0; i<3; i++) {
        NSUInteger r = arc4random_uniform(256);
        CGFloat randomColorComponent = r/255.f;
//        [comps addObject:@(randomColorComponent)];
        [comps addObject:[NSNumber numberWithFloat:randomColorComponent]];
    }
    return [UIColor colorWithRed:[comps[0] floatValue] green:[comps[1] floatValue] blue:[comps[2] floatValue] alpha:1.f];
}

+ (UIColor *)makeGreenestFromColor:(UIColor *)color
{
    CGFloat r,g,b,a;
    [color getRed:&r green:&g blue:&b alpha:&a];
    
    return [UIColor colorWithRed:r green:1.f blue:b alpha:a];
}

- (NSString *)logColorComponents
{
    CGFloat r,g,b,a;
    [self getRed:&r green:&g blue:&b alpha:&a];
    
    NSInteger logCount = [[NSUserDefaults standardUserDefaults] integerForKey:@"ColorLogCount"] + 1;
    
    [[NSUserDefaults standardUserDefaults] setInteger:logCount forKey:@"ColorLogCount"];
    
    
    return [NSString stringWithFormat:@"R: %f, G: %f, B: %f, A: %f", r, g, b, a];
    
}

@end
