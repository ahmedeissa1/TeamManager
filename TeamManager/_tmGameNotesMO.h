// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGameNotesMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmGameNotesMOAttributes {
	__unsafe_unretained NSString *fkGamIdGnt;
	__unsafe_unretained NSString *gntNote;
	__unsafe_unretained NSString *gntNoteDateTime;
	__unsafe_unretained NSString *pkGntId;
} tmGameNotesMOAttributes;

extern const struct tmGameNotesMORelationships {
	__unsafe_unretained NSString *gntGames;
} tmGameNotesMORelationships;

extern const struct tmGameNotesMOFetchedProperties {
} tmGameNotesMOFetchedProperties;

@class tmGamesMO;






@interface tmGameNotesMOID : NSManagedObjectID {}
@end

@interface _tmGameNotesMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmGameNotesMOID*)objectID;





@property (nonatomic, strong) NSNumber* fkGamIdGnt;



@property int16_t fkGamIdGntValue;
- (int16_t)fkGamIdGntValue;
- (void)setFkGamIdGntValue:(int16_t)value_;

//- (BOOL)validateFkGamIdGnt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gntNote;



//- (BOOL)validateGntNote:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* gntNoteDateTime;



//- (BOOL)validateGntNoteDateTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pkGntId;



@property int16_t pkGntIdValue;
- (int16_t)pkGntIdValue;
- (void)setPkGntIdValue:(int16_t)value_;

//- (BOOL)validatePkGntId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) tmGamesMO *gntGames;

//- (BOOL)validateGntGames:(id*)value_ error:(NSError**)error_;





@end

@interface _tmGameNotesMO (CoreDataGeneratedAccessors)

@end

@interface _tmGameNotesMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveFkGamIdGnt;
- (void)setPrimitiveFkGamIdGnt:(NSNumber*)value;

- (int16_t)primitiveFkGamIdGntValue;
- (void)setPrimitiveFkGamIdGntValue:(int16_t)value_;




- (NSString*)primitiveGntNote;
- (void)setPrimitiveGntNote:(NSString*)value;




- (NSDate*)primitiveGntNoteDateTime;
- (void)setPrimitiveGntNoteDateTime:(NSDate*)value;




- (NSNumber*)primitivePkGntId;
- (void)setPrimitivePkGntId:(NSNumber*)value;

- (int16_t)primitivePkGntIdValue;
- (void)setPrimitivePkGntIdValue:(int16_t)value_;





- (tmGamesMO*)primitiveGntGames;
- (void)setPrimitiveGntGames:(tmGamesMO*)value;


@end
