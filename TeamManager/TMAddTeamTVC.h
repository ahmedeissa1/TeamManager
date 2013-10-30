//
//  tmAddTeamTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tmTeamsMO.h"

@interface TMAddTeamTVC : UITableViewController <UITextFieldDelegate>
{
    // instance variables
    NSString* teamName;
    NSString* clubNameFromSelection;
    NSString* ageDivisionFromSelection;
    NSString* seasonFromSelection;
    NSString* teamColorsFromSelection;
}


// properties
@property (nonatomic,strong) NSString* teamName;
@property (nonatomic,strong) NSString* clubNameFromSelection;
@property (nonatomic,strong) NSString* ageDivisionFromSelection;
@property (nonatomic,strong) NSString* seasonFromSelection;
@property (nonatomic,strong) NSString* teamColorsFromSelection;

// outlets


// actions
- (IBAction)dismissKeyboard:(id)sender;
//- (IBAction)saveNewTeam:(UIButton *)sender;
- (IBAction)unwindToAddTeam:(UIStoryboardSegue*)unwindSegue;

// methods
// need method to populate core data managed object
- (void) createNewTeam;

@end
