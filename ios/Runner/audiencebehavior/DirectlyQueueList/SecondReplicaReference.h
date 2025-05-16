#import "StatefulPersistentProvider.h"
#import "ComposableTemporaryAwait.h"
#import "SetStateConsumerAdapter.h"
#import "ReceiveAnchorNotation.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondReplicaReference : NSObject


- (void) rebuildLiteGate;

- (void) toChallengeBuilder;

@end

NS_ASSUME_NONNULL_END
        