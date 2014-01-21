//
//  CFViewController.m
//  Towers of Hanoi
//
//  Created by John Clem on 1/20/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFViewController.h"
#import "CFRingView.h"
#import "CFTowerView.h"

@interface CFViewController ()

@property (nonatomic) NSMutableArray *draggableViews, *droppableViews;

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _draggableViews = [NSMutableArray new];
    _droppableViews = [NSMutableArray new];
    
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:[CFTowerView class]]) {
            [_droppableViews addObject:view];
        }
        
        for (UIView *ringView in view.subviews) {
            if ([ringView isKindOfClass:[CFRingView class]]) {
                [_draggableViews addObject:ringView];
            }
        }
    }
    
    NSLog(@"Ring Views: %@", _draggableViews);
    NSLog(@"Tower Views: %@", _droppableViews);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self setupDropTargets];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupDropTargets
{
    for (CFRingView *ringView in _draggableViews) {
        
        [ringView.superview.superview bringSubviewToFront:ringView];
        for (CFTowerView *towerView in _droppableViews) {
            [ringView addDropTarget:towerView];
        }
    }
}

@end
