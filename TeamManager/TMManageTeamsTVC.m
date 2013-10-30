//
//  TMManageTeamsTVC.m
//  TeamManager
//
//  Created by Will Block on 10/24/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "TMManageTeamsTVC.h"
#import "tmTeamsMO.h"
#import "TMManageTeamsCell.h"

@interface TMManageTeamsTVC ()
@property (strong) NSMutableArray* teams;

@end

@implementation TMManageTeamsTVC
@synthesize managedObjectContext = _managedObjectContext, fetchedResultsController = _fetchedResultsController;

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
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // show heading cell
    if ([tableView cellForRowAtIndexPath:0])
    {
        return 1;
    }
    
    // show team cells
    else
    {
        return [[self teams] count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // Configure the cell...
    
    // show heading cell
    if (indexPath == 0)
    {
        static NSString *CellIdentifier = @"ManageTeamFormCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        return cell;
    }
    else
    {
        static NSString *CellIdentifier = @"ManageTeamCell";
        TMManageTeamsCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
        
        NSManagedObjectContext *team = [self.teams objectAtIndex:indexPath.row];
        cell.teamNameLabel.text = [team valueForKey:@"tmsName"];
        cell.seasonLabel.text = [team valueForKey:@"tmsSeason"];
        cell.ageDivisionLabel.text = [team valueForKey:@"tmsAgeDivision"];
        cell.clubLogoImage.image = [UIImage imageNamed:@"Pride-Logo.png"];
        return cell;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}

- (IBAction)unwindToManageTeams:(id)sender
{
    
}

@end
