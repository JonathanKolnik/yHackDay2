//
//  CellViewController.m
//  yHack
//
//  Created by Jonathan Kolnik on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "CellViewController.h"

@interface CellViewController ()

@property (weak, nonatomic) IBOutlet UIButton *photoCell;

@end

@implementation CellViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
//- (void)uploadImage:(UIImage *)image
//{
//    // Resize image
//    //    UIGraphicsBeginImageContext(CGSizeMake(640, 960));
//    //    [image drawInRect: CGRectMake(0, 0, 640, 960)];
//    //    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
//    //    UIGraphicsEndImageContext();
//    //
//
//    // Upload image
//    NSData *imageData = UIImageJPEGRepresentation(image, 0.5f);
//
//
//
//    PFFile *imageFile = [PFFile fileWithName:@"Image.jpg" data:imageData];
//
//    [imageFile saveInBackground];
//
//    PFUser *user = [PFUser currentUser];
//    [user setObject:imageFile forKey:@"profilePic"];
//    [user saveInBackground];
//
//
//
//
//}
//- (void)uploadImage:(NSData *)imageData
//{
//    
//    PFFile *imageFile = [PFFile fileWithName:@"Image.jpg" data:imageData];
//    
//    
//    // Save PFFile
//    [imageFile saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//        if (!error) {
//            NSLog(@"uploaded pic");
//            [[PFUser currentUser] setObject:imageFile forKey:@"profilePic"];
//            [[PFUser currentUser] saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//                if (!error) {
//                    NSLog(@"uploaded pic");
//                }
//            }];
//        }
//    }];
//}
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
        [_photoCell setImage:small forState:UIControlStateNormal];
//        
//        // Upload image
//        NSData *imageData = UIImageJPEGRepresentation(small, 0.05f);
//        [self uploadImage:imageData];
        //
        
    }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
//    UILabel *test = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//    [test setText:[NSString stringWithFormat:@"%d",self.tag]];
//    [self.view addSubview:test];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
