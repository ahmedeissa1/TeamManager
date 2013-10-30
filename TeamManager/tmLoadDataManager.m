//
//  tmLoadDataManager.m
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmLoadDataManager.h"
#import "tmLoadDataManagerDelegate.h"

@implementation tmLoadDataManager

-(void)getTestData {
    
    NSError* error = nil;
    NSString* dataPath = [[NSBundle mainBundle] pathForResource:@"TestData" ofType:@"json"];
    NSData* testData = [NSData dataWithContentsOfFile:dataPath];
    
    if (error) {
        [self.delegate fetchingTestDataFailedWithError:error];
    } else {
        [self.delegate didReceiveTestDataJSON:testData];
    }
}


@end
