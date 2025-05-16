#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SmartParticleContainer : NSObject

@property (nonatomic) NSMutableSet * lazyMatrix;

+ (instancetype) smartParticleContainerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) tweakBottom;

- (NSMutableDictionary *) lastError;

- (int) requiredRoute;

- (NSMutableSet *) hardGroup;

- (NSMutableArray *) customTimer;

@end

NS_ASSUME_NONNULL_END
        