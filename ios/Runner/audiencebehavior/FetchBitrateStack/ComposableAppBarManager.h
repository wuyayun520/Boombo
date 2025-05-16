#import "DraggableErrorMerger.h"
#import "StorageMaterial.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComposableAppBarManager : NSObject


- (void) setupIntegrity;

- (void) disconnectConcurrentFuture;

@end

NS_ASSUME_NONNULL_END
        