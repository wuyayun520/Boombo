#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SynchronousVectorComponent : NSObject

@property (nonatomic) int elasticitytop;

+ (instancetype) synchronousVectorComponentWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canUnmountSegue;

- (NSMutableDictionary *) amortizationTail;

- (int) dependencyRate;

- (NSMutableSet *) fixedExponent;

- (NSMutableArray *) delegateDuration;

@end

NS_ASSUME_NONNULL_END
        