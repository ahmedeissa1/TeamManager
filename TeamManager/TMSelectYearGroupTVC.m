//
//  tmSelectYearGroupTVC.m
//  TeamManager
//
//  Created by Will Block on 10/16/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectYearGroupTVC.h"
#import "TMYearGroupListingCell.h"
#import "TMSelectGenderTVC.h"

@interface TMSelectYearGroupTVC ()

@end

@implementation TMSelectYearGroupTVC

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
    _yearGroupsArray = [dict objectForKey:@"YearGroups"];
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
    return [_yearGroupsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"YearGroupListingCell";
    TMYearGroupListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil)
    {
        [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
    }
    // Configure the cell...
    
    // populate from Plist
    cell.yearGroupLabel.text = [_yearGroupsArray objectAtIndex:indexPath.row];
    
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    // Uncheck the previous checked row
    if(self.selectedRow)
    {
        UITableViewCell* uncheckCell = [tableView
                                        cellForRowAtIndexPath:self.selectedRow];
        uncheckCell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    // Check current row and set selectedRow
    UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    self.selectedRow = indexPath;
     */

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showSelectGender"])
    {
        // Get IndexPath
        NSIndexPath* selectedIndexPath = [[self tableView] indexPathForCell:sender];
        
        // Set destination TVC
        TMSelectGenderTVC *destViewController = segue.destinationViewController;
        
        // Selected year group
        destViewController.selectedYearGroup = [_yearGroupsArray objectAtIndex:selectedIndexPath.row];
    }   
}

@end
