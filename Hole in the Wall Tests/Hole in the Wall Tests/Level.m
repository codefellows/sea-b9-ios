//
//  Level.m
//  Hole in the Wall Tests
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "Level.h"

@interface Level ()

@end

@implementation Level

+ (instancetype)levelNumber:(NSInteger)number
{
    Level *level    = [Level new];
    level.number    = number;
    level.walls     = [NSMutableArray new];
    level.players   = [NSMutableArray new];
    return level;
}

- (void)addPlayer:(Player *)player
{
    if (_players.count < 4) {
        [self.players addObject:player];        
    }
}

@end
