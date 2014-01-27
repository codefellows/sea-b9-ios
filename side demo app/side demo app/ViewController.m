//
//  ViewController.m
//  side demo app
//
//  Created by Brad on 1/27/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)burgerButtonTapped:(id)sender
{
    if (self.view.frame.origin.x < 1.f) {
        [self.delegate openMenu];
    } else {
        [self.delegate closeMenu];
    }
}


@end
