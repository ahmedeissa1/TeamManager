//
//  tmSelectGenderTVC.m
//  TeamManager
//
//  Created by Will Block on 10/16/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectGenderTVC.h"
#import "TMGenderListingCell.h"
#import "TMSelectDivisionTVC.h"

@interface TMSelectGenderTVC ()

@end

@implementation TMSelectGenderTVC

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
    
    // Load the file content and read the data into arrays
    _genderArray = [[NSArray alloc] initWithObjects:@"Boys", @"Girls", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return [_genderArray count] ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"GenderListingCell";
    TMGenderListingCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString* labelText = [NSString stringWithFormat:@"%@ %@",_selectedYearGroup,[_genderArray objectAtIndex:indexPath.row]];
    cell.genderLabel.text = labelText;
    
    return cell;
}


#pragma mark - Table view delegate
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *gender = [_genderArray objectAtIndex:[indexPath row]];
    
    if ([_delegate respondsToSelector:@selector(didSelectGender:)])
    {
        [_delegate performSelector:@selector(didSelectGender:) withObject:gender];
    }

//[[self navigationController] dismissViewControllerAnimated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];


}
*/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showSelectDivision"])
    {
        
        // Get IndexPath
        NSIndexPath* selectedIndexPath = [self.tableView indexPathForCell:sender];
        
        // Set destination TVC
        TMSelectDivisionTVC *destViewController = segue.destinationViewController;
        
        // Selected Gender
        NSString* combinedYearGroupGender = [NSString stringWithFormat:@"%@ %@",_selectedYearGroup, [_genderArray objectAtIndex:selectedIndexPath.row]];
        
        // Selected year group
        destViewController.selectedYearGroupGender = combinedYearGroupGender;
    }
}


@end
