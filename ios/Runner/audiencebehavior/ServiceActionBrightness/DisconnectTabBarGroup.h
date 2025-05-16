#import "SubscribeTextElement.h"
#import "MainQueueDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DisconnectTabBarGroup : NSObject


- (void) disposeDelegateByService;

- (void) attachUseCase;

@end

NS_ASSUME_NONNULL_END
        