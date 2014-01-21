//
//  CFViewController.m
//  Categories Demo
//
//  Created by John Clem on 1/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFViewController.h"
#import "UIColor+CodeFellows.h"

@interface CFViewController ()

@end

@implementation CFViewController

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

#pragma mark - IBActions

- (IBAction)selectedBackgroundColor:(UISegmentedControl *)sender
{
    UIColor *tanColor = [UIColor tanColor];
    UIColor *darkBrown = [UIColor colorWithRed:166.f/255.f green:115.f/255.f blue:68.f/255.f alpha:1.0];
    UIColor *fleshTone = [UIColor colorWithRed:208.f/255.f green:184.f/255.f blue:161.f/255.f alpha:1.0];
    UIColor *mauve = [UIColor colorWithRed:141.f/255.f green:117.f/255.f blue:113.f/255.f alpha:1.0];
    UIColor *burgundy = [UIColor colorWithRed:114.f/255.f green:60.f/255.f blue:51.f/255.f alpha:1.0];
    
    NSArray *colors = @[tanColor, darkBrown, fleshTone, mauve, burgundy];
    
//    CGFloat r,g,b,a;
//    
//    for (UIColor *color in colors) {
//        [color getRed:&r green:&g blue:&b alpha:&a];
//        NSLog(@"R: %f G: %f B: %f A: %f", r, g, b, a);
//    }
    
    if (sender.selectedSegmentIndex == 2) {
        UIColor *greenestColor = [UIColor makeGreenestFromColor:colors[[sender selectedSegmentIndex]]];
        self.view.backgroundColor = greenestColor;
        self.view.tintColor = greenestColor;
    } else {
        self.view.backgroundColor = [UIColor randomColor];
        self.view.tintColor = colors[[sender selectedSegmentIndex]];
    }
    
    NSLog(@"%@", [colors[0] logColorComponents]);
}

@end
