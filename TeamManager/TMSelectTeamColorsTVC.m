//
//  tmSelectTeamColorsTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectTeamColorsTVC.h"
#import "TMTeamColorsListingCell.h"

@interface TMSelectTeamColorsTVC ()

@end

@implementation TMSelectTeamColorsTVC
@synthesize selectedTeamColors = _selectedTeamColors;

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

    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DataManagerHelperData" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    _teamColorsArray = [dict objectForKey:@"TeamColors"];
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
    return [_teamColorsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TeamColorsListingCell";
    TMTeamColorsListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    //get the team colors data array
    NSArray *teamColors = [[NSArray alloc] initWithArray:[_teamColorsArray objectAtIndex:indexPath.row]];
    
    // populate from Plist
    cell.homeColors.image = [UIImage imageNamed:[teamColors objectAtIndex:0]];
    cell.awayColors.image = [UIImage imageNamed:[teamColors objectAtIndex:1]];
    cell.clubLogo.image = [UIImage imageNamed:[teamColors objectAtIndex:2]];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get index
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
    
    // Selected team colors data array
    NSArray* colors = [[NSArray alloc] initWithArray:[_teamColorsArray objectAtIndex:selectedIndexPath.row]];
    
    // Selected Club Name
    self.selectedTeamColors = [colors objectAtIndex:3];
}
@end
