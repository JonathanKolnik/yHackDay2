//
//  BoardViewController.m
//  yHack
//
//  Created by Jonathan Kolnik on 11/8/13.
//  Copyright (c) 2013 bestteamever. All rights reserved.
//

#import "BoardViewController.h"

@interface BoardViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *boardButtonCollection;


@end


@implementation BoardViewController

-(void)setBoardButtonCollection:(NSArray *)boardButtonCollection{
    _boardButtonCollection = boardButtonCollection;
}

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
//    [self.view addSubview:self.Cell1];
//    [self.Cell1 setBackgroundColor:[UIColor blackColor]];
//    [self.Cell1 setFrame:CGRectMake(100, 100, 100, 100)];

    
    
//    for(int i=0; i<9; i++){
//        int row = i/3;
//        int col = i%3;
//       
//        UIButton * menuButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/3 * col, self.view.frame.size.width/3 * row, self.view.frame.size.width/3 , self.view.frame.size.width/3 )];
//        [menuButton setBackgroundColor:[UIColor blackColor]];
//        [menuButton setTag:i];
//        [menuButton addTarget:self action:@selector(cellClicked:) forControlEvents:UIControlEventTouchUpInside];
//        [self.boardButtons addObject:menuButton];
//    
//        [self.view addSubview:menuButton];
//
//    }
//
//    NSLog(@"%d",[self.boardButtons count]);
//    for (UIButton * butt in self.boardButtons){
//        NSLog(@"%d",butt.tag);
//    }

}

- (IBAction) cellClicked: (id)sender
{
//
//    CellViewController *expandedView = [[CellViewController alloc]init];
//    expandedView.tag = [sender tag];
//    [self presentViewController:expandedView animated:NO completion:nil];
//


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
