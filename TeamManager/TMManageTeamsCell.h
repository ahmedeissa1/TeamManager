//
//  TMManageTeamsCell.h
//  TeamManager
//
//  Created by Will Block on 10/25/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMManageTeamsCell : UITableViewCell
{
    // instance variables
}

// properties

// outlets
@property (strong, nonatomic) IBOutlet UIImageView *clubLogoImage;
@property (strong, nonatomic) IBOutlet UILabel *teamNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *ageDivisionLabel;
@property (strong, nonatomic) IBOutlet UILabel *seasonLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfPlayersAssignedLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfRostersAssignedLabel;
@property (strong, nonatomic) IBOutlet UILabel *numberOfEventsLabel;

// actions
- (IBAction)editTeamButton:(UIButton*)sender;
- (IBAction)manageTeamPlayersButton:(UIButton *)sender;
- (IBAction)manageTeamRostersButton:(UIButton *)sender;
- (IBAction)manageTeamEvents:(UIButton *)sender;

// methods

@end
