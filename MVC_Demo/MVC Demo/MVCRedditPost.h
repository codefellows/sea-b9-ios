//
//  MVCRedditPost.h
//  MVC Demo
//
//  Created by John Clem on 1/14/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVCRedditPost : NSObject

- (instancetype)initWithAuthor:(NSString *)author andTitle:(NSString *)title andPermalink:(NSString *)permalink;

@property (nonatomic) NSString *author;
@property (nonatomic) NSString *permalink;
@property (nonatomic) NSString *title;

@end
