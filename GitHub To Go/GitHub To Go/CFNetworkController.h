//
//  CFNetworkController.h
//  GitHub To Go
//
//  Created by John Clem on 1/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CFNetworkController : NSObject

+ (CFNetworkController *)sharedController;

- (NSArray *)reposForSearchString:(NSString *)searchString;

@end
