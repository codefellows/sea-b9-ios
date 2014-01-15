//
//  MVCLoginViewController.m
//  Singleton
//
//  Created by John Clem on 1/15/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "MVCLoginViewController.h"
#import "MVCNetworkController.h"

@interface MVCLoginViewController ()

@end

@implementation MVCLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[MVCNetworkController sharedController] loginWithEmail:@"myEmail" andPassword:@"myPassword"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
