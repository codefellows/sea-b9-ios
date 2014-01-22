//
//  CFViewController.m
//  Delegates
//
//  Created by John Clem on 1/22/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFViewController.h"

@interface CFViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSMutableArray *friends;


@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.friends = [NSMutableArray arrayWithObjects:@"Brad",@"Clem",@"new", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.friends.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = self.friends[indexPath.row];
    return cell;
}

-(void)willAddFriend:(NSString *)buddy
{
    [self.friends addObject:buddy];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CFDetailViewController *destination = (CFDetailViewController *)segue.destinationViewController;
    destination.delegate = self;
    
}

@end
