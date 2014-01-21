//
//  MCViewController.m
//  MorseCodeDemo
//
//  Created by Brad on 1/20/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "MCViewController.h"
#import "NSString+MorseCode.h"

@interface MCViewController ()

@end

@implementation MCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *tempString = @"hello";
    
    NSArray *tempArray = tempString ? [tempString symbolsForString] : @[@"String Was Nil"];
    
    NSLog(@"%@", tempArray);
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
