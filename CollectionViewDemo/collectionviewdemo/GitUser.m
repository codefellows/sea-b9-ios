//
//  GitUser.m
//  collectionviewdemo
//
//  Created by Brad on 1/28/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "GitUser.h"

@interface GitUser ()

@end

@implementation GitUser

- (void)downloadAvatar
{
    _isDownloading = YES;
    
    [_downloadQueue addOperationWithBlock:^{
        NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:_imageURL]];
        _userImage = [UIImage imageWithData:imageData];
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            [[NSNotificationCenter defaultCenter] postNotificationName:DOWNLOAD_NOTIFICATION
                                                                object:nil
                                                              userInfo:@{@"user": self}];
        }];
        
    }];
}


@end
