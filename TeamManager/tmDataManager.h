//
//  tmDataManager.h
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "tmDataManagerDelegate.h"
#import "tmLoadDataManagerDelegate.h"

@class tmLoadDataManager;

@interface tmDataManager : NSObject<tmLoadDataManagerDelegate>

@property (strong, nonatomic) tmLoadDataManager *loadDataManager;
@property (weak, nonatomic) id<tmDataManagerDelegate> delegate;

-(void)fetchTeams;

@end
