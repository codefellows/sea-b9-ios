//
//  CFNetworkController.m
//  GitHub To Go
//
//  Created by John Clem on 1/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFNetworkController.h"

@implementation CFNetworkController

+(CFNetworkController *)sharedController
{
    static dispatch_once_t pred;
    static CFNetworkController *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[CFNetworkController alloc] init];
    });
    
    return shared;
}
- (NSArray *)reposForSearchString:(NSString *)searchString
{
    // search string is iOS
    //https://api.github.com/search/repositories?q=tetris+language:assembly&sort=stars&order=desc
    
    searchString = [NSString stringWithFormat:@"https://api.github.com/search/repositories?q=%@", searchString];
    
    NSError *error;
    NSURL *searchURL = [NSURL URLWithString:searchString];
    NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
    NSDictionary *searchDictionary = [NSJSONSerialization JSONObjectWithData:searchData options:NSJSONReadingMutableContainers error:&error];
    return searchDictionary[@"items"];
}

@end

