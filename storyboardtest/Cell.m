//
//  Cell.m
//  yHack
//
//  Created by Kris Ni on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "Cell.h"
#import "Photo.h"
#import "Player.h"

@implementation Cell

//- (void)save{
//    PFObject *cell = [PFObject objectWithClassName:@"Cell"];
//    cell[@"topic"] = self.topic;
//    cell[@"cellPhotos"] = self.cellPhotos;
//    cell[@"numUpload"] = @(self.numUpload);
////    
////    cell[@]
//}

-(void) updateTopic: (NSString *) newTopic
{
    
    _topic = [[NSString alloc]initWithString: newTopic];
}

-(void) Winner
{

    bool allTrue = false;
    int count =0;
    
    //loop through the array to check if it is all true
    for(int i=0; i<[_playerVote count];i++) {
        if(_playerVote[i] == false) {
            count++;
        }
    }
    
    if(count == 0) {
        allTrue = true;
    }
    
    //if all the players have voted, set a cell winner
    if (allTrue) {
        
        Photo *winner = _cellPhotos[0];
        
        //loop through all the photos in the cell, and check which has the most votes
        for (int j=1;j<[_cellPhotos count];j++) {
            if([_cellPhotos[j] voteNumber] > winner.voteNumber)
                winner = _cellPhotos[j];
        }
        
        //update the winner
        _cellWinner = winner.uploader;
        
        //increment the winner's score
        [_cellWinner incrementScore];
        
        //update the winCount in the Game class
        //currentGame.winCount.add[_cellWinner.playerIndex];
        //currentGame.findWinner();
            
    }
    
    
    
}



@end
