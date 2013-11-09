//
//  EditViewController.m
//  storyboardtest
//
//  Created by Annie DuBois on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "EditViewController.h"
#import "Cell.h"
#import "Player.h"
#import "Game.h"
#import "Photo.h"

@interface EditViewController()

@end

@implementation EditViewController

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


- (IBAction)DoneEditingButton:(id)sender{
//Change the topic of the current cell to whatever the user inputs. call Cell.updateTopic()
    Game *currentGame;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
