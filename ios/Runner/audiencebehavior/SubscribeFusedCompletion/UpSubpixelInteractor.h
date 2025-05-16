#import "CustomPaintCallback.h"
#import "CursorState.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpSubpixelInteractor : NSObject


- (void) transformStatefulLayer;

- (void) downStreamLifecycle;

@end

NS_ASSUME_NONNULL_END
        