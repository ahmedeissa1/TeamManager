// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmRostersMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmRostersMOAttributes {
	__unsafe_unretained NSString *fkGmsIdRos;
	__unsafe_unretained NSString *fkPlrIdRos;
	__unsafe_unretained NSString *fkTmsIdRos;
	__unsafe_unretained NSString *rosId;
	__unsafe_unretained NSString *rosIsOpponent;
	__unsafe_unretained NSString *rosSeason;
	__unsafe_unretained NSString *rosType;
} tmRostersMOAttributes;

extern const struct tmRostersMORelationships {
	__unsafe_unretained NSString *rosGames;
	__unsafe_unretained NSString *rosPlayers;
	__unsafe_unretained NSString *rosTeams;
} tmRostersMORelationships;

extern const struct tmRostersMOFetchedProperties {
} tmRostersMOFetchedProperties;

@class tmGamesMO;
@class tmPlayersMO;
@class tmTeamsMO;









@interface tmRostersMOID : NSManagedObjectID {}
@end

@interface _tmRostersMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmRostersMOID*)objectID;





@property (nonatomic, strong) NSNumber* fkGmsIdRos;



@property int16_t fkGmsIdRosValue;
- (int16_t)fkGmsIdRosValue;
- (void)setFkGmsIdRosValue:(int16_t)value_;

//- (BOOL)validateFkGmsIdRos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fkPlrIdRos;



@property int16_t fkPlrIdRosValue;
- (int16_t)fkPlrIdRosValue;
- (void)setFkPlrIdRosValue:(int16_t)value_;

//- (BOOL)validateFkPlrIdRos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fkTmsIdRos;



@property int16_t fkTmsIdRosValue;
- (int16_t)fkTmsIdRosValue;
- (void)setFkTmsIdRosValue:(int16_t)value_;

//- (BOOL)validateFkTmsIdRos:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rosId;



@property int16_t rosIdValue;
- (int16_t)rosIdValue;
- (void)setRosIdValue:(int16_t)value_;

//- (BOOL)validateRosId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rosIsOpponent;



@property BOOL rosIsOpponentValue;
- (BOOL)rosIsOpponentValue;
- (void)setRosIsOpponentValue:(BOOL)value_;

//- (BOOL)validateRosIsOpponent:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* rosSeason;



//- (BOOL)validateRosSeason:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* rosType;



//- (BOOL)validateRosType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) tmGamesMO *rosGames;

//- (BOOL)validateRosGames:(id*)value_ error:(NSError**)error_;




@property (nonatomic, strong) NSSet *rosPlayers;

- (NSMutableSet*)rosPlayersSet;




@property (nonatomic, strong) tmTeamsMO *rosTeams;

//- (BOOL)validateRosTeams:(id*)value_ error:(NSError**)error_;





@end

@interface _tmRostersMO (CoreDataGeneratedAccessors)

- (void)addRosPlayers:(NSSet*)value_;
- (void)removeRosPlayers:(NSSet*)value_;
- (void)addRosPlayersObject:(tmPlayersMO*)value_;
- (void)removeRosPlayersObject:(tmPlayersMO*)value_;

@end

@interface _tmRostersMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitiveFkGmsIdRos;
- (void)setPrimitiveFkGmsIdRos:(NSNumber*)value;

- (int16_t)primitiveFkGmsIdRosValue;
- (void)setPrimitiveFkGmsIdRosValue:(int16_t)value_;




- (NSNumber*)primitiveFkPlrIdRos;
- (void)setPrimitiveFkPlrIdRos:(NSNumber*)value;

- (int16_t)primitiveFkPlrIdRosValue;
- (void)setPrimitiveFkPlrIdRosValue:(int16_t)value_;




- (NSNumber*)primitiveFkTmsIdRos;
- (void)setPrimitiveFkTmsIdRos:(NSNumber*)value;

- (int16_t)primitiveFkTmsIdRosValue;
- (void)setPrimitiveFkTmsIdRosValue:(int16_t)value_;




- (NSNumber*)primitiveRosId;
- (void)setPrimitiveRosId:(NSNumber*)value;

- (int16_t)primitiveRosIdValue;
- (void)setPrimitiveRosIdValue:(int16_t)value_;




- (NSNumber*)primitiveRosIsOpponent;
- (void)setPrimitiveRosIsOpponent:(NSNumber*)value;

- (BOOL)primitiveRosIsOpponentValue;
- (void)setPrimitiveRosIsOpponentValue:(BOOL)value_;




- (NSString*)primitiveRosSeason;
- (void)setPrimitiveRosSeason:(NSString*)value;




- (NSString*)primitiveRosType;
- (void)setPrimitiveRosType:(NSString*)value;





- (tmGamesMO*)primitiveRosGames;
- (void)setPrimitiveRosGames:(tmGamesMO*)value;



- (NSMutableSet*)primitiveRosPlayers;
- (void)setPrimitiveRosPlayers:(NSMutableSet*)value;



- (tmTeamsMO*)primitiveRosTeams;
- (void)setPrimitiveRosTeams:(tmTeamsMO*)value;


@end
