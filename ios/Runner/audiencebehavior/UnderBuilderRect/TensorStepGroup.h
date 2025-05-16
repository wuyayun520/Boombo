#import "CurveActionTail.h"
#import "CatalystActionFlags.h"
#import "VisiblePainterPopup.h"
#import "CacheFrameHandler.h"
#import "MakeStatelessCache.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TensorStepGroup : NSObject


- (void) unmountedPushInWorkflow;

- (void) belowReferenceStorage;

@end

NS_ASSUME_NONNULL_END
        