#import "UpdateModalLifecycle.h"
#import "UnmountCurrentAnimatedContainer.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppendMaterialAction : NSObject


- (void) markLayoutOutsideComponent;

- (void) popCursor;

@end

NS_ASSUME_NONNULL_END
        