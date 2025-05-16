#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavigateScaffoldMetadata : NSObject


- (void) notifyThreadError: (NSMutableArray *)newestLayout;

- (void) parsePrevText;

- (void) processTextFieldEvent: (NSMutableDictionary *)missedRecursion;

@end

NS_ASSUME_NONNULL_END
        