//
//  tmAddPlayerTVC.m
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMAddPlayerTVC.h"
#import "TMAddPlayerContactInfoTVC.h"
#import "TMSelectPositionTVC.h"
#import "TMSelectPrimaryPositionCell.h"
#import "TMSecondaryPositionCell.h"

@interface TMAddPlayerTVC ()

@end

@implementation TMAddPlayerTVC
@synthesize playerName = _playerName;
@synthesize nickname = _nickname;
@synthesize playerNumber = _playerNumber;
@synthesize birthdate = _birthdate;
@synthesize primaryPosition = _primaryPosition;
@synthesize secondaryPosition = _secondaryPosition;
@synthesize playerContactInfoArray = _playerContactInfoArray;

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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

-(IBAction)unwindToAddPlayer:(UIStoryboardSegue *)unwindSegue {
    
    // unwind from contact info
    if ([[unwindSegue identifier] isEqualToString:@"unwindFromAddContactInfo"])
    {
        // set table view source from origin
        TMAddPlayerContactInfoTVC* playerContactInfoTVC = unwindSegue.sourceViewController;
        
        // set selected value
        playerContactInfoArray = playerContactInfoTVC.playerContactInfo;
        
        // set label text
        UILabel* playerContactInfoLabel = (UILabel *)[self.tableView viewWithTag:72];
        [playerContactInfoLabel setText:[playerContactInfoArray objectAtIndex:0]];
    }
    
    // unwind from select primary position
    if ([[unwindSegue identifier] isEqualToString:@"unwindFromSelectPosition"]) {
        
        TMSelectPositionTVC* sourceTVC = (TMSelectPositionTVC*)unwindSegue.sourceViewController;
        // primary position
        if ([sourceTVC.positionType isEqualToString:@"primary"])
        {
            primaryPosition = sourceTVC.selectedPosition;
            self.selectedPrimaryPositionLabel.text = primaryPosition;
        }
        
        // secondary position
        if ([sourceTVC.positionType isEqualToString:@"secondary"])
        {
            secondaryPosition = sourceTVC.selectedPosition;
            self.selectedSecondaryPositionLabel.text = secondaryPosition;
        }

    }
    
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField tag] == 12) {
        self.playerName = textField.text;
    }
    if ([textField tag] == 22) {
        self.nickname = textField.text;
    }
    if ([textField tag] == 32) {
        self.playerNumber = textField.text;
    }
    if ([textField tag] == 42) {
        self.birthdate = textField.text;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender tag] == 1) {
        // cancel - unwind to data manager
    }
    
    if ([sender tag] == 2) {
        // save to core data and unwind to data manager
        NSLog(@"player name: %@",self.playerName);
        NSLog(@"player nickname: %@",self.nickname);
        NSLog(@"player number: %@",self.playerNumber);
        NSLog(@"birthdate %@",self.birthdate);
        NSLog(@"primary position: %@",primaryPosition);
        NSLog(@"secondary position: %@", secondaryPosition);
        NSLog(@"contact info: %@",playerContactInfoArray);
        
    }
    
    if ([sender tag] == 50) {
        // set caller variable to primary
        TMSelectPositionTVC* destTVC = (TMSelectPositionTVC*)segue.destinationViewController;
        destTVC.positionType = @"primary";
    }
    
    if ([sender tag] == 60) {
        // set caller variable to secondary
        TMSelectPositionTVC* destTVC = (TMSelectPositionTVC*)segue.destinationViewController;
        destTVC.positionType = @"secondary";
    }

}

- (void)createNewPlayer
{
    
}

@end
