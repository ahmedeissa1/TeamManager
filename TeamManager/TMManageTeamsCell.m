//
//  TMManageTeamsCell.m
//  TeamManager
//
//  Created by Will Block on 10/25/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMManageTeamsCell.h"

@implementation TMManageTeamsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)editTeamButton:(id)sender {
}

- (IBAction)managePlayersButton:(UIButton *)sender {
}

- (IBAction)manageTeamRostersButton:(UIButton *)sender {
}

- (IBAction)manageTeamEvents:(UIButton *)sender {
}
@end
