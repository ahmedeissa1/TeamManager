// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmTeamsMO.m instead.

#import "_tmTeamsMO.h"

const struct tmTeamsMOAttributes tmTeamsMOAttributes = {
	.pkTmsId = @"pkTmsId",
	.tmsAgeDivision = @"tmsAgeDivision",
	.tmsAwayColor = @"tmsAwayColor",
	.tmsClubName = @"tmsClubName",
	.tmsHomeColor = @"tmsHomeColor",
	.tmsIsOpponent = @"tmsIsOpponent",
	.tmsName = @"tmsName",
	.tmsSeason = @"tmsSeason",
};

const struct tmTeamsMORelationships tmTeamsMORelationships = {
	.tmsGames = @"tmsGames",
	.tmsRosters = @"tmsRosters",
};

const struct tmTeamsMOFetchedProperties tmTeamsMOFetchedProperties = {
};

@implementation tmTeamsMOID
@end

@implementation _tmTeamsMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Teams_tms" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Teams_tms";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Teams_tms" inManagedObjectContext:moc_];
}

- (tmTeamsMOID*)objectID {
	return (tmTeamsMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"pkTmsIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkTmsId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"tmsIsOpponentValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"tmsIsOpponent"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic pkTmsId;



- (int16_t)pkTmsIdValue {
	NSNumber *result = [self pkTmsId];
	return [result shortValue];
}

- (void)setPkTmsIdValue:(int16_t)value_ {
	[self setPkTmsId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkTmsIdValue {
	NSNumber *result = [self primitivePkTmsId];
	return [result shortValue];
}

- (void)setPrimitivePkTmsIdValue:(int16_t)value_ {
	[self setPrimitivePkTmsId:[NSNumber numberWithShort:value_]];
}





@dynamic tmsAgeDivision;






@dynamic tmsAwayColor;






@dynamic tmsClubName;






@dynamic tmsHomeColor;






@dynamic tmsIsOpponent;



- (BOOL)tmsIsOpponentValue {
	NSNumber *result = [self tmsIsOpponent];
	return [result boolValue];
}

- (void)setTmsIsOpponentValue:(BOOL)value_ {
	[self setTmsIsOpponent:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveTmsIsOpponentValue {
	NSNumber *result = [self primitiveTmsIsOpponent];
	return [result boolValue];
}

- (void)setPrimitiveTmsIsOpponentValue:(BOOL)value_ {
	[self setPrimitiveTmsIsOpponent:[NSNumber numberWithBool:value_]];
}





@dynamic tmsName;






@dynamic tmsSeason;






@dynamic tmsGames;

	
- (NSMutableSet*)tmsGamesSet {
	[self willAccessValueForKey:@"tmsGames"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tmsGames"];
  
	[self didAccessValueForKey:@"tmsGames"];
	return result;
}
	

@dynamic tmsRosters;

	
- (NSMutableSet*)tmsRostersSet {
	[self willAccessValueForKey:@"tmsRosters"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tmsRosters"];
  
	[self didAccessValueForKey:@"tmsRosters"];
	return result;
}
	






@end
