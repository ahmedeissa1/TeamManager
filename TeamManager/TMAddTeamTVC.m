//
//  tmAddTeamTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMAddTeamTVC.h"
#import "tmSelectClubTVC.h"
#import "TMEnterTeamNameCell.h"
#import "TMSelectClubCell.h"
#import "TMSelectDivisionTVC.h"
#import "TMDivisionListingCell.h"
#import "tmSelectSeasonTVC.h"
#import "TMSelectSeasonCell.h"
#import "tmSelectTeamColorsTVC.h"
#import "TMTeamColorsListingCell.h"


@interface TMAddTeamTVC ()

@end

@implementation TMAddTeamTVC
@synthesize clubNameFromSelection = _clubFromSelection;
@synthesize ageDivisionFromSelection = _ageDivisionFromSelection;
@synthesize seasonFromSelection = _seasonFromSelection;
@synthesize teamColorsFromSelection = _teamColorsFromSelection;
@synthesize teamName = _teamName;

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self)
    {
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


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - IB Action Methods

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    teamName = textField.text;
}

- (IBAction)dismissKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (IBAction)unwindToAddTeam:(UIStoryboardSegue*)unwindSegue
{
    //set sourceTVC
    TMAddTeamTVC* sourceTVC = unwindSegue.sourceViewController;
    
    // test for return class
    if ([sourceTVC isKindOfClass:[TMSelectClubTVC class]])
    {
        // set table view source from origin
        TMSelectClubTVC* selectClubTVC = unwindSegue.sourceViewController;
        
        // set selected value
        clubNameFromSelection = selectClubTVC.selectedClub;
        
        // set label text
        UILabel* selectClubLabel = (UILabel *)[self.tableView viewWithTag:22];
        [selectClubLabel setText:clubNameFromSelection];
    }
    
    // return from age division selection with age division
    if ([sourceTVC isKindOfClass:[TMSelectDivisionTVC class]])
    {
        //TMSelectDivisionTVC* selectAgeDivisionTVC = unwindSegue.sourceViewController;
        
        UILabel* selectDivisionLabel = (UILabel *)[self.tableView viewWithTag:32];
        [selectDivisionLabel setText:_ageDivisionFromSelection];
    }
    
    
    // return from season selection with season
    if ([sourceTVC isKindOfClass:[TMSelectSeasonTVC class]])
    {
        TMSelectSeasonTVC* selectSeasonTVC = unwindSegue.sourceViewController;
        
        seasonFromSelection = selectSeasonTVC.selectedSeason;
        
        UILabel* selectSeasonLabel = (UILabel *)[self.tableView viewWithTag:42];
        [selectSeasonLabel setText:seasonFromSelection];
    }
    
    // return from team colors with image color names
    if ([sourceTVC isKindOfClass:[TMSelectTeamColorsTVC class]])
    {
        TMSelectTeamColorsTVC* selectTeamColorsTVC = unwindSegue.sourceViewController;
        
        teamColorsFromSelection = selectTeamColorsTVC.selectedTeamColors;
        
        UILabel* selectTeamColorsLabel = (UILabel *)[self.tableView viewWithTag:52];
        [selectTeamColorsLabel setText:teamColorsFromSelection];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)unwindSegue sender:(id)sender
{
    
    // if cancel button: tag 70
    if ([sender tag]==0)
    {
        // unwind to data manager
        NSLog(@"canceled from add team");
    }
    
    // if save button: tag 71
    if ([sender tag]==1)
    {
        
        
        NSLog(@"begin: save add team");
        NSLog(@"%@",teamName);
        NSLog(@"%@",clubNameFromSelection);
        NSLog(@"%@",_ageDivisionFromSelection);
        NSLog(@"%@",seasonFromSelection);
        NSLog(@"%@",teamColorsFromSelection);
        // need to call method to populate managed object
        [self createNewTeam];
        // pop alert on success
        // unwind to data manager
    }
    

        
}

- (void) createNewTeam
{
    // create new managed object context
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // create new instance of managed object
    NSManagedObject *newTeam = [NSEntityDescription insertNewObjectForEntityForName:@"Teams_tms" inManagedObjectContext:context];
    
    // configure new team
    [newTeam setValue:teamName forKey:@"tmsName"];
    [newTeam setValue:clubNameFromSelection forKey:@"tmsClubName"];
    [newTeam setValue:self.ageDivisionFromSelection forKey:@"tmsAgeDivision"];
    [newTeam setValue:seasonFromSelection forKey:@"tmsSeason"];
    //[newTeam setValue:teamColorsFromSelection forKey:@"tmsTeamColors"];
    NSLog(@"New Team: %@ saved.",teamName);
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error])
    {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
}

@end
