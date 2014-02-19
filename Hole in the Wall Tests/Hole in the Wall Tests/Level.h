//
//  Level.h
//  Hole in the Wall Tests
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Level : NSObject

@property (nonatomic, strong) NSMutableArray *players;
@property (nonatomic, strong) NSMutableArray *walls;
@property (nonatomic, readwrite) NSInteger number;

+ (instancetype)levelNumber:(NSInteger)number;

- (void)addPlayer:(Player *)player;

@end
