// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmPlayersMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmPlayersMOAttributes {
	__unsafe_unretained NSString *pkPlrId;
	__unsafe_unretained NSString *plrAvailableDate;
	__unsafe_unretained NSString *plrFirstName;
	__unsafe_unretained NSString *plrIsGuest;
	__unsafe_unretained NSString *plrIsInReserve;
	__unsafe_unretained NSString *plrIsInjured;
	__unsafe_unretained NSString *plrIsStarter;
	__unsafe_unretained NSString *plrIsSub;
	__unsafe_unretained NSString *plrIsSuspended;
	__unsafe_unretained NSString *plrJerseyNum;
	__unsafe_unretained NSString *plrLastName;
	__unsafe_unretained NSString *plrNickname;
	__unsafe_unretained NSString *plrPrimaryPosition;
	__unsafe_unretained NSString *plrSecondaryPosition;
} tmPlayersMOAttributes;

extern const struct tmPlayersMORelationships {
	__unsafe_unretained NSString *plrContactInfo;
	__unsafe_unretained NSString *plrGameStats;
	__unsafe_unretained NSString *plrRosters;
} tmPlayersMORelationships;

extern const struct tmPlayersMOFetchedProperties {
} tmPlayersMOFetchedProperties;

@class tmContactInfoMO;
@class tmGameStatsMO;
@class tmRostersMO;
















@interface tmPlayersMOID : NSManagedObjectID {}
@end

@interface _tmPlayersMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmPlayersMOID*)objectID;





@property (nonatomic, strong) NSNumber* pkPlrId;



@property int16_t pkPlrIdValue;
- (int16_t)pkPlrIdValue;
- (void)setPkPlrIdValue:(int16_t)value_;

//- (BOOL)validatePkPlrId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* plrAvailableDate;



//- (BOOL)validatePlrAvailableDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrFirstName;



//- (BOOL)validatePlrFirstName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsGuest;



@property BOOL plrIsGuestValue;
- (BOOL)plrIsGuestValue;
- (void)setPlrIsGuestValue:(BOOL)value_;

//- (BOOL)validatePlrIsGuest:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsInReserve;



@property BOOL plrIsInReserveValue;
- (BOOL)plrIsInReserveValue;
- (void)setPlrIsInReserveValue:(BOOL)value_;

//- (BOOL)validatePlrIsInReserve:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsInjured;



@property BOOL plrIsInjuredValue;
- (BOOL)plrIsInjuredValue;
- (void)setPlrIsInjuredValue:(BOOL)value_;

//- (BOOL)validatePlrIsInjured:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsStarter;



@property BOOL plrIsStarterValue;
- (BOOL)plrIsStarterValue;
- (void)setPlrIsStarterValue:(BOOL)value_;

//- (BOOL)validatePlrIsStarter:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsSub;



@property BOOL plrIsSubValue;
- (BOOL)plrIsSubValue;
- (void)setPlrIsSubValue:(BOOL)value_;

//- (BOOL)validatePlrIsSub:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* plrIsSuspended;



@property BOOL plrIsSuspendedValue;
- (BOOL)plrIsSuspendedValue;
- (void)setPlrIsSuspendedValue:(BOOL)value_;

//- (BOOL)validatePlrIsSuspended:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrJerseyNum;



//- (BOOL)validatePlrJerseyNum:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrLastName;



//- (BOOL)validatePlrLastName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrNickname;



//- (BOOL)validatePlrNickname:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrPrimaryPosition;



//- (BOOL)validatePlrPrimaryPosition:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* plrSecondaryPosition;



//- (BOOL)validatePlrSecondaryPosition:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *plrContactInfo;

- (NSMutableSet*)plrContactInfoSet;




@property (nonatomic, strong) NSSet *plrGameStats;

- (NSMutableSet*)plrGameStatsSet;




@property (nonatomic, strong) NSSet *plrRosters;

- (NSMutableSet*)plrRostersSet;





@end

@interface _tmPlayersMO (CoreDataGeneratedAccessors)

