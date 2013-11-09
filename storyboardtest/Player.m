//
//  Player.m
//  yHack
//
//  Created by Elvin Cako on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void) incrementScore {
    self.score++;
}

- (BOOL) vote:(Cell *)c
      atIndex:(int)photoIndex
{
    [c.playerVote replaceObjectAtIndex:self.playerIndex withObject:@true];
    [[c.cellPhotos objectAtIndex:photoIndex] upVote];
    [c Winner];
    return true;
}

//- (void) addComment:(Cell *)c
//      withString:(NSString *)commentContent
//{
//    
//}

@end
