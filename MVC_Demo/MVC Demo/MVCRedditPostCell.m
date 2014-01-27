//
//  MVCRedditPostCell.m
//  MVC Demo
//
//  Created by John Clem on 1/14/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCRedditPostCell.h"

@implementation MVCRedditPostCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setPost:(MVCRedditPost *)post
{
    if (post) {
        _post = post;
        self.textLabel.text = _post.title;
        self.detailTextLabel.text = _post.author;
        self.backgroundColor = [UIColor whiteColor];
    }
}

@end
