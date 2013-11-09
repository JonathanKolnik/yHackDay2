//
//  ExpandedViewController.m
//  storyboardtest
//
//  Created by Jonathan Kolnik on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "ExpandedViewController.h"

@interface ExpandedViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@property (weak, nonatomic) IBOutlet UIButton *photoCell;

@end

@implementation ExpandedViewController

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
-(IBAction)cameraButtonPressed:(id)sender{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] == YES) {
        // Create image picker controller
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        // Set source to the camera
        imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
        [imagePicker setCameraDevice:UIImagePickerControllerCameraDeviceFront];
        // Delegate is self
        imagePicker.delegate = self;
        
        // Show image picker
        [self presentModalViewController:imagePicker animated:YES];
    }

}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    // Access the uncropped image from info dictionary
    UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    
    // Dismiss controller
    [picker dismissViewControllerAnimated:YES completion:^{
        
        //        UIGraphicsBeginImageContext(CGSizeMake(image.size.width, image.size.height));
        //        [image drawInRect: CGRectMake(0, 0, image.size.width, image.size.height)];
        //        UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
        //        UIGraphicsEndImageContext();
        //
        //        [self uploadImage:smallImage];
        //        [profilePic setImage:smallImage forState:UIControlStateNormal];
        
        
        
        UIImage *small = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:image.imageOrientation];
        [_photoCell setBackgroundImage:image forState:UIControlStateNormal];
        //
        //        // Upload image
        //        NSData *imageData = UIImageJPEGRepresentation(small, 0.05f);
        //        [self uploadImage:imageData];
        //
        
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
