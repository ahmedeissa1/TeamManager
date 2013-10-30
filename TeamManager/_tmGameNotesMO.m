// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGameNotesMO.m instead.

#import "_tmGameNotesMO.h"

const struct tmGameNotesMOAttributes tmGameNotesMOAttributes = {
	.fkGamIdGnt = @"fkGamIdGnt",
	.gntNote = @"gntNote",
	.gntNoteDateTime = @"gntNoteDateTime",
	.pkGntId = @"pkGntId",
};

const struct tmGameNotesMORelationships tmGameNotesMORelationships = {
	.gntGames = @"gntGames",
};

const struct tmGameNotesMOFetchedProperties tmGameNotesMOFetchedProperties = {
};

@implementation tmGameNotesMOID
@end

@implementation _tmGameNotesMO

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"GameNotes_gnt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"GameNotes_gnt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"GameNotes_gnt" inManagedObjectContext:moc_];
}

- (tmGameNotesMOID*)objectID {
	return (tmGameNotesMOID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"fkGamIdGntValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"fkGamIdGnt"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pkGntIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pkGntId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic fkGamIdGnt;



- (int16_t)fkGamIdGntValue {
	NSNumber *result = [self fkGamIdGnt];
	return [result shortValue];
}

- (void)setFkGamIdGntValue:(int16_t)value_ {
	[self setFkGamIdGnt:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveFkGamIdGntValue {
	NSNumber *result = [self primitiveFkGamIdGnt];
	return [result shortValue];
}

- (void)setPrimitiveFkGamIdGntValue:(int16_t)value_ {
	[self setPrimitiveFkGamIdGnt:[NSNumber numberWithShort:value_]];
}





@dynamic gntNote;






@dynamic gntNoteDateTime;






@dynamic pkGntId;



- (int16_t)pkGntIdValue {
	NSNumber *result = [self pkGntId];
	return [result shortValue];
}

- (void)setPkGntIdValue:(int16_t)value_ {
	[self setPkGntId:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePkGntIdValue {
	NSNumber *result = [self primitivePkGntId];
	return [result shortValue];
}

- (void)setPrimitivePkGntIdValue:(int16_t)value_ {
	[self setPrimitivePkGntId:[NSNumber numberWithShort:value_]];
}





@dynamic gntGames;

	






@end
