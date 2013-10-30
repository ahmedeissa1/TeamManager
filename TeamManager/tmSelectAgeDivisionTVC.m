//
//  tmSelectAgeDivisionTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectAgeDivisionTVC.h"
#import "TMSelectYearGroupTVC.h"
#import "TMSelectGenderTVC.h"
#import "tmSelectDivisionTVC.h"
#import "TMSelectYearGroupCell.h"
#import "TMSelectGenderCell.h"
#import "TMSelectDivisionCell.h"

@interface TMSelectAgeDivisionTVC ()

@end

@implementation TMSelectAgeDivisionTVC

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
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *yearGroupCellId = @"SelectYearGroupCell";
    static NSString *genderCellId = @"SelectGenderCell";
    static NSString *divisionCellId = @"SelectDivisionCell";
    static NSString *doneCellId = @"AgeDivisionDoneCell";
    
    NSString *CellIdentifier = nil;
    
    if ([indexPath row] == 0)
    {
        CellIdentifier = yearGroupCellId;
    }
    else if ([indexPath row] == 1)
    {
        CellIdentifier = genderCellId;
    }
    else if ([indexPath row] == 2)
    {
        CellIdentifier = divisionCellId;
    }
    else{
        CellIdentifier = doneCellId;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if ([indexPath row] == 0)
    {
        
        CellIdentifier = yearGroupCellId;
        TMSelectYearGroupCell *cell = (TMSelectYearGroupCell *)cell;//[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    }
    
    else if ([indexPath row] == 1)
    {
        CellIdentifier = genderCellId;
        TMSelectGenderCell *cell = (TMSelectGenderCell *)cell;

    }
    
    else if ([indexPath row] == 2)
    {
        CellIdentifier = divisionCellId;
        TMSelectDivisionCell *cell = (TMSelectDivisionCell *)cell;
    }
    
    else
    {
        CellIdentifier = doneCellId;
        UITableViewCell *cell = cell;
    }
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(IBAction)unwindToSelectAgeDivision:(UIStoryboardSegue *)unwindSegue {
    
    // source TVC segue reference
    TMSelectAgeDivisionTVC* sourceTVC = unwindSegue.sourceViewController;
    
    
    // if statement to see which class its coming from
    if ([sourceTVC isKindOfClass:[TMSelectYearGroupTVC class]])
    {
        // segue TVC source reference
        TMSelectYearGroupTVC* selectYearGroupTVC = unwindSegue.sourceViewController;
        
        // set selected value
        yearGroupFromSelection = selectYearGroupTVC.selectedYearGroup;
        
        //set label value
        UILabel* selectedYearGroupLabel = (UILabel *)[self.tableView viewWithTag:12];
        [selectedYearGroupLabel setText:yearGroupFromSelection];
    }
    
    if ([sourceTVC isKindOfClass:[TMSelectGenderTVC class]])
    {
        // segue TVC source reference
        TMSelectGenderTVC* selectGenderTVC = unwindSegue.sourceViewController;
        
        // set selected value
        genderFromSelection = selectGenderTVC.selectedGender;
        
        //set label value
        UILabel* selectedGenderLabel = (UILabel *)[self.tableView viewWithTag:22];
        [selectedGenderLabel setText:genderFromSelection];
    }
    
    if ([sourceTVC isKindOfClass:[TMSelectDivisionTVC class]])
    {
        // segue TVC source reference
        TMSelectDivisionTVC* selectDivisionTVC = unwindSegue.sourceViewController;
        
        // set selected value
        divisionFromSelection = selectDivisionTVC.selectedDivision;
        
        //set label value
        UILabel* selectedDivisionLabel = (UILabel *)[self.tableView viewWithTag:32];
        [selectedDivisionLabel setText:divisionFromSelection];
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Selected age division
    _selectedAgeDivision = [NSString stringWithFormat:@"%@ %@ %@",yearGroupFromSelection,genderFromSelection,divisionFromSelection];

    // example for delegate
    /*
    if ([[segue identifier] isEqualToString:@"showSelectGender"]) {
        tmSelectGenderTVC *controller = [segue destinationViewController];
        [controller setDelegate:self];
    }
     */
    
}

/*
#pragma mark - Gender Selector Delegate Method
- (void)didSelectGender:(NSString*)gender
{
    NSLog(@"Gender was: %@", gender);
}
 */

- (IBAction)cancelFromSelectAgeDivision:(UIButton *)sender
{
    [[self navigationController] popViewControllerAnimated:YES];
}

- (IBAction)returnAgeDivision:(UIButton *)sender {
}


@end
