//
//  CFAppDelegate.m
//  Github To Go
//
//  Created by John Clem on 2/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFAppDelegate.h"
#import "CFMasterViewController.h"
#import "Repo.h"

@implementation CFAppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectmodel = _managedObjectmodel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.networkController = [CFNetworkController new];
    // Override point for customization after application launch.
    UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
    splitViewController.delegate = (id)navigationController.topViewController;
    
    UINavigationController *masterNavigationController = [splitViewController.viewControllers objectAtIndex:0];
    CFMasterViewController *controller = (CFMasterViewController*)masterNavigationController.topViewController;
    controller.managedObjectContext = self.managedObjectContext;
    
    return YES;
}

-(BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    [self.networkController handleCallBackURL:url];
    
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [self saveContext];
}

-(void)saveContext
{
    NSManagedObjectContext *context = self.managedObjectContext;
    NSError *error;
    if (context && [context hasChanges])
    {
        [context save:&error];
        
        if (error)
        {
            NSLog(@"error: %@",error);
        }
    }
}

-(NSURL* )applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

-(NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil)
    {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    
    return _managedObjectContext;
}

-(NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil)
    {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Github_To_Go.sqlite"];
    
    NSError *error = nil;
    
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectmodel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error])
    {
        if (error)
        {
            NSLog(@" error: %@",error);
        }
        
    }
    
    return _persistentStoreCoordinator;
}

-(NSManagedObjectModel *)managedObjectmodel
{
    if (_managedObjectmodel != nil)
    {
        return _managedObjectmodel;
    }
    
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Github_To_Go" withExtension:@"momd"];
    _managedObjectmodel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectmodel;
}

@end
