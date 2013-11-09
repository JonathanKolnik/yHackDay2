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
    IBOutlet UITextField *text2;
    IBOutlet UITextField *text3;
    IBOutlet UITextField *text4;
    IBOutlet UITextField *text5;
    IBOutlet UITextField *text6;
    IBOutlet UITextField *text7;
    IBOutlet UITextField *text8;
}
- (IBAction)closeText:(id)sender;
- (IBAction)closeText2:(id)sender;
- (IBAction)closeText3:(id)sender;
- (IBAction)closeText4:(id)sender;
- (IBAction)closeText5:(id)sender;
- (IBAction)closeText6:(id)sender;
- (IBAction)closeText7:(id)sender;
- (IBAction)closeText8:(id)sender;

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
                [currentGame.cells[1] updateTopic: text2];
                [currentGame.cells[2] updateTopic: text3];
                [currentGame.cells[3] updateTopic: text4];
                [currentGame.cells[4] updateTopic: @"Wild Card"];
                [currentGame.cells[5] updateTopic: text5];
                [currentGame.cells[6] updateTopic: text6];
                [currentGame.cells[7] updateTopic: text7];
                [currentGame.cells[8] updateTopic: text8];

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

- (IBAction)closeText2:(id)sender {
    [text3 resignFirstResponder];
}


- (IBAction)closeText3:(id)sender {
    [text3 resignFirstResponder];
}

- (IBAction)closeText4:(id)sender {
    [text4 resignFirstResponder];
}

- (IBAction)closeText5:(id)sender {
    [text5 resignFirstResponder];
}

- (IBAction)closeText6:(id)sender {
    [text6 resignFirstResponder];
}

- (IBAction)closeText7:(id)sender {
    [text7 resignFirstResponder];
}

- (IBAction)closeText8:(id)sender {
    [text8 resignFirstResponder];
}



@end
