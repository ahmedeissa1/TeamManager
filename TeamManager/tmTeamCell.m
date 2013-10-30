//
//  tmTeamCell.m
//  TeamManager
//
//  Created by Will Block on 9/27/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmTeamCell.h"

@implementation tmTeamCell

@synthesize teamNameLabel,
            seasonLabel,
            ageDivisionLabel,
            teamImage,
            leaguePointsLabel,
            leaguePositionLabel,
            goalDiffLabel;

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

@end
