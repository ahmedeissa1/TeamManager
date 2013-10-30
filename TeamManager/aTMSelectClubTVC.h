//
//  tmSelectClubTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TMClubListingCell.h"

@interface aTMSelectClubTVC : UITableViewController

@property (nonatomic,strong) NSArray *clubInfo;
@property (nonatomic,strong) NSString *selectedClub;

@end
