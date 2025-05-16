#import "InvisibleTaskTraversal.h"
#import "OpaqueFirstNode.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CursorEmitterProtocol : NSObject


- (void) orchestrateOffErrorCycle;

- (void) findBaseline;

@end

NS_ASSUME_NONNULL_END
        