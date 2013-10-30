//
//  tmTeamCell.h
//  TeamManager
//
//  Created by Will Block on 9/27/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tmTeamCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *teamImage;
@property (weak, nonatomic) IBOutlet UILabel *teamNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *seasonLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageDivisionLabel;
@property (weak, nonatomic) IBOutlet UILabel *clubNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *leaguePositionLabel;
@property (weak, nonatomic) IBOutlet UILabel *leaguePointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalDiffLabel;

@end
