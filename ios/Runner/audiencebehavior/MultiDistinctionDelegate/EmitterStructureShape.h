#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmitterStructureShape : NSObject

@property (nonatomic) NSMutableSet * ignoredInfrastructure;

+ (instancetype) emitterStructureShapeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) temporaryGate;

- (NSMutableDictionary *) polygonHead;

- (int) diversifiedIcon;

- (NSMutableSet *) gemTint;

- (NSMutableArray *) synchronousAlpha;

@end

NS_ASSUME_NONNULL_END
        