//
//  TMGameManagerTVC.m
//  TeamManager
//
//  Created by Will Block on 10/26/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMGameManagerTVC.h"

@interface TMGameManagerTVC ()

@end

@implementation TMGameManagerTVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindToGameManager:(UIStoryboardSegue *)unwindSegue
{
    
}

@end
