//
//  CFDetailViewController.m
//  Delegates
//
//  Created by John Clem on 1/22/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFDetailViewController.h"
#import <UIImage+Dummy/UIImage+Dummy.h>

@interface CFDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation CFDetailViewController

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
	// Do any additional setup after loading the view.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.delegate willAddFriend:self.textField.text];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIImage *image3 = [UIImage imageNamed:@"dummy.150x200.blue"];
    [_imageView setImage:image3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
