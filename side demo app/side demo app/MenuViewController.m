//
//  MenuViewController.m
//  side demo app
//
//  Created by Brad on 1/27/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "MenuViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"

@interface MenuViewController () <ViewControllerDelegate>

@property (strong,nonatomic) ViewController *myVC;

@end

@implementation MenuViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myVC = [self.storyboard instantiateViewControllerWithIdentifier:@"orange"];
    [self.myVC setDelegate:self];
    
    [self addChildViewController:self.myVC];
    self.myVC.view.frame = self.view.frame;
    [self.view addSubview:self.myVC.view];
    [self.myVC didMoveToParentViewController:self];
    
    [self setupPanGesture];
    
    [self.myVC.view.layer setShadowOpacity:0.8];
    [self.myVC.view.layer setShadowOffset:CGSizeMake(-8, -8)];
    [self.myVC.view.layer setShadowColor:[UIColor blackColor].CGColor];
    
}

-(void)setupPanGesture
{
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(slidePanel:)];
    
    pan.minimumNumberOfTouches = 1;
    pan.maximumNumberOfTouches = 1;
    
    pan.delegate = self;
    
    [self.myVC.view addGestureRecognizer:pan];
    
}

- (void)openMenu
{
    NSLog(@" open menu");
    
    [UIView animateWithDuration:1 animations:^{
        
        self.myVC.view.frame = CGRectMake(self.view.frame.size.width * .8, self.myVC.view.frame.origin.y, self.myVC.view.frame.size.width, self.myVC.view.frame.size.height);
        self.myVC.view.backgroundColor = [UIColor purpleColor];
    } completion:^(BOOL finished) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(slideBack:)];
        [self.myVC.view addGestureRecognizer:tap];
    }];
}

-(void)slidePanel:(id)sender
{
    UIPanGestureRecognizer *pan = (UIPanGestureRecognizer *)sender;
    
    CGPoint velocity = [pan velocityInView:self.view];
    CGPoint translation = [pan translationInView:self.view];
                        
    //NSLog(@"%f", translation.x);
    
    if (pan.state == UIGestureRecognizerStateChanged)
    {
        if (self.myVC.view.frame.origin.x+ translation.x > 0) {
            
            self.myVC.view.center = CGPointMake(self.myVC.view.center.x +translation.x, self.myVC.view.center.y);
            
//            NSLog(@"Origin: %f", self.myVC.view.frame.origin.x);
            
            CGFloat offset = 1 - (self.myVC.view.frame.origin.x / self.view.frame.size.width);
            
            //self.myVC.view.backgroundColor = [UIColor colorWithRed:offset green:offset blue:offset alpha:1.f];
        
            
            NSLog(@"Offset: %f", offset);
            
        [(UIPanGestureRecognizer *)sender setTranslation:CGPointMake(0,0) inView:self.view];
        }
    
    }
    
    if (pan.state == UIGestureRecognizerStateEnded)
    {
        if (self.myVC.view.frame.origin.x > self.view.frame.size.width / 2)
        {
            [self openMenu];
            
           
        }
        if (self.myVC.view.frame.origin.x < self.view.frame.size.width / 2 )
        {
            [UIView animateWithDuration:.4 animations:^{
                self.myVC.view.frame = self.view.frame;
            } completion:^(BOOL finished) {
                [self closeMenu];
            }];
        }
    }
    
}

- (void)closeMenu
{
    [UIView animateWithDuration:0.2 animations:^{
        self.myVC.view.frame = CGRectMake(self.myVC.view.frame.origin.x + 20.f, self.myVC.view.frame.origin.y, self.myVC.view.frame.size.width, self.myVC.view.frame.size.height);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.1 animations:^{
            self.myVC.view.frame = self.view.frame;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.1 animations:^{
                self.myVC.view.frame = CGRectMake(self.myVC.view.frame.origin.x + 15.f, self.myVC.view.frame.origin.y, self.myVC.view.frame.size.width, self.myVC.view.frame.size.height);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.1 animations:^{
                    self.myVC.view.frame = self.view.frame;
                }];
            }];
        }];
    }];
}

-(void)slideBack:(id)sender
{
    [UIView animateWithDuration:.4 animations:^{
        self.myVC.view.frame = self.view.frame;
        self.myVC.view.backgroundColor = [UIColor redColor];
    } completion:^(BOOL finished) {
        [self.myVC.view removeGestureRecognizer:(UITapGestureRecognizer *)sender];
        
        [self closeMenu];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
