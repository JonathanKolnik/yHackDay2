//
//  Cell.h
//  yHack
//
//  Created by Kris Ni on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Photo.h"
#import "Player.h"

@interface Cell : NSObject

@property(nonatomic) NSString *topic;
@property(nonatomic) NSMutableArray *cellPhotos;
@property(nonatomic) int numUpload;
@property(strong, nonatomic) Player *cellWinner;
@property(nonatomic) NSMutableArray *playerVote;

-(void) updateTopic: (NSString *) newTopic;
-(void) Winner;



@end