- (void)addPlrContactInfo:(NSSet*)value_;
- (void)removePlrContactInfo:(NSSet*)value_;
- (void)addPlrContactInfoObject:(tmContactInfoMO*)value_;
- (void)removePlrContactInfoObject:(tmContactInfoMO*)value_;

- (void)addPlrGameStats:(NSSet*)value_;
- (void)removePlrGameStats:(NSSet*)value_;
- (void)addPlrGameStatsObject:(tmGameStatsMO*)value_;
- (void)removePlrGameStatsObject:(tmGameStatsMO*)value_;

- (void)addPlrRosters:(NSSet*)value_;
- (void)removePlrRosters:(NSSet*)value_;
- (void)addPlrRostersObject:(tmRostersMO*)value_;
- (void)removePlrRostersObject:(tmRostersMO*)value_;

@end

@interface _tmPlayersMO (CoreDataGeneratedPrimitiveAccessors)


- (NSNumber*)primitivePkPlrId;
- (void)setPrimitivePkPlrId:(NSNumber*)value;

- (int16_t)primitivePkPlrIdValue;
- (void)setPrimitivePkPlrIdValue:(int16_t)value_;




- (NSDate*)primitivePlrAvailableDate;
- (void)setPrimitivePlrAvailableDate:(NSDate*)value;




- (NSString*)primitivePlrFirstName;
- (void)setPrimitivePlrFirstName:(NSString*)value;




- (NSNumber*)primitivePlrIsGuest;
- (void)setPrimitivePlrIsGuest:(NSNumber*)value;

- (BOOL)primitivePlrIsGuestValue;
- (void)setPrimitivePlrIsGuestValue:(BOOL)value_;




- (NSNumber*)primitivePlrIsInReserve;
- (void)setPrimitivePlrIsInReserve:(NSNumber*)value;

- (BOOL)primitivePlrIsInReserveValue;
- (void)setPrimitivePlrIsInReserveValue:(BOOL)value_;




- (NSNumber*)primitivePlrIsInjured;
- (void)setPrimitivePlrIsInjured:(NSNumber*)value;

- (BOOL)primitivePlrIsInjuredValue;
- (void)setPrimitivePlrIsInjuredValue:(BOOL)value_;




- (NSNumber*)primitivePlrIsStarter;
- (void)setPrimitivePlrIsStarter:(NSNumber*)value;

- (BOOL)primitivePlrIsStarterValue;
- (void)setPrimitivePlrIsStarterValue:(BOOL)value_;




- (NSNumber*)primitivePlrIsSub;
- (void)setPrimitivePlrIsSub:(NSNumber*)value;

- (BOOL)primitivePlrIsSubValue;
- (void)setPrimitivePlrIsSubValue:(BOOL)value_;




- (NSNumber*)primitivePlrIsSuspended;
- (void)setPrimitivePlrIsSuspended:(NSNumber*)value;

- (BOOL)primitivePlrIsSuspendedValue;
- (void)setPrimitivePlrIsSuspendedValue:(BOOL)value_;




- (NSString*)primitivePlrJerseyNum;
- (void)setPrimitivePlrJerseyNum:(NSString*)value;




- (NSString*)primitivePlrLastName;
- (void)setPrimitivePlrLastName:(NSString*)value;




- (NSString*)primitivePlrNickname;
- (void)setPrimitivePlrNickname:(NSString*)value;




- (NSString*)primitivePlrPrimaryPosition;
- (void)setPrimitivePlrPrimaryPosition:(NSString*)value;




- (NSString*)primitivePlrSecondaryPosition;
- (void)setPrimitivePlrSecondaryPosition:(NSString*)value;





- (NSMutableSet*)primitivePlrContactInfo;
- (void)setPrimitivePlrContactInfo:(NSMutableSet*)value;



- (NSMutableSet*)primitivePlrGameStats;
- (void)setPrimitivePlrGameStats:(NSMutableSet*)value;



- (NSMutableSet*)primitivePlrRosters;
- (void)setPrimitivePlrRosters:(NSMutableSet*)value;


@end
