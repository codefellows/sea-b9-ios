//
//  CustomCollectionCell.h
//  collectionviewdemo
//
//  Created by Brad on 1/28/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCollectionCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (readwrite, nonatomic) BOOL isDownloading;

@end
