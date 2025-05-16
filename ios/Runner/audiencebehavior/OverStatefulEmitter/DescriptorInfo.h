#import "StatelessScrollableChannels.h"
#import "ThreadArchitecture.h"
#import "SceneAdapterSpeed.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DescriptorInfo : NSObject


- (void) eraseIndependentAllocator;

- (void) injectEvent;

@end

NS_ASSUME_NONNULL_END
        