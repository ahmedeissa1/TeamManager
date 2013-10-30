//
//  tmAddTeamVC.m
//  TeamManager
//
//  Created by Will Block on 9/27/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmAddTeamVC.h"

@interface tmAddTeamVC ()

@end

@implementation tmAddTeamVC
@synthesize teamNameTF, clubNameTF, ageDivisionTF, seasonTF, leaguePointsTF, leaguePositionTF;

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.teamNameTF.delegate = (id)self;
    self.clubNameTF.delegate = (id)self;
    self.ageDivisionTF.delegate = (id)self;
    self.seasonTF.delegate = (id)self;
    self.leaguePointsTF.delegate = (id)self;
    self.leaguePositionTF.delegate = (id)self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveTeam:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *newTeam = [NSEntityDescription insertNewObjectForEntityForName:@"Teams_tms" inManagedObjectContext:context];
    [newTeam setValue:self.teamNameTF.text forKey:@"tmsName"];
    [newTeam setValue:self.clubNameTF.text forKey:@"tmsClubName"];
    [newTeam setValue:self.ageDivisionTF.text forKey:@"tmsAgeDivision"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    //hides keyboard when another part of layout was touched
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

@end
