#import "ReplaceAutoBase.h"
#import "OffAssetTweak.h"
#import "PersistentListenerArray.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListenSegueRepository : NSObject


- (void) skipMaintainBelowCaption;

- (void) inflateProviderWithModel;

@end

NS_ASSUME_NONNULL_END
        