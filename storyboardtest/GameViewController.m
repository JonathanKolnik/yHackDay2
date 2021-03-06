//
//  GameViewController.m
//  storyboardtest
//
//  Created by Jonathan Kolnik on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "GameViewController.h"
#import "ExpandedViewController.h"

@interface GameViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *boardButtonsCollection;

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showDetailSegue"]){
        ExpandedViewController *controller = (ExpandedViewController *)segue.destinationViewController;
        controller.currentCell = [[Cell alloc]init];
    }
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

@end
