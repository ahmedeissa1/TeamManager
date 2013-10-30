//
//  tmSelectPositionTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectPositionTVC.h"
#import "TMPositionListingCell.h"

@interface TMSelectPositionTVC ()

@end

@implementation TMSelectPositionTVC
@synthesize selectedPosition = _selectedPosition;
@synthesize positionType = _positionType;

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
    _positionArray = [dict objectForKey:@"Positions"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_positionArray count];
}

- (TMPositionListingCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PositionListingCell";
    TMPositionListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil)
    {
        [[NSBundle mainBundle] loadNibNamed:CellIdentifier owner:self options:nil];
    }
    // Configure the cell...
    
    // populate from Plist
    NSString* positionNumber = [NSString stringWithFormat:@"%d",indexPath.row + 1];
    cell.positionNumberLabel.text = (NSString*)positionNumber;
    cell.positionLabel.text = [_positionArray objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segueFromSelectPosition sender:(id)sender
{
    // Get IndexPath
    NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
    
    if ([self.positionType isEqualToString:@"primary"])
    {
        // Selected Position
        self.selectedPosition = [_positionArray objectAtIndex:selectedIndexPath.row];
    }
    if ([self.positionType isEqualToString:@"secondary"])
    {
        // Selected Position
        self.selectedPosition = [_positionArray objectAtIndex:selectedIndexPath.row];
    }
    
}

@end
