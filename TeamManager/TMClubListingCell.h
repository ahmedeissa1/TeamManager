//
//  tmClubCell.h
//  TeamManager
//
//  Created by Will Block on 10/10/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMClubListingCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *clubNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *clubLocationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *clubLogoImage;

@end
