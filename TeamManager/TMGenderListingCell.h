//
//  tmSelectGenderCell.h
//  TeamManager
//
//  Created by Will Block on 10/11/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMGenderListingCell : UITableViewCell

// properties
@property (strong,nonatomic) NSString* selectedGender;

// outlets
@property (nonatomic,strong) IBOutlet UILabel* genderLabel;

@end
