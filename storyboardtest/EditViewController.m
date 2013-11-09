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

@interface EditViewController(){
    
    IBOutlet UITextField *text1;
}
- (IBAction)closeText:(id)sender;

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
    
    //Game Constructor
    Game *currentGame;{
        
        currentGame.gameType = 3;
        
        //add 9 cells to the game
            Cell * c;
            c.numUpload = 0;
            c.playerVote = false;
            for(int i=0; i<9; i++) {
                [currentGame.cells[i] addObject: c];
            }
        
            
            //initialize the cells

                
        [currentGame.cells[0] updateTopic: text1];
                [currentGame.cells[1] updateTopic: @"Classroom"];
                [currentGame.cells[2] updateTopic: @"Food"];
                [currentGame.cells[3] updateTopic: @"Outfits"];
                [currentGame.cells[4] updateTopic: @"Wild Card"];
                [currentGame.cells[5] updateTopic: @"Nature"];
                [currentGame.cells[6] updateTopic: @"Gimme That!"];
                [currentGame.cells[7] updateTopic: @"No Thank You!"];
                [currentGame.cells[8] updateTopic: @"My Day in a Nutshell"];

            }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeText:(id)sender {
    [text1 resignFirstResponder];
}
@end
