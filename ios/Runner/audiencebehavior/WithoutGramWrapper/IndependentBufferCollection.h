#import "StackDescriptionCache.h"
#import "MainVariantDecorator.h"
#import "SecondKeyHash.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IndependentBufferCollection : NSObject


- (void) freeBoxUntilData;

- (void) eraseRenderer;

@end

NS_ASSUME_NONNULL_END
        