//
//  tmSelectYearGroupTVC.h
//  TeamManager
//
//  Created by Will Block on 10/16/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMSelectYearGroupTVC : UITableViewController

@property (nonatomic,strong) NSArray* yearGroupsArray;
@property (nonatomic,strong) NSString* selectedYearGroup;
@property (nonatomic,strong) NSIndexPath* selectedRow;
@end
