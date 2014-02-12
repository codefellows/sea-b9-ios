//
//  CFAppDelegate.h
//  Github To Go
//
//  Created by John Clem on 2/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CFNetworkController.h"


@interface CFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic,readonly) NSManagedObjectContext *managedObjectContext;
@property (strong,nonatomic,readonly) NSManagedObjectModel *managedObjectmodel;
@property (strong,nonatomic,readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong,nonatomic) CFNetworkController *networkController;


-(void)saveContext;
-(NSURL*)applicationDocumentsDirectory;



@end
