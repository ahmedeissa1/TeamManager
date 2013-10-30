//
//  tmDataManagerDelegate.h
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol tmDataManagerDelegate <NSObject>
- (void)didReceiveTeams:(NSArray *)groups;
- (void)fetchingTeamsFailedWithError:(NSError *)error;
@end
