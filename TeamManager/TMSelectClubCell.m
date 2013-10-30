//
//  tmSelectClubCell.m
//  TeamManager
//
//  Created by Will Block on 10/11/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMSelectClubCell.h"

@implementation TMSelectClubCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _selectClubLabel.text = @"Select Club";
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end