// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmGamesMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmGamesMOAttributes {
	__unsafe_unretained NSString *fkOTmsIdGam;
	__unsafe_unretained NSString *fkTmsIdGam;
	__unsafe_unretained NSString *gamDidEndInPK;
	__unsafe_unretained NSString *gamGameCity;
	__unsafe_unretained NSString *gamGameField;
	__unsafe_unretained NSString *gamGamePostalCode;
	__unsafe_unretained NSString *gamGameType;
	__unsafe_unretained NSString *gamHalfDuration;
	__unsafe_unretained NSString *gamIsHomeTeam;
	__unsafe_unretained NSString *gamLeagueGameId;
	__unsafe_unretained NSString *gamNvN;
	__unsafe_unretained NSString *gamOSystemOfPlay;
	__unsafe_unretained NSString *gamSchedGameDateTime;
	__unsafe_unretained NSString *gamStartDateTime;
	__unsafe_unretained NSString *gamSystemOfPlay;
	__unsafe_unretained NSString *pkGamId;
} tmGamesMOAttributes;

extern const struct tmGamesMORelationships {
	__unsafe_unretained NSString *gamGameNotes;
	__unsafe_unretained NSString *gamGameStats;
	__unsafe_unretained NSString *gamRosters;
	__unsafe_unretained NSString *gamTeams;
} tmGamesMORelationships;

extern const struct tmGamesMOFetchedProperties {
} tmGamesMOFetchedProperties;

@class tmGameNotesMO;
@class tmGameStatsMO;
@class tmRostersMO;
@class tmTeamsMO;


















@interface tmGamesMOID : NSManagedObjectID {}
@end

@interface _tmGamesMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmGamesMOID*)objectID;





@property (nonatomic, strong) NSNumber* fkOTmsIdGam;



@property int16_t fkOTmsIdGamValue;
- (int16_t)fkOTmsIdGamValue;
- (void)setFkOTmsIdGamValue:(int16_t)value_;

//- (BOOL)validateFkOTmsIdGam:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fkTmsIdGam;



@property int16_t fkTmsIdGamValue;
- (int16_t)fkTmsIdGamValue;
- (void)setFkTmsIdGamValue:(int16_t)value_;

//- (BOOL)validateFkTmsIdGam:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* gamDidEndInPK;



@property BOOL gamDidEndInPKValue;
- (BOOL)gamDidEndInPKValue;
- (void)setGamDidEndInPKValue:(BOOL)value_;

//- (BOOL)validateGamDidEndInPK:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamGameCity;



//- (BOOL)validateGamGameCity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamGameField;



//- (BOOL)validateGamGameField:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamGamePostalCode;



//- (BOOL)validateGamGamePostalCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamGameType;



//- (BOOL)validateGamGameType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* gamHalfDuration;



@property float gamHalfDurationValue;
- (float)gamHalfDurationValue;
- (void)setGamHalfDurationValue:(float)value_;

//- (BOOL)validateGamHalfDuration:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* gamIsHomeTeam;



@property BOOL gamIsHomeTeamValue;
- (BOOL)gamIsHomeTeamValue;
- (void)setGamIsHomeTeamValue:(BOOL)value_;

//- (BOOL)validateGamIsHomeTeam:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamLeagueGameId;



//- (BOOL)validateGamLeagueGameId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamNvN;



//- (BOOL)validateGamNvN:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamOSystemOfPlay;



//- (BOOL)validateGamOSystemOfPlay:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* gamSchedGameDateTime;



//- (BOOL)validateGamSchedGameDateTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* gamStartDateTime;



//- (BOOL)validateGamStartDateTime:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* gamSystemOfPlay;



//- (BOOL)validateGamSystemOfPlay:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pkGamId;



@property int16_t pkGamIdValue;
- (int16_t)pkGamIdValue;
- (void)setPkGamIdValue:(int16_t)value_;

//- (BOOL)validatePkGamId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *gamGameNotes;

- (NSMutableSet*)gamGameNotesSet;




@property (nonatomic, strong) NSSet *gamGameStats;

- (NSMutableSet*)gamGameStatsSet;




@property (nonatomic, strong) NSSet *gamRosters;

- (NSMutableSet*)gamRostersSet;




@property (nonatomic, strong) NSSet *gamTeams;

- (NSMutableSet*)gamTeamsSet;





@end

@interface _tmGamesMO (CoreDataGeneratedAccessors)

