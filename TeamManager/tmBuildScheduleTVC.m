//
//  tmBuildScheduleTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmBuildScheduleTVC.h"

@interface tmBuildScheduleTVC ()

@end

@implementation tmBuildScheduleTVC

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(IBAction)unwindToBuildSchedule:(UIStoryboardSegue *)unwindSegue {
    
}

@end
