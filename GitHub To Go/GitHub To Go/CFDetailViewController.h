//
//  CFDetailViewController.h
//  GitHub To Go
//
//  Created by John Clem on 1/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CFDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIWebView *detailWebView;
@end
