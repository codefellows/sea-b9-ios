//
//  MVCRedditPost.m
//  MVC Demo
//
//  Created by John Clem on 1/14/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCRedditPost.h"

@implementation MVCRedditPost

- (instancetype)initWithAuthor:(NSString *)author andTitle:(NSString *)title andPermalink:(NSString *)permalink
{
    if (self = [super init]) {
        self.author = author;
        self.title = title;
        self.permalink = permalink;
    }
    
    return self;
}

@end
