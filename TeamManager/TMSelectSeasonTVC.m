//
//  tmSelectSeasonTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectSeasonTVC.h"
#import "TMSeasonListingCell.h"

@interface TMSelectSeasonTVC ()

@end

@implementation TMSelectSeasonTVC

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

    // Find out the path of helper data plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DataManagerHelperData" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    _seasonsArray = [dict objectForKey:@"Seasons"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_seasonsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SeasonListingCell";
    TMSeasonListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    //get the club data array
    NSArray *season = [[NSArray alloc] initWithArray:[_seasonsArray objectAtIndex:indexPath.row]];
    
    // populate from Plist
    cell.seasonYearLabel.text = [season objectAtIndex:1];
    cell.seasonImage.image = [UIImage imageNamed:[season objectAtIndex:2]];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)unwindSegue sender:(id)sender
{
    // Get Index Path
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
    
    // Seasons data array
    NSArray* seasonList = [[NSArray alloc] initWithArray:[_seasonsArray objectAtIndex:selectedIndexPath.row]];
    
    // Selected Club Name
    self.selectedSeason = [NSString stringWithFormat:@"%@ %@",[seasonList objectAtIndex:0],[seasonList objectAtIndex:1]];
}

@end
