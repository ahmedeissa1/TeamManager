// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to tmContactInfoMO.h instead.

#import <CoreData/CoreData.h>


extern const struct tmContactInfoMOAttributes {
	__unsafe_unretained NSString *cnfAddress;
	__unsafe_unretained NSString *cnfAddress2;
	__unsafe_unretained NSString *cnfCellPhone;
	__unsafe_unretained NSString *cnfCity;
	__unsafe_unretained NSString *cnfEmailAddress;
	__unsafe_unretained NSString *cnfFirstName;
	__unsafe_unretained NSString *cnfIsEmergency;
	__unsafe_unretained NSString *cnfIsPrimary;
	__unsafe_unretained NSString *cnfLastName;
	__unsafe_unretained NSString *cnfPostalCode;
	__unsafe_unretained NSString *cnfType;
	__unsafe_unretained NSString *fkPlrIdCnf;
	__unsafe_unretained NSString *pkCnfId;
} tmContactInfoMOAttributes;

extern const struct tmContactInfoMORelationships {
	__unsafe_unretained NSString *cnfPlayers;
} tmContactInfoMORelationships;

extern const struct tmContactInfoMOFetchedProperties {
} tmContactInfoMOFetchedProperties;

@class tmPlayersMO;















@interface tmContactInfoMOID : NSManagedObjectID {}
@end

@interface _tmContactInfoMO : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (tmContactInfoMOID*)objectID;





@property (nonatomic, strong) NSString* cnfAddress;



//- (BOOL)validateCnfAddress:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfAddress2;



//- (BOOL)validateCnfAddress2:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfCellPhone;



//- (BOOL)validateCnfCellPhone:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfCity;



//- (BOOL)validateCnfCity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfEmailAddress;



//- (BOOL)validateCnfEmailAddress:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfFirstName;



//- (BOOL)validateCnfFirstName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* cnfIsEmergency;



@property BOOL cnfIsEmergencyValue;
- (BOOL)cnfIsEmergencyValue;
- (void)setCnfIsEmergencyValue:(BOOL)value_;

//- (BOOL)validateCnfIsEmergency:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* cnfIsPrimary;



@property BOOL cnfIsPrimaryValue;
- (BOOL)cnfIsPrimaryValue;
- (void)setCnfIsPrimaryValue:(BOOL)value_;

//- (BOOL)validateCnfIsPrimary:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfLastName;



//- (BOOL)validateCnfLastName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfPostalCode;



//- (BOOL)validateCnfPostalCode:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* cnfType;



//- (BOOL)validateCnfType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* fkPlrIdCnf;



@property int16_t fkPlrIdCnfValue;
- (int16_t)fkPlrIdCnfValue;
- (void)setFkPlrIdCnfValue:(int16_t)value_;

//- (BOOL)validateFkPlrIdCnf:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pkCnfId;



@property int16_t pkCnfIdValue;
- (int16_t)pkCnfIdValue;
- (void)setPkCnfIdValue:(int16_t)value_;

//- (BOOL)validatePkCnfId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) tmPlayersMO *cnfPlayers;

//- (BOOL)validateCnfPlayers:(id*)value_ error:(NSError**)error_;





@end

@interface _tmContactInfoMO (CoreDataGeneratedAccessors)

@end

@interface _tmContactInfoMO (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveCnfAddress;
- (void)setPrimitiveCnfAddress:(NSString*)value;




- (NSString*)primitiveCnfAddress2;
- (void)setPrimitiveCnfAddress2:(NSString*)value;




- (NSString*)primitiveCnfCellPhone;
- (void)setPrimitiveCnfCellPhone:(NSString*)value;




- (NSString*)primitiveCnfCity;
- (void)setPrimitiveCnfCity:(NSString*)value;




- (NSString*)primitiveCnfEmailAddress;
- (void)setPrimitiveCnfEmailAddress:(NSString*)value;




- (NSString*)primitiveCnfFirstName;
- (void)setPrimitiveCnfFirstName:(NSString*)value;




- (NSNumber*)primitiveCnfIsEmergency;
- (void)setPrimitiveCnfIsEmergency:(NSNumber*)value;

- (BOOL)primitiveCnfIsEmergencyValue;
- (void)setPrimitiveCnfIsEmergencyValue:(BOOL)value_;




- (NSNumber*)primitiveCnfIsPrimary;
- (void)setPrimitiveCnfIsPrimary:(NSNumber*)value;

- (BOOL)primitiveCnfIsPrimaryValue;
- (void)setPrimitiveCnfIsPrimaryValue:(BOOL)value_;




- (NSString*)primitiveCnfLastName;
- (void)setPrimitiveCnfLastName:(NSString*)value;




- (NSString*)primitiveCnfPostalCode;
- (void)setPrimitiveCnfPostalCode:(NSString*)value;




- (NSString*)primitiveCnfType;
- (void)setPrimitiveCnfType:(NSString*)value;




- (NSNumber*)primitiveFkPlrIdCnf;
- (void)setPrimitiveFkPlrIdCnf:(NSNumber*)value;

- (int16_t)primitiveFkPlrIdCnfValue;
- (void)setPrimitiveFkPlrIdCnfValue:(int16_t)value_;




- (NSNumber*)primitivePkCnfId;
- (void)setPrimitivePkCnfId:(NSNumber*)value;

- (int16_t)primitivePkCnfIdValue;
- (void)setPrimitivePkCnfIdValue:(int16_t)value_;





- (tmPlayersMO*)primitiveCnfPlayers;
- (void)setPrimitiveCnfPlayers:(tmPlayersMO*)value;


@end
