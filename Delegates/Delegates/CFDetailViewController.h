//
//  CFDetailViewController.h
//  Delegates
//
//  Created by John Clem on 1/22/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddFriendDelegate <NSObject>

@required
-(void)willAddFriend:(NSString *)buddy;

@optional
-(void)didTypeLetter:(NSString *)letter;

@end

@interface CFDetailViewController : UIViewController

@property (unsafe_unretained) id <AddFriendDelegate> delegate;


@end
