#import "EagerDesktopAppBar.h"
#import "DeferredPaddingInjection.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapSize : NSObject


- (void) provideGestureDetectorModel;

- (void) observeCurrentComposition;

@end

NS_ASSUME_NONNULL_END
        