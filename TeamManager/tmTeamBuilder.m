//
//  tmTeamBuilder.m
//  TeamManager
//
//  Created by Will Block on 10/4/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#import "tmTeamBuilder.h"
#import "tmTeamsMO.h"

@implementation tmTeamBuilder

+ (NSArray *)teamsFromJSON:(NSData *)testDataObject error:(NSError *__autoreleasing *)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:testDataObject options:0 error:&localError];
    
    if(localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *teams = [[NSMutableArray alloc] init];

    NSArray *results = [parsedObject valueForKey:@"results"];
    NSLog(@"Count %d", results.count);

    for (NSDictionary *teamDic in results) {
        tmTeamsMO *team = [[tmTeamsMO alloc] init];
    
        for (NSString *key in teamDic) {
            if ([team respondsToSelector:NSSelectorFromString(key)]) {
                [team setValue:[teamDic valueForKey:key] forKey:key];
            }
        }
        [teams addObject:team];
    }
    return teams;
}


@end
