//
//  ViewController.m
//  collectionviewdemo
//
//  Created by Brad on 1/28/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionCell.h"
#import "GitUser.h"

@interface ViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) NSOperationQueue *downloadQueue;
@property (strong,nonatomic) NSMutableArray *usersArray;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _downloadQueue = [NSOperationQueue new];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(downloadFinishedNotification:) name:DOWNLOAD_NOTIFICATION object:nil];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    self.searchBar.delegate = self;
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.usersArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    GitUser *user = self.usersArray[indexPath.row];
    
    CustomCollectionCell *customCell = (CustomCollectionCell *)cell;
    customCell.nameLabel.text = user.name;
    
    if (user.userImage) {
        customCell.userImageView.image = user.userImage;
    } else {
        if (!user.isDownloading) {
            [user downloadAvatar];
            customCell.isDownloading = YES;
            customCell.backgroundColor = [UIColor redColor];
        }
    }
    
    return customCell;
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    self.usersArray = [NSMutableArray new];
    
    [searchBar resignFirstResponder];
    [self searchForUser:searchBar.text];
}

-(void)searchForUser:(NSString *)searchString
{
    
    searchString = [NSString stringWithFormat:@"https://api.github.com/search/users?q=%@",searchString];
    
   searchString = [searchString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    NSError *error;
    NSURL *searchURL = [NSURL URLWithString:searchString];
    
    @try {
        NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
        NSDictionary *searchDictionary =[NSJSONSerialization JSONObjectWithData:searchData options:NSJSONReadingMutableContainers|NSJSONReadingAllowFragments error:&error];
        NSArray *searchArray = searchDictionary[@"items"];
//        NSLog(@"%@",searchArray);
        [self createUsersFromArray:searchArray];
    }
    @catch (NSException *exception) {
        NSLog(@"API Limit Reached? %@", exception.debugDescription);
        if (error) {
            NSLog(@"Error: %@", error.debugDescription);
        }
    }
    
}

-(void)createUsersFromArray:(NSArray *)searchArray
{
    
    for (NSDictionary *dictionary in searchArray)
    {
        GitUser *user = [GitUser new];
        user.name = dictionary[@"login"];
        user.imageURL = dictionary[@"avatar_url"];
        user.downloadQueue = _downloadQueue;
        [self.usersArray addObject:user];
    }
    
    [self.collectionView reloadData];
}

#pragma mark - NSNotificationCenter

- (void)downloadFinishedNotification:(NSNotification *)note
{
    id sender = [[note userInfo] objectForKey:@"user"];
    
    if ([sender isKindOfClass:[GitUser class]]) {
        NSLog(@"Download Finished For User: %@", sender);
        NSIndexPath *userPath = [NSIndexPath indexPathForItem:[_usersArray indexOfObject:sender] inSection:0];
        CustomCollectionCell *cell = [_collectionView cellForItemAtIndexPath:userPath];
        cell.isDownloading = NO;
        [_collectionView reloadItemsAtIndexPaths:@[userPath]];
    } else {
        NSLog(@"Sender was not a GitUser");
    }
}
@end
