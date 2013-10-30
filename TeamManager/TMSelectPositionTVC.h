//
//  tmSelectPositionTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMSelectPositionTVC : UITableViewController
{
    NSString* selectedPosition;
    NSString* positionType;
}

@property (nonatomic,strong) NSArray* positionArray;
@property (nonatomic,strong) NSString* selectedPosition;
@property (nonatomic,strong) NSString* positionType;

@end
