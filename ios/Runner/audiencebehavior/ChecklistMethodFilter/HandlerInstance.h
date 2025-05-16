#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HandlerInstance : NSObject

@property (nonatomic) NSString * diversifiedInstruction;

@property (nonatomic) int opaqueDescriptor;

+ (instancetype) handlerInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldCacheSwitch;

- (NSMutableDictionary *) upgradeCallback;

- (int) statelessLocalization;

- (NSMutableSet *) canLayoutReduction;

- (NSMutableArray *) stackincludestructure;

@end

NS_ASSUME_NONNULL_END
        