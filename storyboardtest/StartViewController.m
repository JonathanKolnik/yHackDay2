//
//  StartViewController.m
//  storyboardtest
//
//  Created by Jonathan Kolnik on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()


@property (strong, nonatomic) IBOutlet UIButton *startGame;

@end

@implementation StartViewController

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
- (void)viewDidAppear:(BOOL)animated{
   
}
- (IBAction)newGame:(id)sender{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
