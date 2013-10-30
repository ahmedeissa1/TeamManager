//
//  tmLoadDataManagerDelegate.h
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol tmLoadDataManagerDelegate
- (void)didReceiveTestDataJSON:(NSData *)objectNotation;
- (void)fetchingTestDataFailedWithError:(NSError *)error;
@end
