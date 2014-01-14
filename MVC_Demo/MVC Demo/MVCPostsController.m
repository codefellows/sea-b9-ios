//
//  MVCPostsController.m
//  MVC Demo
//
//  Created by John Clem on 1/14/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCPostsController.h"
#import "MVCRedditPost.h"

@implementation MVCPostsController

+ (NSMutableArray *)arrayOfPostsForURL:(NSURL *)url
{
    
    NSData *redditResponse = [NSData dataWithContentsOfURL:url];
    
    NSError *error;
    
    NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:redditResponse options:NSJSONReadingMutableContainers error:&error];
    
    NSMutableArray *posts = [NSMutableArray new];

    if (error) {
        NSLog(@"%@", error);
    } else {

        NSDictionary *dataDict = responseDict[@"data"];
        NSArray *children = dataDict[@"children"];
        
        for (NSDictionary *child in children) {
            NSDictionary *childData = child[@"data"];
            
            MVCRedditPost *post = [[MVCRedditPost alloc] initWithAuthor:childData[@"author"] andTitle:childData[@"title"] andPermalink:childData[@"permalink"]];
            
            [posts addObject:post];
        }
    }
    
    return posts;
}

@end
