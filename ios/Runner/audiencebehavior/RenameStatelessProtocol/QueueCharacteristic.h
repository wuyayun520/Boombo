#import "FixedReducerFactory.h"
#import "ParseCharacterConsumption.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface QueueCharacteristic : NSObject


- (void) adjustHistogramAgainstQueue;

- (void) persistAction;

@end

NS_ASSUME_NONNULL_END
        