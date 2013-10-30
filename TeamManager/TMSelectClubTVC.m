//
//  tmSelectClubTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectClubTVC.h"
#import "TMAddTeamTVC.h"

@interface TMSelectClubTVC ()

@end

@implementation TMSelectClubTVC

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
    _clubInfo = [dict objectForKey:@"CoYouthSoccerClubs"];
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
    return [_clubInfo count];
}

- (TMClubListingCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ClubListingCell";
    TMClubListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    //get the club data array
    NSArray *club = [[NSArray alloc] initWithArray:[_clubInfo objectAtIndex:indexPath.row]];
    
    // populate from Plist
    cell.clubNameLabel.text = [club objectAtIndex:0];
    cell.clubLocationLabel.text = [club objectAtIndex:1];
    cell.clubLogoImage.image = [UIImage imageNamed:[club objectAtIndex:2]];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get Index
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
    
    // Selected Club data array
    NSArray* clubsList = [[NSArray alloc] initWithArray:[_clubInfo objectAtIndex:selectedIndexPath.row]];
    
    // Selected Club Name
    _selectedClub = [clubsList objectAtIndex:0];
}

@end
