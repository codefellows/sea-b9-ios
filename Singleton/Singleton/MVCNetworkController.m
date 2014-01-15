//
//  MVCNetworkController.m
//  Singleton
//
//  Created by John Clem on 1/15/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCNetworkController.h"

@implementation MVCNetworkController

+ (MVCNetworkController *)sharedController
{
    static dispatch_once_t pred;
    static MVCNetworkController *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[MVCNetworkController alloc] init];
        NSLog(@"alloc'ed and init'ed an MVCNetwork Controller");
    });
    
    return shared;
}

- (void)loginWithEmail:(NSString *)email andPassword:(NSString *)password
{
    NSLog(@"Logging In");
}

- (void)logout
{
    NSLog(@"Logging Out");
}

- (NSArray *)getListOfThings
{
    NSLog(@"Getting List Of Things");
    
    return @[@"thing1", @"thing2"];
}

@end
