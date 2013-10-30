//
//  tmSelectTeamColorsTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMSelectTeamColorsTVC : UITableViewController
{
    NSString* selectedTeamColors;
}

@property (nonatomic,strong) NSArray* teamColorsArray;
@property (nonatomic,weak) NSString* selectedTeamColors;

@end
