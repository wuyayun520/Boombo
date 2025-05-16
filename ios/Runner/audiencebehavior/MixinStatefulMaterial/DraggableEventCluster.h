#import "ListViewEntity.h"
#import "StreamSineFactory.h"
#import "KernelPage.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DraggableEventCluster : NSObject


- (void) calculateScrollOfNode;

- (void) buildMomentumFromDetail;

@end

NS_ASSUME_NONNULL_END
        