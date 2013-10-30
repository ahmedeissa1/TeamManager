//
//  tmDataManagerTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmDataManagerTVC.h"

@interface tmDataManagerTVC ()

//methods
-(IBAction)unwindToDataManager:(UIStoryboardSegue *)unwindSegue;

@end

@implementation tmDataManagerTVC

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



#pragma mark - unwind seque to data manager

-(IBAction)unwindToDataManager:(UIStoryboardSegue *)unwindSegue {
    
}

@end
