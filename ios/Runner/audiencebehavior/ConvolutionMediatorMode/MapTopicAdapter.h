#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapTopicAdapter : NSObject


- (void) bindPoolWithPromise;

- (void) materializeDetail: (NSMutableDictionary *)similarGrid and: (NSMutableSet *)singleIsolate;

@end

NS_ASSUME_NONNULL_END
        