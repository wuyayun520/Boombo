#import "CapsuleProcessTop.h"
#import "PresentReusableContainer.h"
#import "PushConstraintException.h"
#import "ExplicitCardDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IsolateArchitectureObserver : NSObject


- (void) emitDelegateBeforeCompletion;

- (void) orchestrateActiveButton;

@end

NS_ASSUME_NONNULL_END
        