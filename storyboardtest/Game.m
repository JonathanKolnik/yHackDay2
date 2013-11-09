//
//  Game.m
//  yHack
//
//  Created by Jonathan Kolnik on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "Game.h"
#import "Player.h"
#import "Cell.h"
#import "Photo.h"

@implementation Game

- (NSMutableArray *)wincount
{
    if(!_wincount) _wincount = [[NSMutableArray alloc] init];
    return _wincount;
}

- (NSMutableArray *)players
{
    if(!_players) _players = [[NSMutableArray alloc] init];
    return _players;
}

- (NSMutableArray *)cells
{
    if(!_cells) _cells = [[NSMutableArray alloc] init];
    return _cells;
}

//Game Constructor
-(id) initWithType: (int) type{
    
    _gameType =type;
    
    //add 9 cells to the game
    if(self = [super init]) {
        Cell * c;
        c.numUpload = 0;
        c.playerVote = false;
        for(int i=0; i<9; i++) {
            [_cells[i] addObject: c];
        }
    
        
        //initialize the cells based on the type of game
        if (_gameType == 1) {
            
            [_cells[0] updateTopic: @"Public Transportation"];
            [_cells[1] updateTopic: @"Classroom"];
            [_cells[2] updateTopic: @"Food"];
            [_cells[3] updateTopic: @"Outfits"];
            [_cells[4] updateTopic: @"Wild Card"];
            [_cells[5] updateTopic: @"Nature"];
            [_cells[6] updateTopic: @"Gimme That!"];
            [_cells[7] updateTopic: @"No Thank You!"];
            [_cells[8] updateTopic: @"My Day in a Nutshell"];
        
        }
        
        if (_gameType == 2) {
            
            [_cells[0] updateTopic: @"Quintessential Programmer"];
            [_cells[1] updateTopic: @"Best Room Set Up"];
            [_cells[2] updateTopic: @"Funniest Door Sign"];
            [_cells[3] updateTopic: @"Most Y-Hack Pride"];
            [_cells[4] updateTopic: @"Wild Card"];
            [_cells[5] updateTopic: @"Sponsors"];
            [_cells[6] updateTopic: @"New Friends"];
            [_cells[7] updateTopic: @"Best Snacks"];
            [_cells[8] updateTopic: @"Best Outfit"];
            
        }
    }
    return self;
}



-(void) addPlayer:(Player *)p{
    [_players addObject:p];
}

-(void) deletePlayer:(Player *)p{
    [_players delete:p];
}

-(void) findWinner{
    NSNumber *y = 0;
    if(_wincount.count == 9){
        NSMutableArray *playerIndexWins;
        for(int i = 0; i < playerIndexWins.count; i++){
            playerIndexWins[i] = y;
        }
        NSInteger x;
        for(NSUInteger i = 0; i < _wincount.count ; i++){
            x = (NSInteger)_wincount[i];
            playerIndexWins[x] = @([playerIndexWins[x] intValue] + 1);
        }
    }
}

@end
