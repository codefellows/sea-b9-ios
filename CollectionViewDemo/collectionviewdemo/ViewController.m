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

@property (strong,nonatomic) NSMutableArray *usersArray;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.usersArray = [NSMutableArray new];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    self.searchBar.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.usersArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    GitUser *user = self.usersArray[indexPath.row];
    
    
    cell.backgroundColor = [UIColor redColor];
    
    CustomCollectionCell *customCell = (CustomCollectionCell *)cell;
    
    //customCell.nameLabel.text = user.name;
    
    
    return customCell;
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    [self searchForUser:searchBar.text];
}

-(void)searchForUser:(NSString *)searchString
{
    
    searchString = [NSString stringWithFormat:@"https://api.github.com/search/users?q=%@",searchString];
    
   searchString = [searchString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    
    NSError *error;
    NSURL *searchURL = [NSURL URLWithString:searchString];
    NSData *searchData = [NSData dataWithContentsOfURL:searchURL];
    NSDictionary *searchDictionary =[NSJSONSerialization JSONObjectWithData:searchData options:NSJSONReadingMutableContainers error:&error];
    
    NSArray *searchArray = searchDictionary[@"items"];
    
    NSLog(@"%@",searchArray);
    
    [self createUsersFromArray:searchArray];
    
}

-(void)createUsersFromArray:(NSArray *)searchArray
{
    for (NSDictionary *dictionary in searchArray)
    {
        GitUser *user = [GitUser new];
        user.name = dictionary[@"login"];
        user.imageURL = dictionary[@"avatar_url"];
        
        [self.usersArray addObject:user];
                                   
    }
    
    [self.collectionView reloadData];
}

@end
