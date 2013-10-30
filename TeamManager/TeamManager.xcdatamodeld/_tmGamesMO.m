// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGamesMO.m instead.

#import "_tmGamesMO.h"

const struct tmGamesMOAttributes tmGamesMOAttributes = {
	.fkOTmsIdGam = @"fkOTmsIdGam",
	.fkTmsIdGam = @"fkTmsIdGam",
	.gamDidEndInPK = @"gamDidEndInPK",
	.gamGameCity = @"gamGameCity",
	.gamGameField = @"gamGameField",
	.gamGamePostalCode = @"gamGamePostalCode",
	.gamGameType = @"gamGameType",
	.gamHalfDuration = @"gamHalfDuration",
	.gamIsHomeTeam = @"gamIsHomeTeam",
	.gamLeagueGameId = @"gamLeagueGameId",
	.gamNvN = @"gamNvN",
	.gamOSystemOfPlay = @"gamOSystemOfPlay",
	.gamSchedGameDateTime = @"gamSchedGameDateTime",
	.gamStartDateTime = @"gamStartDateTime",
	.gamSystemOfPlay = @"gamSystemOfPlay",
	.pkGamId = @"pkGamId",
};

const struct tmGamesMORelationships tmGamesMORelationships = {
	.gamGameNotes = @"gamGameNotes",
	.gamGameStats = @"gamGameStats",
	.gamRosters = @"gamRosters",
	.gamTeams = @"gamTeams",
};

const struct tmGamesMOFetchedProperties tmGamesMOFetchedProperties = {
};

@implementation tmGamesMOID
@end

@implementation _tmGamesMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Games_gam" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Games_gam";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Games_gam" inManagedObjectContext:moc_];
}

- (tmGamesMOID*)objectID {
	return (tmGamesMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"fkOTmsIdGamValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkOTmsIdGam"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fkTmsIdGamValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkTmsIdGam"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"gamDidEndInPKValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"gamDidEndInPK"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"gamHalfDurationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"gamHalfDuration"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"gamIsHomeTeamValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"gamIsHomeTeam"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pkGamIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkGamId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic fkOTmsIdGam;



- (int16_t)fkOTmsIdGamValue {
	NSNumber *result = [self fkOTmsIdGam];
	return [result shortValue];
}

- (void)setFkOTmsIdGamValue:(int16_t)value_ {
	[self setFkOTmsIdGam:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkOTmsIdGamValue {
	NSNumber *result = [self primitiveFkOTmsIdGam];
	return [result shortValue];
}

- (void)setPrimitiveFkOTmsIdGamValue:(int16_t)value_ {
	[self setPrimitiveFkOTmsIdGam:[NSNumber numberWithShort:value_]];
}





@dynamic fkTmsIdGam;



- (int16_t)fkTmsIdGamValue {
	NSNumber *result = [self fkTmsIdGam];
	return [result shortValue];
}

- (void)setFkTmsIdGamValue:(int16_t)value_ {
	[self setFkTmsIdGam:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkTmsIdGamValue {
	NSNumber *result = [self primitiveFkTmsIdGam];
	return [result shortValue];
}

- (void)setPrimitiveFkTmsIdGamValue:(int16_t)value_ {
	[self setPrimitiveFkTmsIdGam:[NSNumber numberWithShort:value_]];
}





@dynamic gamDidEndInPK;



- (BOOL)gamDidEndInPKValue {
	NSNumber *result = [self gamDidEndInPK];
	return [result boolValue];
}

- (void)setGamDidEndInPKValue:(BOOL)value_ {
	[self setGamDidEndInPK:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveGamDidEndInPKValue {
	NSNumber *result = [self primitiveGamDidEndInPK];
	return [result boolValue];
}

- (void)setPrimitiveGamDidEndInPKValue:(BOOL)value_ {
	[self setPrimitiveGamDidEndInPK:[NSNumber numberWithBool:value_]];
}





@dynamic gamGameCity;






@dynamic gamGameField;






@dynamic gamGamePostalCode;






@dynamic gamGameType;






@dynamic gamHalfDuration;



- (float)gamHalfDurationValue {
	NSNumber *result = [self gamHalfDuration];
	return [result floatValue];
}

- (void)setGamHalfDurationValue:(float)value_ {
	[self setGamHalfDuration:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveGamHalfDurationValue {
	NSNumber *result = [self primitiveGamHalfDuration];
	return [result floatValue];
}

- (void)setPrimitiveGamHalfDurationValue:(float)value_ {
	[self setPrimitiveGamHalfDuration:[NSNumber numberWithFloat:value_]];
}





@dynamic gamIsHomeTeam;



- (BOOL)gamIsHomeTeamValue {
	NSNumber *result = [self gamIsHomeTeam];
	return [result boolValue];
}

- (void)setGamIsHomeTeamValue:(BOOL)value_ {
	[self setGamIsHomeTeam:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveGamIsHomeTeamValue {
	NSNumber *result = [self primitiveGamIsHomeTeam];
	return [result boolValue];
}

- (void)setPrimitiveGamIsHomeTeamValue:(BOOL)value_ {
	[self setPrimitiveGamIsHomeTeam:[NSNumber numberWithBool:value_]];
}





@dynamic gamLeagueGameId;






@dynamic gamNvN;






@dynamic gamOSystemOfPlay;






@dynamic gamSchedGameDateTime;






@dynamic gamStartDateTime;






@dynamic gamSystemOfPlay;






@dynamic pkGamId;



- (int16_t)pkGamIdValue {
	NSNumber *result = [self pkGamId];
	return [result shortValue];
}

- (void)setPkGamIdValue:(int16_t)value_ {
	[self setPkGamId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkGamIdValue {
	NSNumber *result = [self primitivePkGamId];
	return [result shortValue];
}

- (void)setPrimitivePkGamIdValue:(int16_t)value_ {
	[self setPrimitivePkGamId:[NSNumber numberWithShort:value_]];
}





@dynamic gamGameNotes;

	
- (NSMutableSet*)gamGameNotesSet {
	[self willAccessValueForKey:@"gamGameNotes"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"gamGameNotes"];
  
	[self didAccessValueForKey:@"gamGameNotes"];
	return result;
}
	

@dynamic gamGameStats;

	
- (NSMutableSet*)gamGameStatsSet {
	[self willAccessValueForKey:@"gamGameStats"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"gamGameStats"];
  
	[self didAccessValueForKey:@"gamGameStats"];
	return result;
}
	

@dynamic gamRosters;

	
- (NSMutableSet*)gamRostersSet {
	[self willAccessValueForKey:@"gamRosters"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"gamRosters"];
  
	[self didAccessValueForKey:@"gamRosters"];
	return result;
}
	

@dynamic gamTeams;

	
- (NSMutableSet*)gamTeamsSet {
	[self willAccessValueForKey:@"gamTeams"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"gamTeams"];
  
	[self didAccessValueForKey:@"gamTeams"];
	return result;
}
	






@end
