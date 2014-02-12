//
//  ViewController.m
//  Custom Drawing
//
//  Created by John Clem on 2/12/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "CFButton.h"

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

- (IBAction)changeAccentColor:(id)sender
{
    [(CFButton *)sender changeAccentColorTo:[UIColor blueColor]];
}

@end
