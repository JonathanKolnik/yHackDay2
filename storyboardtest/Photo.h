//
//  Photo.h
//  yHack
//
//  Created by Elvin Cako on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
@class Player;

@interface Photo : NSObject

@property (strong, nonatomic) Player *uploader;


@property (nonatomic) int voteNumber;


- (void) upVote;
@end
