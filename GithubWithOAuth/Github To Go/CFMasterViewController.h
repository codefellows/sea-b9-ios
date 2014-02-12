//
//  CFMasterViewController.h
//  Github To Go
//
//  Created by John Clem on 2/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CFDetailViewController;

@interface CFMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) CFDetailViewController *detailViewController;
@property (strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong,nonatomic) NSFetchedResultsController *fetchedResultsController;


@end
