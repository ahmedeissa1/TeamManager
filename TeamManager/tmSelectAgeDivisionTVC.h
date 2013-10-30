//
//  tmSelectAgeDivisionTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMSelectAgeDivisionTVC : UITableViewController
{
    NSString* genderFromSelection;
    NSString* divisionFromSelection;
    NSString* yearGroupFromSelection;
    NSString* selectedAgeDivision;
}

@property (nonatomic,strong) NSString* genderFromSelection;
@property (nonatomic,strong) NSString* divisionFromSelection;
@property (nonatomic,strong) NSString* yearGroupFromSelection;
@property (nonatomic,strong) NSString* selectedAgeDivision;

- (IBAction)cancelFromSelectAgeDivision:(UIButton *)sender;
- (IBAction)returnAgeDivision:(UIButton *)sender;



// Refactor notes for future
// 1 create two cell prototypes
//    1 menu item
//        1 step number label
//        2 menu item name
//    2 button cell
//        1 cancel button
//        2 done button
// 2 create plist with values
//    1 menu items
//    2 segue destinations for menu cells
//        1 select year group
//        2 select division gender
//        3 select division
//    2 cancel button
//    2 ok button
// 3 create single table view controller to handle submenus
//    1 pass in value of menu item so plist knows which values to present
//            1 select year group
//            2 select gender
//            3 select division



@end
