//
//  tmSelectDivisionTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMSelectDivisionTVC : UITableViewController

@property (nonatomic,strong) NSArray* divisionsArray;
@property (nonatomic,strong) NSString* selectedYearGroupGender;
@property (nonatomic,weak) NSString* selectedDivision;

@end
