//
//  CustomCollectionCell.m
//  collectionviewdemo
//
//  Created by Brad on 1/28/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "CustomCollectionCell.h"

@interface CustomCollectionCell ()

@property (nonatomic, strong) UIActivityIndicatorView *activityView;

@end

@implementation CustomCollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)setIsDownloading:(BOOL)isDownloading
{
    _isDownloading = isDownloading;
    
    if (isDownloading) {
        _activityView = [[UIActivityIndicatorView alloc] initWithFrame:self.contentView.frame];
        [self.contentView addSubview:_activityView];
        [_activityView startAnimating];
    } else {
        [_activityView stopAnimating];
        [_activityView removeFromSuperview];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
