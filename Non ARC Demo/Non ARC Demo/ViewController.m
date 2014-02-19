//
//  ViewController.m
//  Non ARC Demo
//
//  Created by John Clem on 2/13/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

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

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    while (TRUE) {
//        NSObject *object = [[NSObject alloc] init];
//        [AppDelegate logOutObject:object];
        UIImage *image = [UIImage imageNamed:@"demo"];
        [AppDelegate logOutObject:image];
        
        UILabel *myLabel = [[UILabel alloc] initWithFrame:self.view.frame];
        
        NSString *labelText = NSLocalizedString(@"Hello", @"Hello");
        NSString *labelTextTwo = NSLocalizedString(@"World", @"World");
        [myLabel setText:[NSString stringWithFormat:@"%@ %@", labelText, labelTextTwo]];
    }
}

- (void)buttonWasPressed:(id)sender
{
    NSLog(@"Retain Count: %lu", (unsigned long)[sender retainCount]);
}

- (void)dealloc
{
    [super dealloc];
}


@end
