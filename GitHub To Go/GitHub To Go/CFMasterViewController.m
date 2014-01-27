//
//  CFMasterViewController.m
//  GitHub To Go
//
//  Created by John Clem on 1/27/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFMasterViewController.h"

#import "CFDetailViewController.h"
#import "CFNetworkController.h"

@interface CFMasterViewController () {
    NSMutableArray *_objects;
}

@property (nonatomic) NSArray * searchResultsArray;
@end

@implementation CFMasterViewController

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.detailViewController = (CFDetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    self.searchResultsArray = [[CFNetworkController sharedController] reposForSearchString:@"iOS"];
    NSLog(@"%@", self.searchResultsArray);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.searchResultsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary * repo = [self.searchResultsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [repo objectForKey:@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        NSDictionary *repoDict = _searchResultsArray[indexPath.row];
        self.detailViewController.detailItem = repoDict;
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

@end
