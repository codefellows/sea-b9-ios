//
//  BPJViewController.m
//  camerademo
//
//  Created by Brad on 1/15/14.
//  Copyright (c) 2014 Brad. All rights reserved.
//

#import "BPJViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface BPJViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation BPJViewController

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
- (IBAction)startPicker:(id)sender {
    
    UIActionSheet *mySheet;
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
     mySheet = [[UIActionSheet alloc] initWithTitle:@"Pick Photo"
                                      delegate:self
                             cancelButtonTitle:@"cancel"
                        destructiveButtonTitle:nil
                             otherButtonTitles:@"Camera", @"Photo Library", nil];
    } else if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        mySheet = [[UIActionSheet alloc] initWithTitle:@"Pick Photo"
                                              delegate:self
                                     cancelButtonTitle:@"cancel"
                                destructiveButtonTitle:nil
                                     otherButtonTitles:@"Photo Library", nil];

    } else {
        return;
    }

    [mySheet showFromBarButtonItem:sender animated:YES];
    
}

-(void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    UIImagePickerController *myPicker = [[UIImagePickerController alloc] init];
    myPicker.delegate = self;
    myPicker.allowsEditing = YES;
    
    if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Camera"]) {
        myPicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    } else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:@"Photo Library"]) {
        myPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    } else {
        return;
    }
    
    [self presentViewController:myPicker animated:YES completion:nil];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    [self dismissViewControllerAnimated:YES completion:^{
        UIImage *editedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
        
        self.myImageView.image = editedImage;
        
        ALAssetsLibrary *assetsLibrary = [ALAssetsLibrary new];
        
        if ([ALAssetsLibrary authorizationStatus] == ALAuthorizationStatusDenied || [ALAssetsLibrary authorizationStatus] == ALAuthorizationStatusRestricted) {
            return;
        } else {
            NSLog(@"Metadata: %@", info[UIImagePickerControllerMediaMetadata]);
            [assetsLibrary writeImageToSavedPhotosAlbum:editedImage.CGImage
                                            orientation:ALAssetOrientationUp
                                        completionBlock:^(NSURL *assetURL, NSError *error) {

                if (error) {
                    NSLog(@"%@", error);
                }
            }];
            
        }
        
//        NSData *pngData = UIImagePNGRepresentation(editedImage);
//        
//        NSData *jpgData = UIImageJPEGRepresentation(editedImage, 0.5);
//        
//        NSString *jpgPath = [[self docsDirPath] stringByAppendingPathComponent:@"test.jpg"];
//        
//        NSString *pngPath = [[self docsDirPath] stringByAppendingPathComponent:@"test.png"];
//        
//        [pngData writeToFile:pngPath atomically:YES];
//        [jpgData writeToFile:jpgPath atomically:YES];

    }];

}

- (NSString *)docsDirPath
{
    NSURL *docsURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    return [docsURL path];
}


@end