- (void)addGamGameNotes:(NSSet*)value_;
- (void)removeGamGameNotes:(NSSet*)value_;
- (void)addGamGameNotesObject:(tmGameNotesMO*)value_;
- (void)removeGamGameNotesObject:(tmGameNotesMO*)value_;

- (void)addGamGameStats:(NSSet*)value_;
- (void)removeGamGameStats:(NSSet*)value_;
- (void)addGamGameStatsObject:(tmGameStatsMO*)value_;
- (void)removeGamGameStatsObject:(tmGameStatsMO*)value_;

- (void)addGamRosters:(NSSet*)value_;
- (void)removeGamRosters:(NSSet*)value_;
- (void)addGamRostersObject:(tmRostersMO*)value_;
- (void)removeGamRostersObject:(tmRostersMO*)value_;

- (void)addGamTeams:(NSSet*)value_;
- (void)removeGamTeams:(NSSet*)value_;
- (void)addGamTeamsObject:(tmTeamsMO*)value_;
- (void)removeGamTeamsObject:(tmTeamsMO*)value_;

@end

@interface _tmGamesMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveFkOTmsIdGam;
- (void)setPrimitiveFkOTmsIdGam:(NSNumber*)value;

- (int16_t)primitiveFkOTmsIdGamValue;
- (void)setPrimitiveFkOTmsIdGamValue:(int16_t)value_;




- (NSNumber*)primitiveFkTmsIdGam;
- (void)setPrimitiveFkTmsIdGam:(NSNumber*)value;

- (int16_t)primitiveFkTmsIdGamValue;
- (void)setPrimitiveFkTmsIdGamValue:(int16_t)value_;




- (NSNumber*)primitiveGamDidEndInPK;
- (void)setPrimitiveGamDidEndInPK:(NSNumber*)value;

- (BOOL)primitiveGamDidEndInPKValue;
- (void)setPrimitiveGamDidEndInPKValue:(BOOL)value_;




- (NSString*)primitiveGamGameCity;
- (void)setPrimitiveGamGameCity:(NSString*)value;




- (NSString*)primitiveGamGameField;
- (void)setPrimitiveGamGameField:(NSString*)value;




- (NSString*)primitiveGamGamePostalCode;
- (void)setPrimitiveGamGamePostalCode:(NSString*)value;




- (NSString*)primitiveGamGameType;
- (void)setPrimitiveGamGameType:(NSString*)value;




- (NSNumber*)primitiveGamHalfDuration;
- (void)setPrimitiveGamHalfDuration:(NSNumber*)value;

- (float)primitiveGamHalfDurationValue;
- (void)setPrimitiveGamHalfDurationValue:(float)value_;




- (NSNumber*)primitiveGamIsHomeTeam;
- (void)setPrimitiveGamIsHomeTeam:(NSNumber*)value;

- (BOOL)primitiveGamIsHomeTeamValue;
- (void)setPrimitiveGamIsHomeTeamValue:(BOOL)value_;




- (NSString*)primitiveGamLeagueGameId;
- (void)setPrimitiveGamLeagueGameId:(NSString*)value;




- (NSString*)primitiveGamNvN;
- (void)setPrimitiveGamNvN:(NSString*)value;




- (NSString*)primitiveGamOSystemOfPlay;
- (void)setPrimitiveGamOSystemOfPlay:(NSString*)value;




- (NSDate*)primitiveGamSchedGameDateTime;
- (void)setPrimitiveGamSchedGameDateTime:(NSDate*)value;




- (NSDate*)primitiveGamStartDateTime;
- (void)setPrimitiveGamStartDateTime:(NSDate*)value;




- (NSString*)primitiveGamSystemOfPlay;
- (void)setPrimitiveGamSystemOfPlay:(NSString*)value;




- (NSNumber*)primitivePkGamId;
- (void)setPrimitivePkGamId:(NSNumber*)value;

- (int16_t)primitivePkGamIdValue;
- (void)setPrimitivePkGamIdValue:(int16_t)value_;





- (NSMutableSet*)primitiveGamGameNotes;
- (void)setPrimitiveGamGameNotes:(NSMutableSet*)value;



- (NSMutableSet*)primitiveGamGameStats;
- (void)setPrimitiveGamGameStats:(NSMutableSet*)value;



- (NSMutableSet*)primitiveGamRosters;
- (void)setPrimitiveGamRosters:(NSMutableSet*)value;



- (NSMutableSet*)primitiveGamTeams;
- (void)setPrimitiveGamTeams:(NSMutableSet*)value;


@end
