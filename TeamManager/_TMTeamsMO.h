// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmTeamsMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmTeamsMOAttributes {
	__unsafe_unretained NSString *pkTmsId;
	__unsafe_unretained NSString *tmsAgeDivision;
	__unsafe_unretained NSString *tmsAwayColor;
	__unsafe_unretained NSString *tmsClubName;
	__unsafe_unretained NSString *tmsHomeColor;
	__unsafe_unretained NSString *tmsIsOpponent;
	__unsafe_unretained NSString *tmsName;
	__unsafe_unretained NSString *tmsSeason;
} tmTeamsMOAttributes;

extern const struct tmTeamsMORelationships {
	__unsafe_unretained NSString *tmsGames;
	__unsafe_unretained NSString *tmsRosters;
} tmTeamsMORelationships;

extern const struct tmTeamsMOFetchedProperties {
} tmTeamsMOFetchedProperties;

@class tmGamesMO;
@class tmRostersMO;










@interface tmTeamsMOID : NSManagedObjectID {}
@end

@interface _tmTeamsMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmTeamsMOID*)objectID;





@property (nonatomic, strong) NSNumber* pkTmsId;



@property int16_t pkTmsIdValue;
- (int16_t)pkTmsIdValue;
- (void)setPkTmsIdValue:(int16_t)value_;

//- (BOOL)validatePkTmsId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsAgeDivision;



//- (BOOL)validateTmsAgeDivision:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsAwayColor;



//- (BOOL)validateTmsAwayColor:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsClubName;



//- (BOOL)validateTmsClubName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsHomeColor;



//- (BOOL)validateTmsHomeColor:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* tmsIsOpponent;



@property BOOL tmsIsOpponentValue;
- (BOOL)tmsIsOpponentValue;
- (void)setTmsIsOpponentValue:(BOOL)value_;

//- (BOOL)validateTmsIsOpponent:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsName;



//- (BOOL)validateTmsName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* tmsSeason;



//- (BOOL)validateTmsSeason:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *tmsGames;

- (NSMutableSet*)tmsGamesSet;




@property (nonatomic, strong) NSSet *tmsRosters;

- (NSMutableSet*)tmsRostersSet;





@end

@interface _tmTeamsMO (CoreDataGeneratedAccessors)

- (void)addTmsGames:(NSSet*)value_;
- (void)removeTmsGames:(NSSet*)value_;
- (void)addTmsGamesObject:(tmGamesMO*)value_;
- (void)removeTmsGamesObject:(tmGamesMO*)value_;

- (void)addTmsRosters:(NSSet*)value_;
- (void)removeTmsRosters:(NSSet*)value_;
- (void)addTmsRostersObject:(tmRostersMO*)value_;
- (void)removeTmsRostersObject:(tmRostersMO*)value_;

@end

@interface _tmTeamsMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitivePkTmsId;
- (void)setPrimitivePkTmsId:(NSNumber*)value;

- (int16_t)primitivePkTmsIdValue;
- (void)setPrimitivePkTmsIdValue:(int16_t)value_;




- (NSString*)primitiveTmsAgeDivision;
- (void)setPrimitiveTmsAgeDivision:(NSString*)value;




- (NSString*)primitiveTmsAwayColor;
- (void)setPrimitiveTmsAwayColor:(NSString*)value;




- (NSString*)primitiveTmsClubName;
- (void)setPrimitiveTmsClubName:(NSString*)value;




- (NSString*)primitiveTmsHomeColor;
- (void)setPrimitiveTmsHomeColor:(NSString*)value;




- (NSNumber*)primitiveTmsIsOpponent;
- (void)setPrimitiveTmsIsOpponent:(NSNumber*)value;

- (BOOL)primitiveTmsIsOpponentValue;
- (void)setPrimitiveTmsIsOpponentValue:(BOOL)value_;




- (NSString*)primitiveTmsName;
- (void)setPrimitiveTmsName:(NSString*)value;




- (NSString*)primitiveTmsSeason;
- (void)setPrimitiveTmsSeason:(NSString*)value;





- (NSMutableSet*)primitiveTmsGames;
- (void)setPrimitiveTmsGames:(NSMutableSet*)value;



- (NSMutableSet*)primitiveTmsRosters;
- (void)setPrimitiveTmsRosters:(NSMutableSet*)value;


@end
