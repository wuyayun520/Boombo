#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FusedNavigatorStack : NSObject


- (void) readContainerOffset: (NSMutableDictionary *)interactiveExpanded;

- (void) wasNavigatorZone: (NSString *)lastException and: (NSString *)prevTraversal;

- (void) initializeConsumerException;

@end

NS_ASSUME_NONNULL_END
        