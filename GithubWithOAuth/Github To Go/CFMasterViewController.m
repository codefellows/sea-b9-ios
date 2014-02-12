//
//  CFMasterViewController.m
//  Github To Go
//
//  Created by John Clem on 2/3/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFMasterViewController.h"
#import "CFNetworkController.h"
#import "CFDetailViewController.h"
#import "Repo.h"
#import "CFAppDelegate.h"

@interface CFMasterViewController () <UISearchBarDelegate>

{
    NSMutableArray *_repos;
}

@property (strong,nonatomic) CFNetworkController *networkController;
@property (weak,nonatomic) CFAppDelegate *appDelegate;

@end

@implementation CFMasterViewController

- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.appDelegate = (CFAppDelegate *)[UIApplication sharedApplication].delegate;
    self.networkController = self.appDelegate.networkController;
    
     [self.networkController performSelector:@selector(beginOAuthAccess) withObject:nil afterDelay:.1];
    
    self.detailViewController = (CFDetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
//    CFNetworkController *networkController = [CFNetworkController new];
//    _repos = [networkController reposForSearchString:@"iOS"];
//    [self.tableView reloadData];
    
//    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Repo" inManagedObjectContext:self.managedObjectContext];
//    NSDictionary *dictionary = @{@"name": @"test", @"html_url" :@"www.google.com"};
//    Repo *repo = [[Repo alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:self.managedObjectContext withJsonDictionary:dictionary];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][section];
    
    return [sectionInfo numberOfObjects];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    Repo *repo = [self.fetchedResultsController objectAtIndexPath:indexPath];
    cell.textLabel.text = repo.name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Repo *repo = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    self.detailViewController.repo = repo;
}

#pragma mark - Search Bar Delegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    NSString *searchString = searchBar.text;
    CFNetworkController *networkController = [CFNetworkController new];
    _repos = [networkController reposForSearchString:searchString];
    
    for (NSDictionary *dictionary in _repos)
    {
        NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Repo" inManagedObjectContext:self.managedObjectContext];
        Repo *repo = [[Repo alloc] initWithEntity:entityDescription insertIntoManagedObjectContext:self.managedObjectContext withJsonDictionary:dictionary];
        NSLog(@"Inserted Repo : %@", repo);
    }
    
}

-(NSFetchedResultsController *)fetchedResultsController
{
    if (_fetchedResultsController != nil)
    {
        return _fetchedResultsController;
    }
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Repo"];
    request.fetchBatchSize = 25;
    
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    NSArray *sortDescriptors = @[descriptor];
    
    [request setSortDescriptors:sortDescriptors];
    
    NSFetchedResultsController *tempController = [[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:@"Repos"];
    tempController.delegate = self;
    self.fetchedResultsController = tempController;
    NSError *error;
    if (![self.fetchedResultsController performFetch:&error])
    {
        NSLog(@"%@", error.userInfo);
    }
    
    return _fetchedResultsController;
}

#pragma mark - FetchedResultsControllerDelegate

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id<NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
{
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationLeft];
            break;
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationRight];
            break;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
{
    switch (type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
            break;
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
            break;
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[self.tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
            break;
        case NSFetchedResultsChangeMove:
            [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView beginUpdates];
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}

@end
