// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGameStatsMO.m instead.

#import "_tmGameStatsMO.h"

const struct tmGameStatsMOAttributes tmGameStatsMOAttributes = {
	.fkGamIdGst = @"fkGamIdGst",
	.fkPlrIdGst = @"fkPlrIdGst",
	.gstStat = @"gstStat",
	.gstStatDateTime = @"gstStatDateTime",
	.gstStatIsOpponent = @"gstStatIsOpponent",
	.gstStatValue = @"gstStatValue",
	.pkGstId = @"pkGstId",
};

const struct tmGameStatsMORelationships tmGameStatsMORelationships = {
	.gstGames = @"gstGames",
	.gstPlayers = @"gstPlayers",
};

const struct tmGameStatsMOFetchedProperties tmGameStatsMOFetchedProperties = {
};

@implementation tmGameStatsMOID
@end

@implementation _tmGameStatsMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"GameStats_gst" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"GameStats_gst";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"GameStats_gst" inManagedObjectContext:moc_];
}

- (tmGameStatsMOID*)objectID {
	return (tmGameStatsMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"fkGamIdGstValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkGamIdGst"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"fkPlrIdGstValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkPlrIdGst"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"gstStatIsOpponentValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"gstStatIsOpponent"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pkGstIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkGstId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic fkGamIdGst;



- (int16_t)fkGamIdGstValue {
	NSNumber *result = [self fkGamIdGst];
	return [result shortValue];
}

- (void)setFkGamIdGstValue:(int16_t)value_ {
	[self setFkGamIdGst:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkGamIdGstValue {
	NSNumber *result = [self primitiveFkGamIdGst];
	return [result shortValue];
}

- (void)setPrimitiveFkGamIdGstValue:(int16_t)value_ {
	[self setPrimitiveFkGamIdGst:[NSNumber numberWithShort:value_]];
}





@dynamic fkPlrIdGst;



- (int16_t)fkPlrIdGstValue {
	NSNumber *result = [self fkPlrIdGst];
	return [result shortValue];
}

- (void)setFkPlrIdGstValue:(int16_t)value_ {
	[self setFkPlrIdGst:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkPlrIdGstValue {
	NSNumber *result = [self primitiveFkPlrIdGst];
	return [result shortValue];
}

- (void)setPrimitiveFkPlrIdGstValue:(int16_t)value_ {
	[self setPrimitiveFkPlrIdGst:[NSNumber numberWithShort:value_]];
}





@dynamic gstStat;






@dynamic gstStatDateTime;






@dynamic gstStatIsOpponent;



- (BOOL)gstStatIsOpponentValue {
	NSNumber *result = [self gstStatIsOpponent];
	return [result boolValue];
}

- (void)setGstStatIsOpponentValue:(BOOL)value_ {
	[self setGstStatIsOpponent:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveGstStatIsOpponentValue {
	NSNumber *result = [self primitiveGstStatIsOpponent];
	return [result boolValue];
}

- (void)setPrimitiveGstStatIsOpponentValue:(BOOL)value_ {
	[self setPrimitiveGstStatIsOpponent:[NSNumber numberWithBool:value_]];
}





@dynamic gstStatValue;






@dynamic pkGstId;



- (int16_t)pkGstIdValue {
	NSNumber *result = [self pkGstId];
	return [result shortValue];
}

- (void)setPkGstIdValue:(int16_t)value_ {
	[self setPkGstId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkGstIdValue {
	NSNumber *result = [self primitivePkGstId];
	return [result shortValue];
}

- (void)setPrimitivePkGstIdValue:(int16_t)value_ {
	[self setPrimitivePkGstId:[NSNumber numberWithShort:value_]];
}





@dynamic gstGames;

	

@dynamic gstPlayers;

	






@end
