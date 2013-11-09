//
//  CellViewController.h
//  yHack
//
//  Created by Jonathan Kolnik on 11/9/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cell.h"

@interface CellViewController : UIViewController

@property(nonatomic) NSInteger tag;

@property(nonatomic,weak) Cell *currentCell;

-(IBAction)cameraButtonPressed:(id)sender;
@end
