// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmContactInfoMO.m instead.

#import "_tmContactInfoMO.h"

const struct tmContactInfoMOAttributes tmContactInfoMOAttributes = {
	.cnfAddress = @"cnfAddress",
	.cnfAddress2 = @"cnfAddress2",
	.cnfCellPhone = @"cnfCellPhone",
	.cnfCity = @"cnfCity",
	.cnfEmailAddress = @"cnfEmailAddress",
	.cnfFirstName = @"cnfFirstName",
	.cnfIsEmergency = @"cnfIsEmergency",
	.cnfIsPrimary = @"cnfIsPrimary",
	.cnfLastName = @"cnfLastName",
	.cnfPostalCode = @"cnfPostalCode",
	.cnfType = @"cnfType",
	.fkPlrIdCnf = @"fkPlrIdCnf",
	.pkCnfId = @"pkCnfId",
};

const struct tmContactInfoMORelationships tmContactInfoMORelationships = {
	.cnfPlayers = @"cnfPlayers",
};

const struct tmContactInfoMOFetchedProperties tmContactInfoMOFetchedProperties = {
};

@implementation tmContactInfoMOID
@end

@implementation _tmContactInfoMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"ContactInfo_cnf" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"ContactInfo_cnf";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"ContactInfo_cnf" inManagedObjectContext:moc_];
}

- (tmContactInfoMOID*)objectID {
	return (tmContactInfoMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"cnfIsEmergencyValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cnfIsEmergency"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"cnfIsPrimaryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"cnfIsPrimary"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fkPlrIdCnfValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkPlrIdCnf"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pkCnfIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkCnfId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic cnfAddress;






@dynamic cnfAddress2;






@dynamic cnfCellPhone;






@dynamic cnfCity;






@dynamic cnfEmailAddress;






@dynamic cnfFirstName;






@dynamic cnfIsEmergency;



- (BOOL)cnfIsEmergencyValue {
	NSNumber *result = [self cnfIsEmergency];
	return [result boolValue];
}

- (void)setCnfIsEmergencyValue:(BOOL)value_ {
	[self setCnfIsEmergency:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveCnfIsEmergencyValue {
	NSNumber *result = [self primitiveCnfIsEmergency];
	return [result boolValue];
}

- (void)setPrimitiveCnfIsEmergencyValue:(BOOL)value_ {
	[self setPrimitiveCnfIsEmergency:[NSNumber numberWithBool:value_]];
}





@dynamic cnfIsPrimary;



- (BOOL)cnfIsPrimaryValue {
	NSNumber *result = [self cnfIsPrimary];
	return [result boolValue];
}

- (void)setCnfIsPrimaryValue:(BOOL)value_ {
	[self setCnfIsPrimary:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveCnfIsPrimaryValue {
	NSNumber *result = [self primitiveCnfIsPrimary];
	return [result boolValue];
}

- (void)setPrimitiveCnfIsPrimaryValue:(BOOL)value_ {
	[self setPrimitiveCnfIsPrimary:[NSNumber numberWithBool:value_]];
}





@dynamic cnfLastName;






@dynamic cnfPostalCode;






@dynamic cnfType;






@dynamic fkPlrIdCnf;



- (int16_t)fkPlrIdCnfValue {
	NSNumber *result = [self fkPlrIdCnf];
	return [result shortValue];
}

- (void)setFkPlrIdCnfValue:(int16_t)value_ {
	[self setFkPlrIdCnf:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkPlrIdCnfValue {
	NSNumber *result = [self primitiveFkPlrIdCnf];
	return [result shortValue];
}

- (void)setPrimitiveFkPlrIdCnfValue:(int16_t)value_ {
	[self setPrimitiveFkPlrIdCnf:[NSNumber numberWithShort:value_]];
}





@dynamic pkCnfId;



- (int16_t)pkCnfIdValue {
	NSNumber *result = [self pkCnfId];
	return [result shortValue];
}

- (void)setPkCnfIdValue:(int16_t)value_ {
	[self setPkCnfId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkCnfIdValue {
	NSNumber *result = [self primitivePkCnfId];
	return [result shortValue];
}

- (void)setPrimitivePkCnfIdValue:(int16_t)value_ {
	[self setPrimitivePkCnfId:[NSNumber numberWithShort:value_]];
}





@dynamic cnfPlayers;

	






@end
