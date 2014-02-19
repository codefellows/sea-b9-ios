//
//  Wall.m
//  Hole in the Wall Tests
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Wall.h"

@implementation Wall

- (instancetype)initWithHole:(Hole *)hole
{
    if (self = [super init]) {
        self.hole = hole;
    }
    
    return self;
}

@end
