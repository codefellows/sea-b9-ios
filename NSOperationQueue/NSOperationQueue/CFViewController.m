//
//  CFViewController.m
//  NSOperationQueue
//
//  Created by John Clem on 1/21/14.
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

#import "CFViewController.h"
#import "UIColor+CodeFellows.h"

@interface CFViewController ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UIProgressView *progressView;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height - 320.f, 320.f, 320.f)];
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:_imageView];
    [_imageView setNeedsDisplay];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSOperationQueue *downloadQueue = [NSOperationQueue new];
    [downloadQueue setMaxConcurrentOperationCount:1];
    [downloadQueue setName:@"com.minddiaper.downloadqueue"];
    
    NSBlockOperation *changeColor = [NSBlockOperation blockOperationWithBlock:^{
        [self changeBackgroundColorAndSleepFor:4];
    }];
    [changeColor setQueuePriority:NSOperationQueuePriorityVeryHigh];
    [downloadQueue addOperation:changeColor];
    
//    __block CFViewController *weakSelf = self;
    
//    [_activityIndicator startAnimating];
//    [_progressView setProgress:0.1 animated:YES];
    
//    [downloadQueue addOperationWithBlock:^{
//        [self changeBackgroundColorAndSleepFor:4];
//        [self downloadAndDisplayImageForViewController:weakSelf];
//        
//    }];
    
    [downloadQueue addOperationWithBlock:^{
        [self changeBackgroundColorAndSleepFor:3];
    }];
}

- (void)changeBackgroundColorAndSleepFor:(NSInteger)seconds
{
//    sleep(seconds);
    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [self.view setBackgroundColor:[UIColor randomColor]];
    }];
}

- (void)downloadAndDisplayImageForViewController:(CFViewController *)weakSelf
{
    NSTimeInterval start = [NSDate timeIntervalSinceReferenceDate];

    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        [weakSelf.progressView setProgress:0.5 animated:YES];
    }];
    
    UIImage *image = [weakSelf downloadImage];

    NSTimeInterval stop = [NSDate timeIntervalSinceReferenceDate];

    NSLog(@"Time Elapsed: %f", stop - start);

    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        weakSelf.imageView.image = image;
        [_activityIndicator stopAnimating];
        [_activityIndicator removeFromSuperview];
        [_progressView setProgress:1.0 animated:YES];
    }];
    
//    sleep(3);
    
}

- (UIImage *)downloadImage
{
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://all-puppies.com/wp-content/uploads/2014/01/Black-English-Bulldog-Puppies.jpg"]];
    
    return [UIImage imageWithData:imageData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
