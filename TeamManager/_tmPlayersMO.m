// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmPlayersMO.m instead.

#import "_tmPlayersMO.h"

const struct tmPlayersMOAttributes tmPlayersMOAttributes = {
	.pkPlrId = @"pkPlrId",
	.plrAvailableDate = @"plrAvailableDate",
	.plrFirstName = @"plrFirstName",
	.plrIsGuest = @"plrIsGuest",
	.plrIsInReserve = @"plrIsInReserve",
	.plrIsInjured = @"plrIsInjured",
	.plrIsStarter = @"plrIsStarter",
	.plrIsSub = @"plrIsSub",
	.plrIsSuspended = @"plrIsSuspended",
	.plrJerseyNum = @"plrJerseyNum",
	.plrLastName = @"plrLastName",
	.plrNickname = @"plrNickname",
	.plrPrimaryPosition = @"plrPrimaryPosition",
	.plrSecondaryPosition = @"plrSecondaryPosition",
};

const struct tmPlayersMORelationships tmPlayersMORelationships = {
	.plrContactInfo = @"plrContactInfo",
	.plrGameStats = @"plrGameStats",
	.plrRosters = @"plrRosters",
};

const struct tmPlayersMOFetchedProperties tmPlayersMOFetchedProperties = {
};

@implementation tmPlayersMOID
@end

@implementation _tmPlayersMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Players_plr" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Players_plr";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Players_plr" inManagedObjectContext:moc_];
}

- (tmPlayersMOID*)objectID {
	return (tmPlayersMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"pkPlrIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkPlrId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsGuestValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsGuest"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsInReserveValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsInReserve"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsInjuredValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsInjured"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsStarterValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsStarter"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsSubValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsSub"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"plrIsSuspendedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"plrIsSuspended"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic pkPlrId;



- (int16_t)pkPlrIdValue {
	NSNumber *result = [self pkPlrId];
	return [result shortValue];
}

- (void)setPkPlrIdValue:(int16_t)value_ {
	[self setPkPlrId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkPlrIdValue {
	NSNumber *result = [self primitivePkPlrId];
	return [result shortValue];
}

- (void)setPrimitivePkPlrIdValue:(int16_t)value_ {
	[self setPrimitivePkPlrId:[NSNumber numberWithShort:value_]];
}





@dynamic plrAvailableDate;






@dynamic plrFirstName;






@dynamic plrIsGuest;



- (BOOL)plrIsGuestValue {
	NSNumber *result = [self plrIsGuest];
	return [result boolValue];
}

- (void)setPlrIsGuestValue:(BOOL)value_ {
	[self setPlrIsGuest:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsGuestValue {
	NSNumber *result = [self primitivePlrIsGuest];
	return [result boolValue];
}

- (void)setPrimitivePlrIsGuestValue:(BOOL)value_ {
	[self setPrimitivePlrIsGuest:[NSNumber numberWithBool:value_]];
}





@dynamic plrIsInReserve;



- (BOOL)plrIsInReserveValue {
	NSNumber *result = [self plrIsInReserve];
	return [result boolValue];
}

- (void)setPlrIsInReserveValue:(BOOL)value_ {
	[self setPlrIsInReserve:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsInReserveValue {
	NSNumber *result = [self primitivePlrIsInReserve];
	return [result boolValue];
}

- (void)setPrimitivePlrIsInReserveValue:(BOOL)value_ {
	[self setPrimitivePlrIsInReserve:[NSNumber numberWithBool:value_]];
}





@dynamic plrIsInjured;



- (BOOL)plrIsInjuredValue {
	NSNumber *result = [self plrIsInjured];
	return [result boolValue];
}

- (void)setPlrIsInjuredValue:(BOOL)value_ {
	[self setPlrIsInjured:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsInjuredValue {
	NSNumber *result = [self primitivePlrIsInjured];
	return [result boolValue];
}

- (void)setPrimitivePlrIsInjuredValue:(BOOL)value_ {
	[self setPrimitivePlrIsInjured:[NSNumber numberWithBool:value_]];
}





@dynamic plrIsStarter;



- (BOOL)plrIsStarterValue {
	NSNumber *result = [self plrIsStarter];
	return [result boolValue];
}

- (void)setPlrIsStarterValue:(BOOL)value_ {
	[self setPlrIsStarter:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsStarterValue {
	NSNumber *result = [self primitivePlrIsStarter];
	return [result boolValue];
}

- (void)setPrimitivePlrIsStarterValue:(BOOL)value_ {
	[self setPrimitivePlrIsStarter:[NSNumber numberWithBool:value_]];
}





@dynamic plrIsSub;



- (BOOL)plrIsSubValue {
	NSNumber *result = [self plrIsSub];
	return [result boolValue];
}

- (void)setPlrIsSubValue:(BOOL)value_ {
	[self setPlrIsSub:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsSubValue {
	NSNumber *result = [self primitivePlrIsSub];
	return [result boolValue];
}

- (void)setPrimitivePlrIsSubValue:(BOOL)value_ {
	[self setPrimitivePlrIsSub:[NSNumber numberWithBool:value_]];
}





@dynamic plrIsSuspended;



- (BOOL)plrIsSuspendedValue {
	NSNumber *result = [self plrIsSuspended];
	return [result boolValue];
}

- (void)setPlrIsSuspendedValue:(BOOL)value_ {
	[self setPlrIsSuspended:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitivePlrIsSuspendedValue {
	NSNumber *result = [self primitivePlrIsSuspended];
	return [result boolValue];
}

- (void)setPrimitivePlrIsSuspendedValue:(BOOL)value_ {
	[self setPrimitivePlrIsSuspended:[NSNumber numberWithBool:value_]];
}





@dynamic plrJerseyNum;






@dynamic plrLastName;






@dynamic plrNickname;






@dynamic plrPrimaryPosition;






@dynamic plrSecondaryPosition;






@dynamic plrContactInfo;

	
- (NSMutableSet*)plrContactInfoSet {
	[self willAccessValueForKey:@"plrContactInfo"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"plrContactInfo"];
  
	[self didAccessValueForKey:@"plrContactInfo"];
	return result;
}
	

@dynamic plrGameStats;

	
- (NSMutableSet*)plrGameStatsSet {
	[self willAccessValueForKey:@"plrGameStats"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"plrGameStats"];
  
	[self didAccessValueForKey:@"plrGameStats"];
	return result;
}
	

@dynamic plrRosters;

	
- (NSMutableSet*)plrRostersSet {
	[self willAccessValueForKey:@"plrRosters"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"plrRosters"];
  
	[self didAccessValueForKey:@"plrRosters"];
	return result;
}
	






@end
