//
//  MVCNetworkController.h
//  Singleton
//
//  Created by John Clem on 1/15/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVCNetworkController : NSObject

+ (MVCNetworkController *)sharedController;

- (void)loginWithEmail:(NSString *)email andPassword:(NSString *)password;

- (void)logout;

- (NSArray *)getListOfThings;

@end
