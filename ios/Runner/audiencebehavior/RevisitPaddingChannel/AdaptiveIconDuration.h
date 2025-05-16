#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdaptiveIconDuration : NSObject

@property (nonatomic) int dedicatedResponder;

+ (instancetype) adaptiveIconDurationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) prepareDialogs;

- (NSMutableDictionary *) animateRequest;

- (int) createExtension;

- (NSMutableSet *) endScale;

- (NSMutableArray *) composableHeap;

@end

NS_ASSUME_NONNULL_END
        