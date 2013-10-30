//
//  tmAddTeamVC.h
//  TeamManager
//
//  Created by Will Block on 9/27/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tmTeamsMO.h"

@interface tmAddTeamVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *teamNameTF;
@property (weak, nonatomic) IBOutlet UITextField *clubNameTF;
@property (weak, nonatomic) IBOutlet UITextField *ageDivisionTF;
@property (weak, nonatomic) IBOutlet UITextField *seasonTF;
@property (weak, nonatomic) IBOutlet UITextField *leaguePositionTF;
@property (weak, nonatomic) IBOutlet UITextField *leaguePointsTF;


- (IBAction)cancel:(id)sender;
- (IBAction)saveTeam:(id)sender;

@end
