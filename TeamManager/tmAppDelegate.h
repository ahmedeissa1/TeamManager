//
//  tmAppDelegate.h
//  TeamManager
//
//  Created by Will Block on 9/24/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TMManageTeamsTVC.h"

@interface tmAppDelegate : UIResponder <UIApplicationDelegate>

// properties
@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic,strong) IBOutlet TMManageTeamsTVC* manageTeamsController;

// methods
- (NSURL *)applicationDocumentsDirectory;
- (void)saveContext;
- (void)customizeAppearance;
@end
