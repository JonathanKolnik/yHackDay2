//
//  ContinueViewController.m
//  storyboardtest
//
//  Created by Elvin Cako on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "ContinueViewController.h"

@interface ContinueViewController()
@property (strong, nonatomic) IBOutlet UIButton *continueGame;

@end

@implementation ContinueViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)continueGame:(id)sender {
}

@end