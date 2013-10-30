//
//  tmTeamManagerTVC.m
//  TeamManager
//
//  Created by Will Block on 9/27/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmTeamManagerTVC.h"
#import "tmTeamsMO.h"
#import "tmTeamCell.h"

@interface tmTeamManagerTVC ()
@property (strong) NSMutableArray *teams;

@end

@implementation tmTeamManagerTVC

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

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

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //fetch the teams from persistent data store
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Teams_tms"];
    self.teams = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self teams] count];
}


/*
 
 // *** Snippet relating to reading JSON and assigning to managed object
 NSError* err = nil;
 NSString* dataPath = [[NSBundle mainBundle] pathForResource:@"Teams_tms" ofType:@"json"];
 NSArray* Teams_tms = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath]
 options:kNilOptions
 error:&err];
 NSLog(@"Imported Teams: %@", Teams_tms);
 
 [Teams_tms enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
 tmTeamsMO *team = [NSEntityDescription
 insertNewObjectForEntityForName:@"Teams_tms"
 inManagedObjectContext:context];
 team.tmsName = [obj objectForKey:@"tmsName"];
 team.tmsAgeDivision = [obj objectForKey:@"tmsAgeDivision"];
 team.tmsClubName = [obj objectForKey:@"tmsClubName"];
 team.tmsIsOpponent = [obj objectForKey:@"tmsIsOpponent"];
 team.tmsSeason = [obj objectForKey:@"tmsSeason"];
 //FailedBankDetails *failedBankDetails = [NSEntityDescription
 //                                        insertNewObjectForEntityForName:@"FailedBankDetails"
 //                                        inManagedObjectContext:context];
 //failedBankDetails.closeDate = [NSDate dateWithString:[obj objectForKey:@"closeDate"]];
 //failedBankDetails.updateDate = [NSDate date];
 //failedBankDetails.zip = [obj objectForKey:@"zip"];
 //failedBankDetails.info = failedBankInfo;
 //failedBankInfo.details = failedBankDetails;
 NSError *error;
 if (![context save:&error]) {
 NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
 }
 }];
 
 */



- (tmTeamCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"tmTeamCell";
    tmTeamCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSManagedObjectContext *team = [self.teams objectAtIndex:indexPath.row];
    cell.teamNameLabel.text = [team valueForKey:@"tmsName"];
    cell.seasonLabel.text = [team valueForKey:@"tmsSeason"];
    cell.ageDivisionLabel.text = [team valueForKey:@"tmsAgeDivision"];
    cell.clubNameLabel.text = [team valueForKey:@"tmsClubName"];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

-(IBAction)unwindToTeams:(UIStoryboardSegue*)segue
{
    
}

@end
