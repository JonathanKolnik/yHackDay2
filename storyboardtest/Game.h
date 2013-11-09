//
//  Game.h
//  yHack
//
//  Created by Jonathan Kolnik on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Game : NSObject
@property (strong, nonatomic) NSMutableArray *wincount;
@property (nonatomic) NSMutableArray *cells;
@property (nonatomic) NSMutableArray *players;

@property (nonatomic) Player *winner;
@property (nonatomic) int gameType;

-(void) addPlayer: (Player *) p;
-(void) deletePlayer: (Player *) p;
-(void) findWinner;
-(id) initWithType: (int) type;

@end
