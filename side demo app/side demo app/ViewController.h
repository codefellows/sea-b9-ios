//
//  ViewController.h
//  side demo app
//
//  Created by Brad on 1/27/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewControllerDelegate <NSObject>

- (void)openMenu;
- (void)closeMenu;

@end

@interface ViewController : UIViewController

@property (nonatomic, unsafe_unretained) id<ViewControllerDelegate> delegate;

@end
