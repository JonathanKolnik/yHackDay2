//
//  Player.h
//  yHack
//
//  Created by Elvin Cako on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Photo.h"

@interface Player : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) int score;
@property (readonly, nonatomic) int playerIndex;

- (void) incrementScore;
@end
