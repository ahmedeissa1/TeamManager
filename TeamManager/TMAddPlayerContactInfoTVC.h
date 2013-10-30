//
//  TMAddPlayerContactInfoTVC.h
//  TeamManager
//
//  Created by Will Block on 10/21/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TMAddPlayerContactInfoTVC : UITableViewController <UITextFieldDelegate>
{
    // instance variables
    NSArray* playerContactInfo;
    NSString* playerEmailAddress;
    NSString* playerCellPhoneNumber;
    NSString* playerStreetAddress;
    NSString* playerPostalCode;
}

// properties
@property (nonatomic,strong) NSArray* playerContactInfo;
@property (nonatomic,strong) NSString* playerEmailAddress;
@property (nonatomic,strong) NSString* playerCellPhoneNumber;
@property (nonatomic,strong) NSString* playerStreetAddress;
@property (nonatomic,strong) NSString* playerPostalCode;

// outlets
@property (strong, nonatomic) IBOutlet UITextField *enterEmailAddressTF;
@property (strong, nonatomic) IBOutlet UITextField *enterCellPhoneNumberTF;
@property (strong, nonatomic) IBOutlet UITextField *enterStreetAddressTF;
@property (strong, nonatomic) IBOutlet UITextField *enterPostalCodeTF;

//actions

//methods

@end