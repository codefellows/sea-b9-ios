//
//  MVCViewController.m
//  Singleton
//
//  Created by John Clem on 1/15/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCNetworkController.h"

@interface MVCViewController ()

@end

@implementation MVCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSArray *myStuff = [[MVCNetworkController sharedController] getListOfThings];
    NSLog(@"%@", myStuff);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    NSString *myString = [NSString stringWithFormat:@"I am %d years old", 30];
    NSLog(@"%@", myString);
    [myString release];
    
    // Dispose of any resources that can be recreated.
}

@end
