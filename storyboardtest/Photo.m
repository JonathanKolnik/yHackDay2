//
//  Photo.m
//  yHack
//
//  Created by Elvin Cako on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "Photo.h"


@implementation Photo


- (Player *)uploader
{
    if (!_uploader) _uploader = [[Player alloc] init];
    return _uploader;
}

- (void) upVote
{
    self.voteNumber++;
}

@end
