//
//  GitUser.h
//  collectionviewdemo
//
//  Created by Brad on 1/28/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GitUser : NSObject

- (void)downloadAvatar;

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *imageURL;
@property (strong,nonatomic) UIImage *userImage;
@property (nonatomic, readwrite) BOOL isDownloading;
@property (nonatomic, weak) NSOperationQueue *downloadQueue;

@end
