//
//  tmAddPlayerTVC.h
//  TeamManager
//
//  Created by Will Block on 10/9/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMAddPlayerTVC : UITableViewController <UITextFieldDelegate>
{
    // instance variables
    NSString* playerName;
    NSString* nickname;
    NSString* playerNumber;
    NSString* birthdate;
    NSString* primaryPosition;
    NSString* secondaryPosition;
    NSArray* playerContactInfoArray;
}

// properties
@property (nonatomic,strong) NSString* playerName;
@property (nonatomic,strong) NSString* nickname;
@property (nonatomic,strong) NSString* playerNumber;
@property (nonatomic,strong) NSString* birthdate;
@property (nonatomic,strong) NSString* primaryPosition;
@property (nonatomic,strong) NSString* secondaryPosition;
@property (nonatomic,strong) NSArray* playerContactInfoArray;

// outlets
@property (strong, nonatomic) IBOutlet UITextField *enterPlayerNameTF;
@property (strong, nonatomic) IBOutlet UITextField *enterNicknameTF;
@property (strong, nonatomic) IBOutlet UITextField *enterPlayerNumberTF;
@property (strong, nonatomic) IBOutlet UITextField *enterBirthdateTF;
@property (strong, nonatomic) IBOutlet UILabel *selectedPrimaryPositionLabel;
@property (strong, nonatomic) IBOutlet UILabel *selectedSecondaryPositionLabel;
@property (strong, nonatomic) IBOutlet UILabel *playerContactInfoLabel;


// actions
- (IBAction)unwindToAddPlayer:(UIStoryboardSegue *)unwindSegue;

// methods
- (void)createNewPlayer;

@end
