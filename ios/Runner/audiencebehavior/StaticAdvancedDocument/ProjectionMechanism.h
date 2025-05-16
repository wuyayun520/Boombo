#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProjectionMechanism : NSObject

@property (nonatomic) int backwardSegment;

+ (instancetype) projectionMechanismWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) annotateEvent;

- (NSMutableDictionary *) canShowTangent;

- (int) accordionFeature;

- (NSMutableSet *) binaryVisibility;

- (NSMutableArray *) criticalCapacities;

@end

NS_ASSUME_NONNULL_END
        