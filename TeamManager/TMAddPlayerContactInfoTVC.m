//
//  TMAddPlayerContactInfoTVC.m
//  TeamManager
//
//  Created by Will Block on 10/21/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMAddPlayerContactInfoTVC.h"
#import "TMAddPlayerContactInfoCell.h"
#import "TMEnterCellPhoneNumberCell.h"
#import "TMEnterEmailAddressCell.h"
#import "TMEnterStreetAddressCell.h"
#import "TMEnterPostalCodeCell.h"

@interface TMAddPlayerContactInfoTVC()

@end

@implementation TMAddPlayerContactInfoTVC
@synthesize playerContactInfo = _playerContactInfo;
@synthesize playerEmailAddress = _playerEmailAddress;
@synthesize playerCellPhoneNumber = _playerCellPhoneNumber;
@synthesize playerStreetAddress = _playerStreetAddress;
@synthesize playerPostalCode = _playerPostalCode;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    if ([textField tag] == 12) {
        playerEmailAddress = textField.text;
    }
    if ([textField tag] == 22) {
        playerCellPhoneNumber = textField.text;
    }
    if ([textField tag] == 32) {
        playerStreetAddress = textField.text;
    }
    if ([textField tag] == 42) {
        playerPostalCode = textField.text;
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segueFromAddPlayerContactInfo sender:(id)sender
{
    if ([sender tag] == 1) {
        // unwind to add player
    }
    if ([sender tag] == 2) {
        
        // store contact info in array
        self.playerContactInfo = [[NSArray alloc] initWithObjects:playerEmailAddress,playerCellPhoneNumber,playerStreetAddress,playerPostalCode, nil];
        // unwind to add player
    }
}
@end
