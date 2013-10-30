// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGameStatsMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmGameStatsMOAttributes {
	__unsafe_unretained NSString *fkGamIdGst;
	__unsafe_unretained NSString *fkPlrIdGst;
	__unsafe_unretained NSString *gstStat;
	__unsafe_unretained NSString *gstStatDateTime;
	__unsafe_unretained NSString *gstStatIsOpponent;
	__unsafe_unretained NSString *gstStatValue;
	__unsafe_unretained NSString *pkGstId;
} tmGameStatsMOAttributes;

extern const struct tmGameStatsMORelationships {
	__unsafe_unretained NSString *gstGames;
	__unsafe_unretained NSString *gstPlayers;
} tmGameStatsMORelationships;

extern const struct tmGameStatsMOFetchedProperties {
} tmGameStatsMOFetchedProperties;

@class tmGamesMO;
@class tmPlayersMO;









@interface tmGameStatsMOID : NSManagedObjectID {}
@end

@interface _tmGameStatsMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmGameStatsMOID*)objectID;





@property (nonatomic, strong) NSNumber* fkGamIdGst;



@property int16_t fkGamIdGstValue;
- (int16_t)fkGamIdGstValue;
- (void)setFkGamIdGstValue:(int16_t)value_;

//- (BOOL)validateFkGamIdGst:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fkPlrIdGst;



@property int16_t fkPlrIdGstValue;
- (int16_t)fkPlrIdGstValue;
- (void)setFkPlrIdGstValue:(int16_t)value_;

//- (BOOL)validateFkPlrIdGst:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gstStat;



//- (BOOL)validateGstStat:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* gstStatDateTime;



//- (BOOL)validateGstStatDateTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* gstStatIsOpponent;



@property BOOL gstStatIsOpponentValue;
- (BOOL)gstStatIsOpponentValue;
- (void)setGstStatIsOpponentValue:(BOOL)value_;

//- (BOOL)validateGstStatIsOpponent:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gstStatValue;



//- (BOOL)validateGstStatValue:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pkGstId;



@property int16_t pkGstIdValue;
- (int16_t)pkGstIdValue;
- (void)setPkGstIdValue:(int16_t)value_;

//- (BOOL)validatePkGstId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) tmGamesMO *gstGames;

//- (BOOL)validateGstGames:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) tmPlayersMO *gstPlayers;

//- (BOOL)validateGstPlayers:(id*)value_ error:(NSError**)error_;





@end

@interface _tmGameStatsMO (CoreDataGeneratedAccessors)

@end

@interface _tmGameStatsMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveFkGamIdGst;
- (void)setPrimitiveFkGamIdGst:(NSNumber*)value;

- (int16_t)primitiveFkGamIdGstValue;
- (void)setPrimitiveFkGamIdGstValue:(int16_t)value_;




- (NSNumber*)primitiveFkPlrIdGst;
- (void)setPrimitiveFkPlrIdGst:(NSNumber*)value;

- (int16_t)primitiveFkPlrIdGstValue;
- (void)setPrimitiveFkPlrIdGstValue:(int16_t)value_;




- (NSString*)primitiveGstStat;
- (void)setPrimitiveGstStat:(NSString*)value;




- (NSDate*)primitiveGstStatDateTime;
- (void)setPrimitiveGstStatDateTime:(NSDate*)value;




- (NSNumber*)primitiveGstStatIsOpponent;
- (void)setPrimitiveGstStatIsOpponent:(NSNumber*)value;

- (BOOL)primitiveGstStatIsOpponentValue;
- (void)setPrimitiveGstStatIsOpponentValue:(BOOL)value_;




- (NSString*)primitiveGstStatValue;
- (void)setPrimitiveGstStatValue:(NSString*)value;




- (NSNumber*)primitivePkGstId;
- (void)setPrimitivePkGstId:(NSNumber*)value;

- (int16_t)primitivePkGstIdValue;
- (void)setPrimitivePkGstIdValue:(int16_t)value_;





- (tmGamesMO*)primitiveGstGames;
- (void)setPrimitiveGstGames:(tmGamesMO*)value;



- (tmPlayersMO*)primitiveGstPlayers;
- (void)setPrimitiveGstPlayers:(tmPlayersMO*)value;


@end
