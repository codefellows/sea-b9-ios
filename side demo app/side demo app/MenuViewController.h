//
//  MenuViewController.h
//  side demo app
//
//  Created by Brad on 1/27/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UITableViewController <UIGestureRecognizerDelegate>

- (void)openMenu;
- (void)closeMenu;
@end
