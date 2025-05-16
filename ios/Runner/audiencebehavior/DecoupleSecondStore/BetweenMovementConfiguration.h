#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BetweenMovementConfiguration : NSObject

@property (nonatomic) NSMutableArray * hasController;

@property (nonatomic) NSString * shouldUnbindLayout;

+ (instancetype) betweenMovementConfigurationWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) subtleschema;

- (NSMutableDictionary *) creatororientation;

- (int) canContinueSession;

- (NSMutableSet *) shouldsetstateplayback;

- (NSMutableArray *) mountBehavior;

@end

NS_ASSUME_NONNULL_END
        