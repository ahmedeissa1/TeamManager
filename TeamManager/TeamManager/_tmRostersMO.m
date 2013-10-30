// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmRostersMO.m instead.

#import "_tmRostersMO.h"

const struct tmRostersMOAttributes tmRostersMOAttributes = {
	.fkGmsIdRos = @"fkGmsIdRos",
	.fkPlrIdRos = @"fkPlrIdRos",
	.fkTmsIdRos = @"fkTmsIdRos",
	.rosId = @"rosId",
	.rosIsOpponent = @"rosIsOpponent",
	.rosSeason = @"rosSeason",
	.rosType = @"rosType",
};

const struct tmRostersMORelationships tmRostersMORelationships = {
	.rosGames = @"rosGames",
	.rosPlayers = @"rosPlayers",
	.rosTeams = @"rosTeams",
};

const struct tmRostersMOFetchedProperties tmRostersMOFetchedProperties = {
};

@implementation tmRostersMOID
@end

@implementation _tmRostersMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Rosters_ros" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Rosters_ros";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Rosters_ros" inManagedObjectContext:moc_];
}

- (tmRostersMOID*)objectID {
	return (tmRostersMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"fkGmsIdRosValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkGmsIdRos"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fkPlrIdRosValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkPlrIdRos"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fkTmsIdRosValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkTmsIdRos"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"rosIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rosId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"rosIsOpponentValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rosIsOpponent"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic fkGmsIdRos;



- (int16_t)fkGmsIdRosValue {
	NSNumber *result = [self fkGmsIdRos];
	return [result shortValue];
}

- (void)setFkGmsIdRosValue:(int16_t)value_ {
	[self setFkGmsIdRos:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkGmsIdRosValue {
	NSNumber *result = [self primitiveFkGmsIdRos];
	return [result shortValue];
}

- (void)setPrimitiveFkGmsIdRosValue:(int16_t)value_ {
	[self setPrimitiveFkGmsIdRos:[NSNumber numberWithShort:value_]];
}





@dynamic fkPlrIdRos;



- (int16_t)fkPlrIdRosValue {
	NSNumber *result = [self fkPlrIdRos];
	return [result shortValue];
}

- (void)setFkPlrIdRosValue:(int16_t)value_ {
	[self setFkPlrIdRos:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkPlrIdRosValue {
	NSNumber *result = [self primitiveFkPlrIdRos];
	return [result shortValue];
}

- (void)setPrimitiveFkPlrIdRosValue:(int16_t)value_ {
	[self setPrimitiveFkPlrIdRos:[NSNumber numberWithShort:value_]];
}





@dynamic fkTmsIdRos;



- (int16_t)fkTmsIdRosValue {
	NSNumber *result = [self fkTmsIdRos];
	return [result shortValue];
}

- (void)setFkTmsIdRosValue:(int16_t)value_ {
	[self setFkTmsIdRos:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkTmsIdRosValue {
	NSNumber *result = [self primitiveFkTmsIdRos];
	return [result shortValue];
}

- (void)setPrimitiveFkTmsIdRosValue:(int16_t)value_ {
	[self setPrimitiveFkTmsIdRos:[NSNumber numberWithShort:value_]];
}





@dynamic rosId;



- (int16_t)rosIdValue {
	NSNumber *result = [self rosId];
	return [result shortValue];
}

- (void)setRosIdValue:(int16_t)value_ {
	[self setRosId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveRosIdValue {
	NSNumber *result = [self primitiveRosId];
	return [result shortValue];
}

- (void)setPrimitiveRosIdValue:(int16_t)value_ {
	[self setPrimitiveRosId:[NSNumber numberWithShort:value_]];
}





@dynamic rosIsOpponent;



- (BOOL)rosIsOpponentValue {
	NSNumber *result = [self rosIsOpponent];
	return [result boolValue];
}

- (void)setRosIsOpponentValue:(BOOL)value_ {
	[self setRosIsOpponent:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveRosIsOpponentValue {
	NSNumber *result = [self primitiveRosIsOpponent];
	return [result boolValue];
}

- (void)setPrimitiveRosIsOpponentValue:(BOOL)value_ {
	[self setPrimitiveRosIsOpponent:[NSNumber numberWithBool:value_]];
}





@dynamic rosSeason;






@dynamic rosType;






@dynamic rosGames;

	

@dynamic rosPlayers;

	
- (NSMutableSet*)rosPlayersSet {
	[self willAccessValueForKey:@"rosPlayers"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"rosPlayers"];
  
	[self didAccessValueForKey:@"rosPlayers"];
	return result;
}
	

@dynamic rosTeams;

	






@end
