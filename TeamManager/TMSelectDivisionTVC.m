//
//  tmSelectDivisionTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectDivisionTVC.h"
#import "TMDivisionListingCell.h"
#import "TMAddTeamTVC.h"

@interface TMSelectDivisionTVC ()

@end

@implementation TMSelectDivisionTVC

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
    _divisionsArray = [dict objectForKey:@"Divisions"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [_divisionsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DivisionListingCell";
    TMDivisionListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil)
    {
        [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
    }
    // Configure the cell...
    NSString* divisionText = [NSString stringWithFormat:@"%@ %@",_selectedYearGroupGender,[_divisionsArray objectAtIndex:indexPath.row]];
    // populate from Plist
    cell.divisionNameLabel.text = divisionText;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get IndexPath
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
    
    // Set destination TVC
    TMAddTeamTVC *destViewController = segue.destinationViewController;
    
    // Selected Gender
    _selectedDivision = [_divisionsArray objectAtIndex:selectedIndexPath.row];
    NSString* combinedAgeDivision = [NSString stringWithFormat:@"%@ %@",_selectedYearGroupGender, _selectedDivision];
    
    // Selected year group
    destViewController.ageDivisionFromSelection = combinedAgeDivision;
}

@end
