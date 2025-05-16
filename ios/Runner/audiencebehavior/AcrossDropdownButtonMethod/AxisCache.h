#import "LocateArithmeticSubscription.h"
#import "FragmentAudioHelper.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AxisCache : NSObject


- (void) lockTableUntilTimeline;

- (void) decoupleTemporaryChannel;

@end

NS_ASSUME_NONNULL_END
        