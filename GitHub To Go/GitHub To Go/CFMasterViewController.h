//
//  CFMasterViewController.h
//  GitHub To Go
//
//  Created by John Clem on 1/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CFDetailViewController;

@interface CFMasterViewController : UITableViewController

@property (strong, nonatomic) CFDetailViewController *detailViewController;

@end
