#import "RenderWorkflowScheduler.h"
#import "DestroySharedPreview.h"
#import "RouteRestriction.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoadPromiseObserver : NSObject


- (void) unmountedAnimatedContainer;

- (void) wrapDelegateAgainstPublisher;

@end

NS_ASSUME_NONNULL_END
        