//
//  CFViewController.h
//  Delegates
//
//  Created by John Clem on 1/22/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFDetailViewController.h"

@interface CFViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,AddFriendDelegate>

@end
