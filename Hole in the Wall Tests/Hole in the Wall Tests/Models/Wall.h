//
//  Wall.h
//  Hole in the Wall Tests
//
//  Created by John Clem on 2/18/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hole.h"

@interface Wall : NSObject

@property (nonatomic, strong) Hole *hole;

- (instancetype)initWithHole:(Hole *)hole;

@end
